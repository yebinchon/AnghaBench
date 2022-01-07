; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_mac_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_mac_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i64, %struct.net_device* }
%struct.nfp_flower_repr_priv = type { i32 }
%struct.nfp_repr = type { %struct.nfp_flower_repr_priv*, %struct.nfp_app* }

@NETDEV_DOWN = common dso_local global i64 0, align 8
@NFP_TUNNEL_MAC_OFFLOAD_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to delete offload MAC on %s.\0A\00", align 1
@NETDEV_UP = common dso_local global i64 0, align 8
@NFP_TUNNEL_MAC_OFFLOAD_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to offload MAC on %s.\0A\00", align 1
@NETDEV_CHANGEADDR = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@NFP_TUNNEL_MAC_OFFLOAD_MOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to offload MAC change on %s.\0A\00", align 1
@NETDEV_CHANGEUPPER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to delete offloaded MAC on %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_tunnel_mac_event_handler(%struct.nfp_app* %0, %struct.net_device* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nfp_flower_repr_priv*, align 8
  %14 = alloca %struct.nfp_repr*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @NETDEV_DOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = load i32, i32* @NFP_TUNNEL_MAC_OFFLOAD_DEL, align 4
  %22 = call i32 @nfp_tunnel_offload_mac(%struct.nfp_app* %19, %struct.net_device* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call i32 @netdev_name(%struct.net_device* %27)
  %29 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  br label %152

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @NETDEV_UP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = load i32, i32* @NFP_TUNNEL_MAC_OFFLOAD_ADD, align 4
  %39 = call i32 @nfp_tunnel_offload_mac(%struct.nfp_app* %36, %struct.net_device* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call i32 @netdev_name(%struct.net_device* %44)
  %46 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  br label %151

48:                                               ; preds = %31
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @NETDEV_CHANGEADDR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_UP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %154

61:                                               ; preds = %52
  %62 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = load i32, i32* @NFP_TUNNEL_MAC_OFFLOAD_MOD, align 4
  %65 = call i32 @nfp_tunnel_offload_mac(%struct.nfp_app* %62, %struct.net_device* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %7, align 8
  %71 = call i32 @netdev_name(%struct.net_device* %70)
  %72 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %61
  br label %150

74:                                               ; preds = %48
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @NETDEV_CHANGEUPPER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %149

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = bitcast i8* %79 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %80, %struct.netdev_notifier_changeupper_info** %11, align 8
  %81 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %11, align 8
  %82 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %81, i32 0, i32 1
  %83 = load %struct.net_device*, %struct.net_device** %82, align 8
  store %struct.net_device* %83, %struct.net_device** %12, align 8
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = call i32 @nfp_netdev_is_nfp_repr(%struct.net_device* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.net_device*, %struct.net_device** %12, align 8
  %89 = call i32 @nfp_flower_is_supported_bridge(%struct.net_device* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %92, i32* %5, align 4
  br label %154

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %94)
  store %struct.nfp_repr* %95, %struct.nfp_repr** %14, align 8
  %96 = load %struct.nfp_repr*, %struct.nfp_repr** %14, align 8
  %97 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %96, i32 0, i32 1
  %98 = load %struct.nfp_app*, %struct.nfp_app** %97, align 8
  %99 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %100 = icmp ne %struct.nfp_app* %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %102, i32* %5, align 4
  br label %154

103:                                              ; preds = %93
  %104 = load %struct.nfp_repr*, %struct.nfp_repr** %14, align 8
  %105 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %104, i32 0, i32 0
  %106 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %105, align 8
  store %struct.nfp_flower_repr_priv* %106, %struct.nfp_flower_repr_priv** %13, align 8
  %107 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %11, align 8
  %108 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %103
  %112 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %113 = load %struct.net_device*, %struct.net_device** %7, align 8
  %114 = load i32, i32* @NFP_TUNNEL_MAC_OFFLOAD_DEL, align 4
  %115 = call i32 @nfp_tunnel_offload_mac(%struct.nfp_app* %112, %struct.net_device* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = call i32 @netdev_name(%struct.net_device* %119)
  %121 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %117, %111
  %123 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %13, align 8
  %124 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  br label %148

125:                                              ; preds = %103
  %126 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %13, align 8
  %127 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.net_device*, %struct.net_device** %7, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IFF_UP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %135, i32* %5, align 4
  br label %154

136:                                              ; preds = %125
  %137 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %138 = load %struct.net_device*, %struct.net_device** %7, align 8
  %139 = load i32, i32* @NFP_TUNNEL_MAC_OFFLOAD_ADD, align 4
  %140 = call i32 @nfp_tunnel_offload_mac(%struct.nfp_app* %137, %struct.net_device* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %144 = load %struct.net_device*, %struct.net_device** %7, align 8
  %145 = call i32 @netdev_name(%struct.net_device* %144)
  %146 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %142, %136
  br label %148

148:                                              ; preds = %147, %122
  br label %149

149:                                              ; preds = %148, %74
  br label %150

150:                                              ; preds = %149, %73
  br label %151

151:                                              ; preds = %150, %47
  br label %152

152:                                              ; preds = %151, %30
  %153 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %134, %101, %91, %59
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @nfp_tunnel_offload_mac(%struct.nfp_app*, %struct.net_device*, i32) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @netdev_name(%struct.net_device*) #1

declare dso_local i32 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @nfp_flower_is_supported_bridge(%struct.net_device*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
