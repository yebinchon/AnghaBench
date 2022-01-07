; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_nfc = type { i32, i32 }

@NFC_IRQ_STATUS = common dso_local global i32 0, align 4
@IDLE_EN_BIT = common dso_local global i32 0, align 4
@NFC_FLASH_CMD2 = common dso_local global i32 0, align 4
@START_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout while waiting for BUSY.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_nfc*)* @vf610_nfc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_nfc_done(%struct.vf610_nfc* %0) #0 {
  %2 = alloca %struct.vf610_nfc*, align 8
  %3 = alloca i64, align 8
  store %struct.vf610_nfc* %0, %struct.vf610_nfc** %2, align 8
  %4 = call i64 @msecs_to_jiffies(i32 100)
  store i64 %4, i64* %3, align 8
  %5 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %6 = load i32, i32* @NFC_IRQ_STATUS, align 4
  %7 = load i32, i32* @IDLE_EN_BIT, align 4
  %8 = call i32 @vf610_nfc_set(%struct.vf610_nfc* %5, i32 %6, i32 %7)
  %9 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %10 = load i32, i32* @NFC_FLASH_CMD2, align 4
  %11 = load i32, i32* @START_BIT, align 4
  %12 = call i32 @vf610_nfc_set(%struct.vf610_nfc* %9, i32 %10, i32 %11)
  %13 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %14 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @wait_for_completion_timeout(i32* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %20 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %25 = call i32 @vf610_nfc_clear_status(%struct.vf610_nfc* %24)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @vf610_nfc_set(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @vf610_nfc_clear_status(%struct.vf610_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
