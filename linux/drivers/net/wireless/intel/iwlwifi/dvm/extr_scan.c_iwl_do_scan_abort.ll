; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_do_scan_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_do_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32 }

@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Not performing scan to abort\0A\00", align 1
@STATUS_SCAN_ABORTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Scan abort in progress\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Send scan abort failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Successfully send scan abort\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_do_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_do_scan_abort(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 1
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load i32, i32* @STATUS_SCANNING, align 4
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %14 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @STATUS_SCAN_ABORTING, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 0
  %19 = call i64 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %38

24:                                               ; preds = %15
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %26 = call i32 @iwl_send_scan_abort(%struct.iwl_priv* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %34 = call i32 @iwl_force_scan_end(%struct.iwl_priv* %33)
  br label %38

35:                                               ; preds = %24
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %37 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %12, %21, %35, %29
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @iwl_send_scan_abort(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_force_scan_end(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
