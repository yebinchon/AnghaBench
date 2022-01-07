; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_run_init_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_run_init_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_notification_wait = type { i32 }

@iwl_run_init_ucode.calib_complete = internal constant [2 x i32] [i32 128, i32 129], align 4
@IWL_UCODE_INIT = common dso_local global i64 0, align 8
@iwlagn_wait_calib = common dso_local global i32 0, align 4
@UCODE_CALIB_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_run_init_ucode(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_notification_wait, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 4
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* @IWL_UCODE_INIT, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 2
  %23 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_ucode.calib_complete, i64 0, i64 0))
  %24 = load i32, i32* @iwlagn_wait_calib, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = call i32 @iwl_init_notification_wait(i32* %22, %struct.iwl_notification_wait* %4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_ucode.calib_complete, i64 0, i64 0), i32 %23, i32 %24, %struct.iwl_priv* %25)
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %28 = load i64, i64* @IWL_UCODE_INIT, align 8
  %29 = call i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %44

33:                                               ; preds = %20
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = call i32 @iwl_init_alive_start(%struct.iwl_priv* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 2
  %42 = load i32, i32* @UCODE_CALIB_TIMEOUT, align 4
  %43 = call i32 @iwl_wait_notification(i32* %41, %struct.iwl_notification_wait* %4, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %48

44:                                               ; preds = %38, %32
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = call i32 @iwl_remove_notification(i32* %46, %struct.iwl_notification_wait* %4)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @iwl_trans_stop_device(i32 %51)
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv*, i64) #1

declare dso_local i32 @iwl_init_alive_start(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_trans_stop_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
