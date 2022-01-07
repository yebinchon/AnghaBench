; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_op_mode_dvm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_op_mode_dvm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"*** UNLOAD DRIVER ***\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_op_mode_dvm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_op_mode_dvm_stop(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %4 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %5 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %4)
  store %struct.iwl_priv* %5, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = call i32 @iwlagn_mac_unregister(%struct.iwl_priv* %8)
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = call i32 @iwl_tt_exit(%struct.iwl_priv* %10)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @flush_workqueue(i32* %22)
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @destroy_workqueue(i32* %26)
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %31 = call i32 @iwl_uninit_drv(%struct.iwl_priv* %30)
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_kfree_skb(i32 %34)
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iwl_trans_op_mode_leave(i32 %38)
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ieee80211_free_hw(i32 %42)
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwlagn_mac_unregister(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_tt_exit(%struct.iwl_priv*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @iwl_uninit_drv(%struct.iwl_priv*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @iwl_trans_op_mode_leave(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
