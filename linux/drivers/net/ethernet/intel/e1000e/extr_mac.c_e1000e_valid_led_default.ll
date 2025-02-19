; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_valid_led_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_valid_led_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@NVM_ID_LED_SETTINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@ID_LED_RESERVED_0000 = common dso_local global i64 0, align 8
@ID_LED_RESERVED_FFFF = common dso_local global i64 0, align 8
@ID_LED_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_valid_led_default(%struct.e1000_hw* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %8 = load i32, i32* @NVM_ID_LED_SETTINGS, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = call i64 @e1000_read_nvm(%struct.e1000_hw* %7, i32 %8, i32 1, i64* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ID_LED_RESERVED_0000, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ID_LED_RESERVED_FFFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16
  %27 = load i64, i64* @ID_LED_DEFAULT, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  store i64 0, i64* %3, align 8
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i64*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
