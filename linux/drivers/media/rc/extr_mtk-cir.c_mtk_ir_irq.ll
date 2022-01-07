; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mtk-cir.c_mtk_ir_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mtk-cir.c_mtk_ir_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ir = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ir_raw_event = type { i32, i32 }

@MTK_CHKDATA_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"@reg%d=0x%08x\0A\00", align 1
@MTK_WIDTH_MASK = common dso_local global i64 0, align 8
@MTK_IR_SAMPLE = common dso_local global i32 0, align 4
@MTK_MAX_SAMPLES = common dso_local global i32 0, align 4
@MTK_IRCLR = common dso_local global i32 0, align 4
@MTK_IRCLR_REG = common dso_local global i64 0, align 8
@MTK_IRINT_CLR = common dso_local global i32 0, align 4
@MTK_IRINT_CLR_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_ir_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ir_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_ir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ir_raw_event, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.mtk_ir*
  store %struct.mtk_ir* %12, %struct.mtk_ir** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = bitcast %struct.ir_raw_event* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ir_raw_event_reset(i32 %16)
  %18 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 0, i32* %18, align 4
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %68, %2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MTK_CHKDATA_SZ, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %25 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @mtk_chkdata_reg(%struct.mtk_ir* %25, i64 %26)
  %28 = call i64 @mtk_r32(%struct.mtk_ir* %24, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %30 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %64, %23
  %36 = load i64, i64* %8, align 8
  %37 = icmp slt i64 %36, 4
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MTK_WIDTH_MASK, align 8
  %41 = load i64, i64* %8, align 8
  %42 = mul nsw i64 %41, 8
  %43 = shl i64 %40, %42
  %44 = and i64 %39, %43
  %45 = load i64, i64* %8, align 8
  %46 = mul nsw i64 %45, 8
  %47 = ashr i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MTK_IR_SAMPLE, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %61 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ir_raw_event_store_with_filter(i32 %62, %struct.ir_raw_event* %10)
  br label %64

64:                                               ; preds = %38
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %35

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %19

71:                                               ; preds = %19
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MTK_IR_END(i32 %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @MTK_MAX_SAMPLES, align 4
  %80 = load i32, i32* @MTK_IR_SAMPLE, align 4
  %81 = add nsw i32 %80, 1
  %82 = mul nsw i32 %79, %81
  %83 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %85 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ir_raw_event_store_with_filter(i32 %86, %struct.ir_raw_event* %10)
  br label %88

88:                                               ; preds = %77, %71
  %89 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %90 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ir_raw_event_handle(i32 %91)
  %93 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %94 = load i32, i32* @MTK_IRCLR, align 4
  %95 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %96 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @MTK_IRCLR_REG, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mtk_w32_mask(%struct.mtk_ir* %93, i32 1, i32 %94, i32 %102)
  %104 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %105 = load i32, i32* @MTK_IRINT_CLR, align 4
  %106 = load %struct.mtk_ir*, %struct.mtk_ir** %5, align 8
  %107 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @MTK_IRINT_CLR_REG, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mtk_w32_mask(%struct.mtk_ir* %104, i32 1, i32 %105, i32 %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ir_raw_event_reset(i32) #2

declare dso_local i64 @mtk_r32(%struct.mtk_ir*, i32) #2

declare dso_local i32 @mtk_chkdata_reg(%struct.mtk_ir*, i64) #2

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #2

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @MTK_IR_END(i32, i32) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

declare dso_local i32 @mtk_w32_mask(%struct.mtk_ir*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
