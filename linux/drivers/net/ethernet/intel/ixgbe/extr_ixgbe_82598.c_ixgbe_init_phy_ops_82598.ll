; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_init_phy_ops_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_init_phy_ops_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)*, i32*, i32*, i32*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.2*)*, i32*, i32* }
%struct.ixgbe_hw.2 = type opaque

@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_setup_copper_link_82598 = common dso_local global i32 0, align 4
@ixgbe_get_copper_link_capabilities_generic = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_check_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_reset_phy_nl = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_init_phy_ops_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_init_phy_ops_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_mac_info*, align 8
  %5 = alloca %struct.ixgbe_phy_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  store %struct.ixgbe_mac_info* %10, %struct.ixgbe_mac_info** %4, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  store %struct.ixgbe_phy_info* %12, %struct.ixgbe_phy_info** %5, align 8
  %13 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.1*
  %19 = call i32 %16(%struct.ixgbe_hw.1* %18)
  %20 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.2*
  %26 = call i64 %23(%struct.ixgbe_hw.2* %25)
  %27 = load i64, i64* @ixgbe_media_type_copper, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32* @ixgbe_setup_copper_link_82598, i32** %32, align 8
  %33 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32* @ixgbe_get_copper_link_capabilities_generic, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %80 [
    i32 128, label %41
    i32 129, label %48
  ]

41:                                               ; preds = %36
  %42 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32* @ixgbe_setup_phy_link_tnx, i32** %44, align 8
  %45 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32* @ixgbe_check_phy_link_tnx, i32** %47, align 8
  br label %81

48:                                               ; preds = %36
  %49 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %50 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32* @ixgbe_reset_phy_nl, i32** %51, align 8
  %52 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.0*
  %58 = call i32 %55(%struct.ixgbe_hw.0* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %48
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ixgbe_sfp_type_unknown, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %71, i32* %2, align 4
  br label %82

72:                                               ; preds = %63
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = call i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %73, i32* %7, i32* %8)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %78, i32* %2, align 4
  br label %82

79:                                               ; preds = %72
  br label %81

80:                                               ; preds = %36
  br label %81

81:                                               ; preds = %80, %79, %41
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %77, %70, %61
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
