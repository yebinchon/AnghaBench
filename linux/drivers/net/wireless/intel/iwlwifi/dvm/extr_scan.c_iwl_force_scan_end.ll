; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_force_scan_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_force_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32 }

@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Forcing scan end while not scanning\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Forcing scan end\0A\00", align 1
@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@STATUS_SCAN_ABORTING = common dso_local global i32 0, align 4
@STATUS_SCAN_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_force_scan_end(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 1
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load i32, i32* @STATUS_SCANNING, align 4
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %13 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @STATUS_SCANNING, align 4
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @STATUS_SCAN_HW, align 4
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @STATUS_SCAN_ABORTING, align 4
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @STATUS_SCAN_COMPLETE, align 4
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %34 = call i32 @iwl_complete_scan(%struct.iwl_priv* %33, i32 1)
  br label %35

35:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_complete_scan(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
