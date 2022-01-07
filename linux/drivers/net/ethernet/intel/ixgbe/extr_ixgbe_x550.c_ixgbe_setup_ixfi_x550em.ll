; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, %struct.TYPE_2__ }
%struct.ixgbe_mac_info = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*)* @ixgbe_setup_ixfi_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ixgbe_mac_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  store %struct.ixgbe_mac_info* %10, %struct.ixgbe_mac_info** %6, align 8
  %11 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %17, i64* %3, align 8
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %23)
  %25 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %26 = call i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw* %19, i32 %24, i32 %25, i32* %8)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %3, align 8
  br label %85

31:                                               ; preds = %18
  %32 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %46
  ]

42:                                               ; preds = %31
  %43 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %52

46:                                               ; preds = %31
  %47 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %52

50:                                               ; preds = %31
  %51 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %51, i64* %3, align 8
  br label %85

52:                                               ; preds = %46, %42
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %57)
  %59 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw* %53, i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %3, align 8
  br label %85

66:                                               ; preds = %52
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %75 = call i64 @ixgbe_setup_ixfi_x550em_x(%struct.ixgbe_hw* %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* %3, align 8
  br label %85

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %66
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %83 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %82)
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %81, %78, %64, %50, %29, %16
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw*, i32, i32, i32*) #1

declare dso_local i32 @IXGBE_KRM_LINK_CTRL_1(i32) #1

declare dso_local i64 @ixgbe_write_iosf_sb_reg_x550(%struct.ixgbe_hw*, i32, i32, i32) #1

declare dso_local i64 @ixgbe_setup_ixfi_x550em_x(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
