; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel_info = type { i32 }
%struct.geneve_net = type { i32 }
%struct.geneve_dev = type { i32, i32, i32, i32, i32, %struct.ip_tunnel_info, %struct.net_device*, %struct.net* }

@geneve_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"Device is externally controlled, so attributes (VNI, Port, and so on) must not be specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GENEVE_BASE_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"There can be only one externally controlled device on a destination port\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"There already exists an externally controlled device on this destination port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.netlink_ext_ack*, %struct.ip_tunnel_info*, i32, i32, i32, i32)* @geneve_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_configure(%struct.net* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2, %struct.ip_tunnel_info* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca %struct.ip_tunnel_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.geneve_net*, align 8
  %19 = alloca %struct.geneve_dev*, align 8
  %20 = alloca %struct.geneve_dev*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %12, align 8
  store %struct.ip_tunnel_info* %3, %struct.ip_tunnel_info** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load %struct.net*, %struct.net** %10, align 8
  %26 = load i32, i32* @geneve_net_id, align 4
  %27 = call %struct.geneve_net* @net_generic(%struct.net* %25, i32 %26)
  store %struct.geneve_net* %27, %struct.geneve_net** %18, align 8
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = call %struct.geneve_dev* @netdev_priv(%struct.net_device* %28)
  store %struct.geneve_dev* %29, %struct.geneve_dev** %20, align 8
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %8
  %33 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %34 = call i32 @is_tnl_info_zero(%struct.ip_tunnel_info* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %38 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %37, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %149

41:                                               ; preds = %32, %8
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %44 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %43, i32 0, i32 7
  store %struct.net* %42, %struct.net** %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %11, align 8
  %46 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %47 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %46, i32 0, i32 6
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  %48 = load %struct.geneve_net*, %struct.geneve_net** %18, align 8
  %49 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %50 = call %struct.geneve_dev* @geneve_find_dev(%struct.geneve_net* %48, %struct.ip_tunnel_info* %49, i32* %22, i32* %21)
  store %struct.geneve_dev* %50, %struct.geneve_dev** %19, align 8
  %51 = load %struct.geneve_dev*, %struct.geneve_dev** %19, align 8
  %52 = icmp ne %struct.geneve_dev* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %149

56:                                               ; preds = %41
  %57 = load i32, i32* @GENEVE_BASE_HLEN, align 4
  %58 = load i32, i32* @ETH_HLEN, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %24, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %56
  %63 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %64 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %63)
  %65 = load i64, i64* @AF_INET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32, i32* %24, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %24, align 4
  %72 = load %struct.net_device*, %struct.net_device** %11, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %89

78:                                               ; preds = %62, %56
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %24, align 4
  %83 = load %struct.net_device*, %struct.net_device** %11, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  br label %89

89:                                               ; preds = %78, %67
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* @ETH_HLEN, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.net_device*, %struct.net_device** %11, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load i32, i32* %22, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %102 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %101, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @EPERM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %149

105:                                              ; preds = %97
  br label %115

106:                                              ; preds = %89
  %107 = load i32, i32* %21, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %111 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %110, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EPERM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %149

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %105
  %116 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %117 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %117, i32 0, i32 0
  %119 = call i32 @dst_cache_reset(i32* %118)
  %120 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %121 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %120, i32 0, i32 5
  %122 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %123 = bitcast %struct.ip_tunnel_info* %121 to i8*
  %124 = bitcast %struct.ip_tunnel_info* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %127 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %130 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %133 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %136 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.net_device*, %struct.net_device** %11, align 8
  %138 = call i32 @register_netdevice(%struct.net_device* %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %115
  %142 = load i32, i32* %23, align 4
  store i32 %142, i32* %9, align 4
  br label %149

143:                                              ; preds = %115
  %144 = load %struct.geneve_dev*, %struct.geneve_dev** %20, align 8
  %145 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %144, i32 0, i32 4
  %146 = load %struct.geneve_net*, %struct.geneve_net** %18, align 8
  %147 = getelementptr inbounds %struct.geneve_net, %struct.geneve_net* %146, i32 0, i32 0
  %148 = call i32 @list_add(i32* %145, i32* %147)
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %143, %141, %109, %100, %53, %36
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local %struct.geneve_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.geneve_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_tnl_info_zero(%struct.ip_tunnel_info*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.geneve_dev* @geneve_find_dev(%struct.geneve_net*, %struct.ip_tunnel_info*, i32*, i32*) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
