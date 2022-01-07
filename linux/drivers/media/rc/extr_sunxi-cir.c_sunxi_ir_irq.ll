; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_sunxi-cir.c_sunxi_ir_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_sunxi-cir.c_sunxi_ir_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_ir = type { i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i8 }
%struct.ir_raw_event = type { i32, i8 }

@SUNXI_IR_RXSTA_REG = common dso_local global i64 0, align 8
@REG_RXSTA_CLEARALL = common dso_local global i64 0, align 8
@REG_RXSTA_RA = common dso_local global i64 0, align 8
@REG_RXSTA_RPE = common dso_local global i64 0, align 8
@SUNXI_IR_RXFIFO_REG = common dso_local global i64 0, align 8
@REG_RXSTA_ROI = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sunxi_ir_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_ir_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sunxi_ir*, align 8
  %10 = alloca %struct.ir_raw_event, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sunxi_ir*
  store %struct.sunxi_ir* %12, %struct.sunxi_ir** %9, align 8
  %13 = bitcast %struct.ir_raw_event* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %15 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %18 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SUNXI_IR_RXSTA_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @REG_RXSTA_CLEARALL, align 8
  %25 = or i64 %23, %24
  %26 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %27 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SUNXI_IR_RXSTA_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i64 %25, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @REG_RXSTA_RA, align 8
  %34 = load i64, i64* @REG_RXSTA_RPE, align 8
  %35 = or i64 %33, %34
  %36 = and i64 %32, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %2
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @REG_RXSTA_GET_AC(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %43 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %48 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %88, %52
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %60 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SUNXI_IR_RXFIFO_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call zeroext i8 @readb(i64 %63)
  store i8 %64, i8* %6, align 1
  %65 = load i8, i8* %6, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 127
  %74 = add nsw i32 %73, 1
  %75 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %76 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %74, %80
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  store i8 %82, i8* %83, align 4
  %84 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %85 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_5__* %86, %struct.ir_raw_event* %10)
  br label %88

88:                                               ; preds = %58
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %54

91:                                               ; preds = %54
  br label %92

92:                                               ; preds = %91, %2
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @REG_RXSTA_ROI, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %99 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = call i32 @ir_raw_event_reset(%struct.TYPE_5__* %100)
  br label %117

102:                                              ; preds = %92
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @REG_RXSTA_RPE, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %109 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = call i32 @ir_raw_event_set_idle(%struct.TYPE_5__* %110, i32 1)
  %112 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %113 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = call i32 @ir_raw_event_handle(%struct.TYPE_5__* %114)
  br label %116

116:                                              ; preds = %107, %102
  br label %117

117:                                              ; preds = %116, %97
  %118 = load %struct.sunxi_ir*, %struct.sunxi_ir** %9, align 8
  %119 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @readl(i64) #2

declare dso_local i32 @writel(i64, i64) #2

declare dso_local i32 @REG_RXSTA_GET_AC(i64) #2

declare dso_local zeroext i8 @readb(i64) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.TYPE_5__*, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_reset(%struct.TYPE_5__*) #2

declare dso_local i32 @ir_raw_event_set_idle(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_5__*) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
