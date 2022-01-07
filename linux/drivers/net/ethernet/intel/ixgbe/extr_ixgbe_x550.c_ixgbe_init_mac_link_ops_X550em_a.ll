; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_init_mac_link_ops_X550em_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_init_mac_link_ops_X550em_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.ixgbe_mac_info }
%struct.ixgbe_mac_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ixgbe_hw.0*)*, i32*, i32, i32, i32 }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_fc_autoneg_fiber_x550em_a = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T_L = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_t_X550em = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg_sgmii_x550em_a = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg_fw = common dso_local global i32* null, align 8
@ixgbe_setup_sgmii_fw = common dso_local global i32 0, align 4
@ixgbe_check_mac_link_generic = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg_backplane_x550em_a = common dso_local global i32 0, align 4
@ixgbe_setup_fc_backplane_x550em_a = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_init_mac_link_ops_X550em_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_init_mac_link_ops_X550em_a(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %8, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = bitcast %struct.ixgbe_hw* %10 to %struct.ixgbe_hw.0*
  %12 = call i32 %9(%struct.ixgbe_hw.0* %11)
  switch i32 %12, label %64 [
    i32 128, label %13
    i32 129, label %21
    i32 130, label %55
  ]

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @ixgbe_fc_autoneg_fiber_x550em_a, align 4
  %18 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  br label %65

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T_L, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @ixgbe_setup_mac_link_t_X550em, align 4
  %35 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  br label %65

38:                                               ; preds = %27, %21
  %39 = load i32, i32* @ixgbe_fc_autoneg_sgmii_x550em_a, align 4
  %40 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32*, i32** @ixgbe_fc_autoneg_fw, align 8
  %44 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32* %43, i32** %46, align 8
  %47 = load i32, i32* @ixgbe_setup_sgmii_fw, align 4
  %48 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @ixgbe_check_mac_link_generic, align 4
  %52 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  br label %65

55:                                               ; preds = %1
  %56 = load i32, i32* @ixgbe_fc_autoneg_backplane_x550em_a, align 4
  %57 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32*, i32** @ixgbe_setup_fc_backplane_x550em_a, align 8
  %61 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %64, %55, %38, %33, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
