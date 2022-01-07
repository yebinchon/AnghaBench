; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i64, %struct.il_channel_info* }
%struct.il_channel_info = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"Requested Tx power same as current limit: %ddBm.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Setting upper limit clamp to %ddBm.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_hw_reg_set_txpower(%struct.il_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.il_channel_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @D_POWER(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i32 0, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @D_POWER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %53, %17
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 2
  %32 = load %struct.il_channel_info*, %struct.il_channel_info** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %32, i64 %33
  store %struct.il_channel_info* %34, %struct.il_channel_info** %6, align 8
  %35 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %36 = call i64 @il3945_hw_reg_get_ch_txpower_limit(%struct.il_channel_info* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %42 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %48 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %50 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %51 = call i32 @il3945_hw_reg_set_new_power(%struct.il_priv* %49, %struct.il_channel_info* %50)
  br label %52

52:                                               ; preds = %45, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %58 = call i32 @il3945_is_temp_calib_needed(%struct.il_priv* %57)
  %59 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %60 = call i32 @il3945_hw_reg_comp_txpower_temp(%struct.il_priv* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @D_POWER(i8*, i64) #1

declare dso_local i64 @il3945_hw_reg_get_ch_txpower_limit(%struct.il_channel_info*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @il3945_hw_reg_set_new_power(%struct.il_priv*, %struct.il_channel_info*) #1

declare dso_local i32 @il3945_is_temp_calib_needed(%struct.il_priv*) #1

declare dso_local i32 @il3945_hw_reg_comp_txpower_temp(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
