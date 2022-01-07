; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl_add_beacon_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl_add_beacon_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@IWLAGN_EXT_BEACON_TIME_POS = common dso_local global i32 0, align 4
@TIME_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i64, i64, i64)* @iwl_add_beacon_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_add_beacon_time(%struct.iwl_priv* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %15 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %16 = call i64 @iwl_beacon_time_mask_low(%struct.iwl_priv* %14, i32 %15)
  %17 = and i64 %13, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %20 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %21 = call i64 @iwl_beacon_time_mask_low(%struct.iwl_priv* %19, i32 %20)
  %22 = and i64 %18, %21
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @TIME_UNIT, align 8
  %25 = mul nsw i64 %23, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %28 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %29 = call i64 @iwl_beacon_time_mask_high(%struct.iwl_priv* %27, i32 %28)
  %30 = and i64 %26, %29
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %33 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %34 = call i64 @iwl_beacon_time_mask_high(%struct.iwl_priv* %32, i32 %33)
  %35 = and i64 %31, %34
  %36 = add nsw i64 %30, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %12, align 8
  br label %70

46:                                               ; preds = %4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %12, align 8
  %58 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %59 = shl i32 1, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %12, align 8
  br label %69

63:                                               ; preds = %46
  %64 = load i32, i32* @IWLAGN_EXT_BEACON_TIME_POS, align 4
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %63, %50
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @cpu_to_le32(i64 %71)
  ret i32 %72
}

declare dso_local i64 @iwl_beacon_time_mask_low(%struct.iwl_priv*, i32) #1

declare dso_local i64 @iwl_beacon_time_mask_high(%struct.iwl_priv*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
