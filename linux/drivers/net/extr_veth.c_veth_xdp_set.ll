; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.veth_priv = type { %struct.bpf_prog*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot set XDP when peer is detached\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VETH_XDP_HEADROOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Peer MTU is too large to set XDP\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"XDP expects number of rx queues not less than peer tx queues\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Setup for XDP failed\00", align 1
@NETIF_F_GSO_SOFTWARE = common dso_local global i32 0, align 4
@ETH_MAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* @veth_xdp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_xdp_set(%struct.net_device* %0, %struct.bpf_prog* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.veth_priv*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.veth_priv* %14, %struct.veth_priv** %8, align 8
  %15 = load %struct.veth_priv*, %struct.veth_priv** %8, align 8
  %16 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %15, i32 0, i32 0
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  store %struct.bpf_prog* %17, %struct.bpf_prog** %9, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %19 = load %struct.veth_priv*, %struct.veth_priv** %8, align 8
  %20 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %19, i32 0, i32 0
  store %struct.bpf_prog* %18, %struct.bpf_prog** %20, align 8
  %21 = load %struct.veth_priv*, %struct.veth_priv** %8, align 8
  %22 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.net_device* @rtnl_dereference(i32 %23)
  store %struct.net_device* %24, %struct.net_device** %10, align 8
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %26 = icmp ne %struct.bpf_prog* %25, null
  br i1 %26, label %27, label %98

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %32 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %150

35:                                               ; preds = %27
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* @VETH_XDP_HEADROOM, align 4
  %38 = sub i32 %36, %37
  %39 = load %struct.net_device*, %struct.net_device** %10, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub i32 %38, %41
  %43 = call i32 @SKB_DATA_ALIGN(i32 4)
  %44 = sub i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.net_device*, %struct.net_device** %10, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %52 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ERANGE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %150

55:                                               ; preds = %35
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %10, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %65 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %150

68:                                               ; preds = %55
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IFF_UP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call i32 @veth_enable_xdp(%struct.net_device* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %82 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %150

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %86 = icmp ne %struct.bpf_prog* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.net_device*, %struct.net_device** %10, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.net_device*, %struct.net_device** %10, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %84
  br label %98

98:                                               ; preds = %97, %3
  %99 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %100 = icmp ne %struct.bpf_prog* %99, null
  br i1 %100, label %101, label %130

101:                                              ; preds = %98
  %102 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %103 = icmp ne %struct.bpf_prog* %102, null
  br i1 %103, label %127, label %104

104:                                              ; preds = %101
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IFF_UP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = call i32 @veth_disable_xdp(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %104
  %115 = load %struct.net_device*, %struct.net_device** %10, align 8
  %116 = icmp ne %struct.net_device* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %119 = load %struct.net_device*, %struct.net_device** %10, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @ETH_MAX_MTU, align 4
  %124 = load %struct.net_device*, %struct.net_device** %10, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %114
  br label %127

127:                                              ; preds = %126, %101
  %128 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %129 = call i32 @bpf_prog_put(%struct.bpf_prog* %128)
  br label %130

130:                                              ; preds = %127, %98
  %131 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %132 = icmp ne %struct.bpf_prog* %131, null
  %133 = xor i1 %132, true
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %137 = icmp ne %struct.bpf_prog* %136, null
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = xor i32 %135, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load %struct.net_device*, %struct.net_device** %10, align 8
  %145 = icmp ne %struct.net_device* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.net_device*, %struct.net_device** %10, align 8
  %148 = call i32 @netdev_update_features(%struct.net_device* %147)
  br label %149

149:                                              ; preds = %146, %143, %130
  store i32 0, i32* %4, align 4
  br label %155

150:                                              ; preds = %80, %63, %50, %30
  %151 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %152 = load %struct.veth_priv*, %struct.veth_priv** %8, align 8
  %153 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %152, i32 0, i32 0
  store %struct.bpf_prog* %151, %struct.bpf_prog** %153, align 8
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %150, %149
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @veth_enable_xdp(%struct.net_device*) #1

declare dso_local i32 @veth_disable_xdp(%struct.net_device*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
