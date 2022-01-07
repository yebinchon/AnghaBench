; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_wait_ioready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_wait_ioready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nfc = type { i32, i64 }

@NFI_PIO_DIRDY = common dso_local global i64 0, align 8
@PIO_DI_RDY = common dso_local global i32 0, align 4
@MTK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data not ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_nfc*)* @mtk_nfc_wait_ioready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_wait_ioready(%struct.mtk_nfc* %0) #0 {
  %2 = alloca %struct.mtk_nfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mtk_nfc* %0, %struct.mtk_nfc** %2, align 8
  %5 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFI_PIO_DIRDY, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PIO_DI_RDY, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @MTK_TIMEOUT, align 4
  %15 = call i32 @readb_poll_timeout_atomic(i64 %9, i32 %10, i32 %13, i32 10, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %20 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @readb_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
