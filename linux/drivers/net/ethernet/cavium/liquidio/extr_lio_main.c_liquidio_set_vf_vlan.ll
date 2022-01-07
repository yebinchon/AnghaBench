; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { %struct.TYPE_11__, %struct.octeon_device* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.octnic_ctrl_pkt = type { i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@OCTNET_CMD_ADD_VLAN_FILTER = common dso_local global i32 0, align 4
@OCTNET_CMD_DEL_VLAN_FILTER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i64)* @liquidio_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.lio*, align 8
  %13 = alloca %struct.octeon_device*, align 8
  %14 = alloca %struct.octnic_ctrl_pkt, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.lio* @GET_LIO(%struct.net_device* %17)
  store %struct.lio* %18, %struct.lio** %12, align 8
  %19 = load %struct.lio*, %struct.lio** %12, align 8
  %20 = getelementptr inbounds %struct.lio, %struct.lio* %19, i32 0, i32 1
  %21 = load %struct.octeon_device*, %struct.octeon_device** %20, align 8
  store %struct.octeon_device* %21, %struct.octeon_device** %13, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %133

34:                                               ; preds = %24
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* @ETH_P_8021Q, align 4
  %37 = call i64 @htons(i32 %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EPROTONOSUPPORT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %133

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @VLAN_N_VID, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 7
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %133

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  store i32 %60, i32* %15, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %133

74:                                               ; preds = %62
  %75 = call i32 @memset(%struct.octnic_ctrl_pkt* %14, i32 0, i32 40)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @OCTNET_CMD_ADD_VLAN_FILTER, align 4
  %80 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  br label %88

83:                                               ; preds = %74
  %84 = load i32, i32* @OCTNET_CMD_DEL_VLAN_FILTER, align 4
  %85 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %15, align 4
  %90 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.lio*, %struct.lio** %12, align 8
  %102 = getelementptr inbounds %struct.lio, %struct.lio* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 1
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %14, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  %112 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %111, %struct.octnic_ctrl_pkt* %14)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %88
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %6, align 4
  br label %133

123:                                              ; preds = %88
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  %126 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %123, %121, %73, %49, %39, %31
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memset(%struct.octnic_ctrl_pkt*, i32, i32) #1

declare dso_local i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device*, %struct.octnic_ctrl_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
