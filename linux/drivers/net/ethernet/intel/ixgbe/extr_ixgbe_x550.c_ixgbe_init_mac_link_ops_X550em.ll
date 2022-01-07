; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_init_mac_link_ops_X550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_init_mac_link_ops_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, i32 }
%struct.ixgbe_mac_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ixgbe_hw.0*)*, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_setup_fc_x550em = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_sfp_n = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_sfp_x550a = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_sfp_x550em = common dso_local global i32 0, align 4
@ixgbe_set_soft_rate_select_speed = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_1G_T = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_t_X550em = common dso_local global i32 0, align 4
@ixgbe_setup_fc_generic = common dso_local global i32 0, align 4
@ixgbe_check_link_t_X550em = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SGMII = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SGMII_L = common dso_local global i32 0, align 4
@ixgbe_setup_sgmii = common dso_local global i32 0, align 4
@ixgbe_mac_x550em_a = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_init_mac_link_ops_X550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_init_mac_link_ops_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = load i32, i32* @ixgbe_setup_fc_x550em, align 4
  %7 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 8
  %10 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = bitcast %struct.ixgbe_hw* %14 to %struct.ixgbe_hw.0*
  %16 = call i32 %13(%struct.ixgbe_hw.0* %15)
  switch i32 %16, label %92 [
    i32 128, label %17
    i32 129, label %54
    i32 130, label %74
  ]

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  store i32* null, i32** %23, align 8
  %24 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @ixgbe_setup_mac_link_multispeed_fiber, align 4
  %28 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %44 [
    i32 131, label %34
    i32 132, label %39
  ]

34:                                               ; preds = %17
  %35 = load i32, i32* @ixgbe_setup_mac_link_sfp_n, align 4
  %36 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 8
  br label %49

39:                                               ; preds = %17
  %40 = load i32, i32* @ixgbe_setup_mac_link_sfp_x550a, align 4
  %41 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 8
  br label %49

44:                                               ; preds = %17
  %45 = load i32, i32* @ixgbe_setup_mac_link_sfp_x550em, align 4
  %46 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i32 %45, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = load i32, i32* @ixgbe_set_soft_rate_select_speed, align 4
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  br label %93

54:                                               ; preds = %1
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IXGBE_DEV_ID_X550EM_X_1G_T, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %93

61:                                               ; preds = %54
  %62 = load i32, i32* @ixgbe_setup_mac_link_t_X550em, align 4
  %63 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @ixgbe_setup_fc_generic, align 4
  %67 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @ixgbe_check_link_t_X550em, align 4
  %71 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  br label %93

74:                                               ; preds = %1
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SGMII, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SGMII_L, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @ixgbe_setup_sgmii, align 4
  %88 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %80
  br label %93

92:                                               ; preds = %1
  br label %93

93:                                               ; preds = %92, %91, %61, %60, %49
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ixgbe_mac_x550em_a, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %102 = call i32 @ixgbe_init_mac_link_ops_X550em_a(%struct.ixgbe_hw* %101)
  br label %103

103:                                              ; preds = %100, %93
  ret void
}

declare dso_local i32 @ixgbe_init_mac_link_ops_X550em_a(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
