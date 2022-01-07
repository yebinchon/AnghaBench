; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@APMG_CLK_CTRL_REG = common dso_local global i32 0, align 4
@APMS_CLK_VAL_MRB_FUNC_MODE = common dso_local global i32 0, align 4
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_VAL_RESET_REQ = common dso_local global i32 0, align 4
@STATUS_SYNC_HCMD_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_irq_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_irq_handle_error(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %3, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %13
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %22 = load i32, i32* @APMG_CLK_CTRL_REG, align 4
  %23 = call i32 @iwl_read_prph(%struct.iwl_trans* %21, i32 %22)
  %24 = load i32, i32* @APMS_CLK_VAL_MRB_FUNC_MODE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %29 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %30 = call i32 @iwl_read_prph(%struct.iwl_trans* %28, i32 %29)
  %31 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27, %20
  %35 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iwl_op_mode_wimax_active(i32 %41)
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 0
  %45 = call i32 @wake_up(i32* %44)
  br label %90

46:                                               ; preds = %27, %13, %1
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %77, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %50 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %48, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %47
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %60, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %77

67:                                               ; preds = %57
  %68 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @del_timer(i32* %75)
  br label %77

77:                                               ; preds = %67, %66
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %47

80:                                               ; preds = %47
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %82 = call i32 @iwl_trans_fw_error(%struct.iwl_trans* %81)
  %83 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %85 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  %87 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %88 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %87, i32 0, i32 0
  %89 = call i32 @wake_up(i32* %88)
  br label %90

90:                                               ; preds = %80, %34
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_op_mode_wimax_active(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @iwl_trans_fw_error(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
