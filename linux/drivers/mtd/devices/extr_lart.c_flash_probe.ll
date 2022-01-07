; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_lart.c_flash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_lart.c_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READ_ID_CODES = common dso_local global i32 0, align 4
@READ_ARRAY = common dso_local global i32 0, align 4
@FLASH_MANUFACTURER = common dso_local global i64 0, align 8
@FLASH_DEVICE_16mbit_TOP = common dso_local global i64 0, align 8
@FLASH_DEVICE_16mbit_BOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_probe() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @READ_ID_CODES, align 4
  %4 = call i32 @DATA_TO_FLASH(i32 %3)
  %5 = call i32 @write32(i32 %4, i32 0)
  %6 = call i32 @ADDR_TO_FLASH_U2(i32 0)
  %7 = call i32 @read32(i32 %6)
  %8 = call i64 @FLASH_TO_DATA(i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = call i32 @ADDR_TO_FLASH_U2(i32 1)
  %10 = call i32 @read32(i32 %9)
  %11 = call i64 @FLASH_TO_DATA(i32 %10)
  store i64 %11, i64* %2, align 8
  %12 = load i32, i32* @READ_ARRAY, align 4
  %13 = call i32 @DATA_TO_FLASH(i32 %12)
  %14 = call i32 @write32(i32 %13, i32 0)
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @FLASH_MANUFACTURER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %0
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @FLASH_DEVICE_16mbit_TOP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @FLASH_DEVICE_16mbit_BOTTOM, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %0
  %29 = phi i1 [ false, %0 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @write32(i32, i32) #1

declare dso_local i32 @DATA_TO_FLASH(i32) #1

declare dso_local i64 @FLASH_TO_DATA(i32) #1

declare dso_local i32 @read32(i32) #1

declare dso_local i32 @ADDR_TO_FLASH_U2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
