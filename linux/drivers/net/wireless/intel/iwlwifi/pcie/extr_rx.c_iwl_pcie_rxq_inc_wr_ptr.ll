; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rxq_inc_wr_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rxq_inc_wr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_rxq = type { i32, i32, i32, i32, i32 }

@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Rx queue requesting wakeup, GP1 = 0x%x\0A\00", align 1
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@FIRST_RX_QUEUE = common dso_local global i32 0, align 4
@FH_RSCSR_CHNL0_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_rxq*)* @iwl_pcie_rxq_inc_wr_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rxq_inc_wr_ptr(%struct.iwl_trans* %0, %struct.iwl_rxq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_rxq*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_rxq* %1, %struct.iwl_rxq** %4, align 8
  %6 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %6, i32 0, i32 4
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %26 = call i32 @iwl_read32(%struct.iwl_trans* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %36 = load i32, i32* @CSR_GP_CNTRL, align 4
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = call i32 @iwl_set_bit(%struct.iwl_trans* %35, i32 %36, i32 %44)
  %46 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %102

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %17, %2
  %50 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @round_down(i32 %52, i32 8)
  %54 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %49
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %65 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %66 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %67 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FIRST_RX_QUEUE, align 4
  %70 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = shl i32 %73, 16
  %75 = or i32 %68, %74
  %76 = call i32 @iwl_write32(%struct.iwl_trans* %64, i32 %65, i32 %75)
  br label %102

77:                                               ; preds = %49
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %79 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %86 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %87 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @RFH_Q_FRBDCB_WIDX_TRG(i32 %88)
  %90 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %91 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @iwl_write32(%struct.iwl_trans* %85, i32 %89, i32 %92)
  br label %101

94:                                               ; preds = %77
  %95 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %96 = load i32, i32* @FH_RSCSR_CHNL0_WPTR, align 4
  %97 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %98 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @iwl_write32(%struct.iwl_trans* %95, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %94, %84
  br label %102

102:                                              ; preds = %31, %101, %63
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @RFH_Q_FRBDCB_WIDX_TRG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
