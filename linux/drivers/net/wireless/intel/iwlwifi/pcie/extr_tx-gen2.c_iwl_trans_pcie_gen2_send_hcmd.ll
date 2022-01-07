; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_gen2_send_hcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_gen2_send_hcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_host_cmd = type { i32, i32 }

@CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@STATUS_RFKILL_OPMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Dropping CMD 0x%x: RF KILL\0A\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_gen2_send_hcmd(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %7 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %8 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %21 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ERFKILL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %13, %2
  %28 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CMD_ASYNC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CMD_WANT_SKB, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %34
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %47 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %48 = call i32 @iwl_pcie_gen2_enqueue_hcmd(%struct.iwl_trans* %46, %struct.iwl_host_cmd* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %54 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %53, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @IWL_ERR(%struct.iwl_trans* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %66

62:                                               ; preds = %27
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %64 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %65 = call i32 @iwl_pcie_gen2_send_hcmd_sync(%struct.iwl_trans* %63, %struct.iwl_host_cmd* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %61, %51, %42, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_pcie_gen2_enqueue_hcmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_get_cmd_string(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_pcie_gen2_send_hcmd_sync(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
