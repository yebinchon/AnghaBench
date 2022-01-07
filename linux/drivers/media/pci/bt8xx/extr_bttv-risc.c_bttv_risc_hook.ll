; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_risc_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_risc_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8** }
%struct.TYPE_3__ = type { i32 }
%struct.btcx_riscmem = type { i64, i8** }

@.str = private unnamed_addr constant [27 x i8] c"%d: risc=%p slot[%d]=NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%d: risc=%p slot[%d]=%08llx irq=%d\0A\00", align 1
@BT848_RISC_JUMP = common dso_local global i64 0, align 8
@BT848_RISC_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_risc_hook(%struct.bttv* %0, i32 %1, %struct.btcx_riscmem* %2, i32 %3) #0 {
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btcx_riscmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.btcx_riscmem* %2, %struct.btcx_riscmem** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bttv*, %struct.bttv** %5, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 2
  %17 = shl i32 %16, 2
  %18 = add nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %21 = icmp eq %struct.btcx_riscmem* null, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.bttv*, %struct.bttv** %5, align 8
  %24 = getelementptr inbounds %struct.bttv, %struct.bttv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, %struct.btcx_riscmem*, i32, ...) @d2printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.btcx_riscmem* %27, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = call i8* @cpu_to_le32(i64 %30)
  %32 = load %struct.bttv*, %struct.bttv** %5, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* %31, i8** %39, align 8
  br label %97

40:                                               ; preds = %4
  %41 = load %struct.bttv*, %struct.bttv** %5, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %48 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, i32, %struct.btcx_riscmem*, i32, ...) @d2printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %44, %struct.btcx_riscmem* %45, i32 %46, i64 %49, i32 %50)
  %52 = load i64, i64* @BT848_RISC_JUMP, align 8
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %40
  %56 = load i64, i64* @BT848_RISC_IRQ, align 8
  %57 = load i64, i64* %9, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 15
  %61 = shl i32 %60, 16
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %66, 15
  %68 = shl i32 %67, 20
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %55, %40
  %73 = load i64, i64* %9, align 8
  %74 = call i8* @cpu_to_le32(i64 %73)
  %75 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %76 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %74, i8** %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %82 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* %80, i8** %84, align 8
  %85 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %7, align 8
  %86 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_le32(i64 %87)
  %89 = load %struct.bttv*, %struct.bttv** %5, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  store i8* %88, i8** %96, align 8
  br label %97

97:                                               ; preds = %72, %22
  ret i32 0
}

declare dso_local i32 @d2printk(i8*, i32, %struct.btcx_riscmem*, i32, ...) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
