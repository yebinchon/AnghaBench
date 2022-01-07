; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_send_hcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_send_hcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_host_cmd = type { i32, i32 }

@STATUS_TRANS_DEAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@STATUS_RFKILL_OPMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Dropping CMD 0x%x: RF KILL\0A\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_send_hcmd(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %6 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %29 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ERFKILL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %21, %14
  %36 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CMD_ASYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %44 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %45 = call i32 @iwl_pcie_send_hcmd_async(%struct.iwl_trans* %43, %struct.iwl_host_cmd* %44)
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %48 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %49 = call i32 @iwl_pcie_send_hcmd_sync(%struct.iwl_trans* %47, %struct.iwl_host_cmd* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %42, %27, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_send_hcmd_async(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_pcie_send_hcmd_sync(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
