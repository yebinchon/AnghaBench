; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_bt_gain_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_bt_gain_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32 }
%struct.ath_common = type { i32 }

@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Give LNA and SPDT control to BT\0A\00", align 1
@AR_PHY_GLB_CONTROL = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_bt_gain_ctrl(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ath9k_hw_mci* %9, %struct.ath9k_hw_mci** %4, align 8
  %10 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %11 = load i32, i32* @MCI, align 4
  %12 = call i32 @ath_dbg(%struct.ath_common* %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call i32 @ar9003_mci_send_lna_take(%struct.ath_hw* %13, i32 1)
  %15 = call i32 @udelay(i32 50)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load i32, i32* @AR_PHY_GLB_CONTROL, align 4
  %18 = load i32, i32* @AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL, align 4
  %19 = call i32 @REG_SET_BIT(%struct.ath_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %21 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = call i32 @ar9003_mci_send_2g5g_status(%struct.ath_hw* %24, i32 1)
  %26 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %27 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ar9003_mci_send_lna_take(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_send_2g5g_status(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
