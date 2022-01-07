; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.lio = type { %struct.octeon_device*, %struct.oct_link_info }
%struct.octeon_device = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.oct_link_info = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.octnic_ctrl_pkt = type { %struct.TYPE_13__, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@OCTEON_CN23XX_PF_VID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@OCTNET_CMD_SET_FLOW_CTL = common dso_local global i32 0, align 4
@liquidio_link_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to set pause parameter, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @lio_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.octnic_ctrl_pkt, align 8
  %9 = alloca %struct.oct_link_info*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.lio* @GET_LIO(%struct.net_device* %11)
  store %struct.lio* %12, %struct.lio** %6, align 8
  %13 = load %struct.lio*, %struct.lio** %6, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 0
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %7, align 8
  %16 = load %struct.lio*, %struct.lio** %6, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 1
  store %struct.oct_link_info* %17, %struct.oct_link_info** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCTEON_CN23XX_PF_VID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %130

26:                                               ; preds = %2
  %27 = load %struct.oct_link_info*, %struct.oct_link_info** %9, align 8
  %28 = getelementptr inbounds %struct.oct_link_info, %struct.oct_link_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %130

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTONEG_ENABLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %47
  %57 = call i32 @memset(%struct.octnic_ctrl_pkt* %8, i32 0, i32 48)
  %58 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @OCTNET_CMD_SET_FLOW_CTL, align 4
  %61 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.lio*, %struct.lio** %6, align 8
  %65 = getelementptr inbounds %struct.lio, %struct.lio* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.oct_link_info, %struct.oct_link_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = ptrtoint %struct.net_device* %73 to i64
  %75 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 2
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @liquidio_link_ctrl_cmd_completion, align 4
  %77 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %90

86:                                               ; preds = %56
  %87 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %103

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.lio*, %struct.lio** %6, align 8
  %105 = getelementptr inbounds %struct.lio, %struct.lio* %104, i32 0, i32 0
  %106 = load %struct.octeon_device*, %struct.octeon_device** %105, align 8
  %107 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %106, %struct.octnic_ctrl_pkt* %8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %112 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %111, i32 0, i32 3
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %130

119:                                              ; preds = %103
  %120 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %124 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %129 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %119, %110, %53, %43, %23
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.octnic_ctrl_pkt*, i32, i32) #1

declare dso_local i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device*, %struct.octnic_ctrl_pkt*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
