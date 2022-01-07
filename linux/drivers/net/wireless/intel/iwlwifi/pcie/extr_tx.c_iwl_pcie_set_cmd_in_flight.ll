; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_set_cmd_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_set_cmd_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_host_cmd = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@STATUS_TRANS_DEAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to wake NIC for hcmd\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_host_cmd*)* @iwl_pcie_set_cmd_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_set_cmd_in_flight(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %6, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %21
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %89, label %35

35:                                               ; preds = %30
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %37 = load i32, i32* @CSR_GP_CNTRL, align 4
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = call i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans* %36, i32 %37, i32 %45)
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %48 = load i32, i32* @CSR_GP_CNTRL, align 4
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @iwl_poll_bit(%struct.iwl_trans* %47, i32 %48, i32 %56, i32 %66, i32 15000)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %35
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %72 = load i32, i32* @CSR_GP_CNTRL, align 4
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = call i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans* %71, i32 %72, i32 %80)
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %83 = call i32 @IWL_ERR(%struct.iwl_trans* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %90

86:                                               ; preds = %35
  %87 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %88 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %30, %21
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %70, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
