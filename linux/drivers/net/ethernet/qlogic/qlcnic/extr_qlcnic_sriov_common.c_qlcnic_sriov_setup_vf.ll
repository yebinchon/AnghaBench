; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_setup_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_setup_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@QLCNIC_VLAN_FILTERING = common dso_local global i32 0, align 4
@qlcnic_use_msi_x = common dso_local global i32 0, align 4
@qlcnic_use_msi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Device does not support MSI interrupts\0A\00", align 1
@QLCNIC_SINGLE_RING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to setup interrupt\0A\00", align 1
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: XGbE port initialized\0A\00", align 1
@qlcnic_sriov_vf_poll_dev_state = common dso_local global i32 0, align 4
@QLCNIC_BC_CMD_CHANNEL_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_sriov_setup_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_setup_vf(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @QLCNIC_VLAN_FILTERING, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i32, i32* @qlcnic_use_msi_x, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @qlcnic_use_msi, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %21, %2
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %32 = load i32, i32* @QLCNIC_SINGLE_RING, align 4
  %33 = call i32 @qlcnic_set_tx_ring_count(%struct.qlcnic_adapter* %31, i32 %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %35 = load i32, i32* @QLCNIC_SINGLE_RING, align 4
  %36 = call i32 @qlcnic_set_sds_ring_count(%struct.qlcnic_adapter* %34, i32 %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %38 = call i32 @qlcnic_setup_intr(%struct.qlcnic_adapter* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %132

47:                                               ; preds = %30
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = call i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %132

53:                                               ; preds = %47
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %55 = call i32 @qlcnic_sriov_init(%struct.qlcnic_adapter* %54, i32 1)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %129

59:                                               ; preds = %53
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %60, i32 1)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %126

65:                                               ; preds = %59
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %67 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_INIT, align 4
  %68 = call i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %123

72:                                               ; preds = %65
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %74 = call i32 @qlcnic_sriov_vf_init_driver(%struct.qlcnic_adapter* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %119

78:                                               ; preds = %72
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %80 = call i32 @qlcnic_sriov_get_vf_acl(%struct.qlcnic_adapter* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %119

84:                                               ; preds = %78
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @qlcnic_setup_netdev(%struct.qlcnic_adapter* %85, %struct.TYPE_7__* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %119

94:                                               ; preds = %84
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %99 = call i32 @pci_set_drvdata(%struct.TYPE_8__* %97, %struct.qlcnic_adapter* %98)
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_info(i32* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %111 = load i32, i32* @qlcnic_sriov_vf_poll_dev_state, align 4
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @qlcnic_schedule_work(%struct.qlcnic_adapter* %110, i32 %111, i32 %117)
  store i32 0, i32* %3, align 4
  br label %136

119:                                              ; preds = %93, %83, %77
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %121 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_TERM, align 4
  %122 = call i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %71
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %125 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %124, i32 0)
  br label %126

126:                                              ; preds = %123, %64
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %128 = call i32 @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter* %127)
  br label %129

129:                                              ; preds = %126, %58
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %131 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %130)
  br label %132

132:                                              ; preds = %129, %52, %41
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %134 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %94
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qlcnic_set_tx_ring_count(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_set_sds_ring_count(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_setup_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_init(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_vf_init_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_get_vf_acl(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_setup_netdev(%struct.qlcnic_adapter*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_8__*, %struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_schedule_work(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
