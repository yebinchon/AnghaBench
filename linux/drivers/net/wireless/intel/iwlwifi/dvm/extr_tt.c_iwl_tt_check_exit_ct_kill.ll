; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_tt_check_exit_ct_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_tt_check_exit_ct_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwl_priv = type { %struct.iwl_tt_mgmt, i32, i32 }
%struct.iwl_tt_mgmt = type { i64, i32, i32 }
%struct.timer_list = type { i32 }

@thermal_throttle = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@IWL_TI_CT_KILL = common dso_local global i64 0, align 8
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_SET = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"schedule ct_kill exit timer\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CT_KILL_EXIT_DURATION = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.iwl_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @iwl_tt_check_exit_ct_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_tt_check_exit_ct_kill(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tt_mgmt*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = ptrtoint %struct.iwl_priv* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thermal_throttle, i32 0, i32 0), align 4
  %10 = call %struct.iwl_priv* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.iwl_priv* %10, %struct.iwl_priv** %3, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 0
  store %struct.iwl_tt_mgmt* %12, %struct.iwl_tt_mgmt** %4, align 8
  %13 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IWL_TI_CT_KILL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %19
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %36 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %37 = call i32 @iwl_write32(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  br label %51

41:                                               ; preds = %25
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %46 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %47 = call i32 @iwl_write32(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %41, %31
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %56 = call i32 @iwl_read32(i32 %54, i32 %55)
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @iwl_trans_grab_nic_access(i32 %59, i64* %5)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @iwl_trans_release_nic_access(i32 %65, i64* %5)
  br label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %69 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %71, i32 0, i32 2
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i32, i32* @CT_KILL_EXIT_DURATION, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %73, %77
  %79 = call i32 @mod_timer(i32* %72, i64 %78)
  br label %80

80:                                               ; preds = %18, %67, %19
  ret void
}

declare dso_local %struct.iwl_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i32 @iwl_read32(i32, i32) #1

declare dso_local i64 @iwl_trans_grab_nic_access(i32, i64*) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
