; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_get_v4_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_get_v4_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.net_device* }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.geneve_sock = type { i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.geneve_dev = type { i32, i32 }
%struct.dst_cache = type { i32 }

@EIO = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no route to %pI4\0A\00", align 1
@ENETUNREACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"circular route to %pI4\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtable* (%struct.sk_buff*, %struct.net_device*, %struct.geneve_sock*, %struct.flowi4*, %struct.ip_tunnel_info*)* @geneve_get_v4_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtable* @geneve_get_v4_rt(%struct.sk_buff* %0, %struct.net_device* %1, %struct.geneve_sock* %2, %struct.flowi4* %3, %struct.ip_tunnel_info* %4) #0 {
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.geneve_sock*, align 8
  %10 = alloca %struct.flowi4*, align 8
  %11 = alloca %struct.ip_tunnel_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.geneve_dev*, align 8
  %14 = alloca %struct.dst_cache*, align 8
  %15 = alloca %struct.rtable*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.geneve_sock* %2, %struct.geneve_sock** %9, align 8
  store %struct.flowi4* %3, %struct.flowi4** %10, align 8
  store %struct.ip_tunnel_info* %4, %struct.ip_tunnel_info** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %19 = call i32 @ip_tunnel_dst_cache_usable(%struct.sk_buff* %17, %struct.ip_tunnel_info* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.geneve_dev* @netdev_priv(%struct.net_device* %20)
  store %struct.geneve_dev* %21, %struct.geneve_dev** %13, align 8
  store %struct.rtable* null, %struct.rtable** %15, align 8
  %22 = load %struct.geneve_sock*, %struct.geneve_sock** %9, align 8
  %23 = icmp ne %struct.geneve_sock* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.rtable* @ERR_PTR(i32 %26)
  store %struct.rtable* %27, %struct.rtable** %6, align 8
  br label %138

28:                                               ; preds = %5
  %29 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %30 = call i32 @memset(%struct.flowi4* %29, i32 0, i32 20)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %35 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IPPROTO_UDP, align 4
  %37 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %38 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %46 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %48 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %54 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %28
  %62 = load %struct.geneve_dev*, %struct.geneve_dev** %13, align 8
  %63 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @ip_hdr(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = call i32 @ip_tunnel_get_dsfield(i32 %68, %struct.sk_buff* %69)
  store i32 %70, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %66, %61, %28
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @RT_TOS(i32 %72)
  %74 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %75 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %76, i32 0, i32 0
  %78 = bitcast i32* %77 to %struct.dst_cache*
  store %struct.dst_cache* %78, %struct.dst_cache** %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load %struct.dst_cache*, %struct.dst_cache** %14, align 8
  %83 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %84 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %83, i32 0, i32 0
  %85 = call %struct.rtable* @dst_cache_get_ip4(%struct.dst_cache* %82, i32* %84)
  store %struct.rtable* %85, %struct.rtable** %15, align 8
  %86 = load %struct.rtable*, %struct.rtable** %15, align 8
  %87 = icmp ne %struct.rtable* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load %struct.rtable*, %struct.rtable** %15, align 8
  store %struct.rtable* %89, %struct.rtable** %6, align 8
  br label %138

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %71
  %92 = load %struct.geneve_dev*, %struct.geneve_dev** %13, align 8
  %93 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %96 = call %struct.rtable* @ip_route_output_key(i32 %94, %struct.flowi4* %95)
  store %struct.rtable* %96, %struct.rtable** %15, align 8
  %97 = load %struct.rtable*, %struct.rtable** %15, align 8
  %98 = call i64 @IS_ERR(%struct.rtable* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.net_device*, %struct.net_device** %8, align 8
  %102 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %103 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %102, i32 0, i32 1
  %104 = call i32 @netdev_dbg(%struct.net_device* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %103)
  %105 = load i32, i32* @ENETUNREACH, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.rtable* @ERR_PTR(i32 %106)
  store %struct.rtable* %107, %struct.rtable** %6, align 8
  br label %138

108:                                              ; preds = %91
  %109 = load %struct.rtable*, %struct.rtable** %15, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = load %struct.net_device*, %struct.net_device** %8, align 8
  %114 = icmp eq %struct.net_device* %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load %struct.net_device*, %struct.net_device** %8, align 8
  %117 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %118 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %117, i32 0, i32 1
  %119 = call i32 @netdev_dbg(%struct.net_device* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %118)
  %120 = load %struct.rtable*, %struct.rtable** %15, align 8
  %121 = call i32 @ip_rt_put(%struct.rtable* %120)
  %122 = load i32, i32* @ELOOP, align 4
  %123 = sub nsw i32 0, %122
  %124 = call %struct.rtable* @ERR_PTR(i32 %123)
  store %struct.rtable* %124, %struct.rtable** %6, align 8
  br label %138

125:                                              ; preds = %108
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.dst_cache*, %struct.dst_cache** %14, align 8
  %130 = load %struct.rtable*, %struct.rtable** %15, align 8
  %131 = getelementptr inbounds %struct.rtable, %struct.rtable* %130, i32 0, i32 0
  %132 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %133 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dst_cache_set_ip4(%struct.dst_cache* %129, %struct.TYPE_8__* %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %125
  %137 = load %struct.rtable*, %struct.rtable** %15, align 8
  store %struct.rtable* %137, %struct.rtable** %6, align 8
  br label %138

138:                                              ; preds = %136, %115, %100, %88, %24
  %139 = load %struct.rtable*, %struct.rtable** %6, align 8
  ret %struct.rtable* %139
}

declare dso_local i32 @ip_tunnel_dst_cache_usable(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local %struct.geneve_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rtable* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @ip_tunnel_get_dsfield(i32, %struct.sk_buff*) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.rtable* @dst_cache_get_ip4(%struct.dst_cache*, i32*) #1

declare dso_local %struct.rtable* @ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @dst_cache_set_ip4(%struct.dst_cache*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
