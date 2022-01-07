; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl_usecs_to_beacons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl_usecs_to_beacons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@TIME_UNIT = common dso_local global i32 0, align 4
@IWLAGN_EXT_BEACON_TIME_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i32, i32)* @iwl_usecs_to_beacons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_usecs_to_beacons(%struct.iwl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @TIME_UNIT, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %42

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sdiv i32 %21, %22
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %25 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %26 = call i32 @iwl_beacon_time_mask_high(%struct.iwl_priv* %24, i32 %25)
  %27 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %23, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = srem i32 %30, %31
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %34 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %35 = call i32 @iwl_beacon_time_mask_low(%struct.iwl_priv* %33, i32 %34)
  %36 = and i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %20, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @iwl_beacon_time_mask_high(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_beacon_time_mask_low(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
