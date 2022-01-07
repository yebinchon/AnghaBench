; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_hdl_card_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_hdl_card_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Card state received: HW:%s SW:%s\0A\00", align 1
@HW_CARD_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Kill\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@SW_CARD_DISABLED = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_SET = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@S_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il3945_hdl_card_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_hdl_card_state(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %8 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %9 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %8)
  store %struct.il_rx_pkt* %9, %struct.il_rx_pkt** %5, align 8
  %10 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %11 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HW_CARD_DISABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SW_CARD_DISABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @IL_WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %30)
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %34 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %35 = call i32 @_il_wr(%struct.il_priv* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HW_CARD_DISABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load i32, i32* @S_RFKILL, align 4
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i64* %43)
  br label %50

45:                                               ; preds = %2
  %46 = load i32, i32* @S_RFKILL, align 4
  %47 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i64* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %52 = call i32 @il_scan_cancel(%struct.il_priv* %51)
  %53 = load i32, i32* @S_RFKILL, align 4
  %54 = call i64 @test_bit(i32 %53, i64* %7)
  %55 = load i32, i32* @S_RFKILL, align 4
  %56 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %57 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i64* %57)
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %62 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @S_RFKILL, align 4
  %67 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %66, i64* %68)
  %70 = call i32 @wiphy_rfkill_set_hw_state(i32 %65, i64 %69)
  br label %75

71:                                               ; preds = %50
  %72 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 1
  %74 = call i32 @wake_up(i32* %73)
  br label %75

75:                                               ; preds = %71, %60
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IL_WARN(i8*, i8*, i8*) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @il_scan_cancel(%struct.il_priv*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
