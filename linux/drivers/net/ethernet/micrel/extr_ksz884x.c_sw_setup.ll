; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i32 }

@BROADCAST_STORM_PROTECTION_RATE = common dso_local global i32 0, align 4
@SWITCH_PORT_NUM = common dso_local global i32 0, align 4
@STP_SUPPORT = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_1_OFFSET = common dso_local global i32 0, align 4
@SWITCH_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@SWITCH_RX_FLOW_CTRL = common dso_local global i32 0, align 4
@PAUSE_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_setup(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %4 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %5 = call i32 @sw_set_global_ctrl(%struct.ksz_hw* %4)
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %7 = call i32 @sw_init_broad_storm(%struct.ksz_hw* %6)
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %9 = load i32, i32* @BROADCAST_STORM_PROTECTION_RATE, align 4
  %10 = call i32 @hw_cfg_broad_storm(%struct.ksz_hw* %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @sw_ena_broad_storm(%struct.ksz_hw* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %24 = call i32 @sw_init_prio(%struct.ksz_hw* %23)
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %26 = call i32 @sw_init_mirror(%struct.ksz_hw* %25)
  %27 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %28 = call i32 @sw_init_prio_rate(%struct.ksz_hw* %27)
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %30 = call i32 @sw_init_vlan(%struct.ksz_hw* %29)
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STP_SUPPORT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %39 = call i32 @sw_init_stp(%struct.ksz_hw* %38)
  br label %40

40:                                               ; preds = %37, %22
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %42 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %43 = load i32, i32* @SWITCH_TX_FLOW_CTRL, align 4
  %44 = load i32, i32* @SWITCH_RX_FLOW_CTRL, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @sw_chk(%struct.ksz_hw* %41, i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @PAUSE_FLOW_CTRL, align 4
  %50 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %56 = call i32 @sw_enable(%struct.ksz_hw* %55, i32 1)
  ret void
}

declare dso_local i32 @sw_set_global_ctrl(%struct.ksz_hw*) #1

declare dso_local i32 @sw_init_broad_storm(%struct.ksz_hw*) #1

declare dso_local i32 @hw_cfg_broad_storm(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_ena_broad_storm(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_init_prio(%struct.ksz_hw*) #1

declare dso_local i32 @sw_init_mirror(%struct.ksz_hw*) #1

declare dso_local i32 @sw_init_prio_rate(%struct.ksz_hw*) #1

declare dso_local i32 @sw_init_vlan(%struct.ksz_hw*) #1

declare dso_local i32 @sw_init_stp(%struct.ksz_hw*) #1

declare dso_local i32 @sw_chk(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @sw_enable(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
