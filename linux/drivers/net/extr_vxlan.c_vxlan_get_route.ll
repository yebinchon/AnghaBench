; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_get_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_get_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.vxlan_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_cache = type { i32 }
%struct.ip_tunnel_info = type { i32 }
%struct.flowi4 = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"circular route to %pI4\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no route to %pI4\0A\00", align 1
@ENETUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtable* (%struct.vxlan_dev*, %struct.net_device*, %struct.vxlan_sock*, %struct.sk_buff*, i32, i64, i8*, i8**, i8*, i8*, %struct.dst_cache*, %struct.ip_tunnel_info*)* @vxlan_get_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtable* @vxlan_get_route(%struct.vxlan_dev* %0, %struct.net_device* %1, %struct.vxlan_sock* %2, %struct.sk_buff* %3, i32 %4, i64 %5, i8* %6, i8** %7, i8* %8, i8* %9, %struct.dst_cache* %10, %struct.ip_tunnel_info* %11) #0 {
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca %struct.vxlan_dev*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.vxlan_sock*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.dst_cache*, align 8
  %25 = alloca %struct.ip_tunnel_info*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.rtable*, align 8
  %28 = alloca %struct.flowi4, align 8
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %14, align 8
  store %struct.net_device* %1, %struct.net_device** %15, align 8
  store %struct.vxlan_sock* %2, %struct.vxlan_sock** %16, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %17, align 8
  store i32 %4, i32* %18, align 4
  store i64 %5, i64* %19, align 8
  store i8* %6, i8** %20, align 8
  store i8** %7, i8*** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store %struct.dst_cache* %10, %struct.dst_cache** %24, align 8
  store %struct.ip_tunnel_info* %11, %struct.ip_tunnel_info** %25, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %30 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %25, align 8
  %31 = call i32 @ip_tunnel_dst_cache_usable(%struct.sk_buff* %29, %struct.ip_tunnel_info* %30)
  store i32 %31, i32* %26, align 4
  store %struct.rtable* null, %struct.rtable** %27, align 8
  %32 = load %struct.vxlan_sock*, %struct.vxlan_sock** %16, align 8
  %33 = icmp ne %struct.vxlan_sock* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %12
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.rtable* @ERR_PTR(i32 %36)
  store %struct.rtable* %37, %struct.rtable** %13, align 8
  br label %123

38:                                               ; preds = %12
  %39 = load i64, i64* %19, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %25, align 8
  %43 = icmp ne %struct.ip_tunnel_info* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %26, align 4
  br label %45

45:                                               ; preds = %44, %41, %38
  %46 = load i32, i32* %26, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.dst_cache*, %struct.dst_cache** %24, align 8
  %50 = load i8**, i8*** %21, align 8
  %51 = call %struct.rtable* @dst_cache_get_ip4(%struct.dst_cache* %49, i8** %50)
  store %struct.rtable* %51, %struct.rtable** %27, align 8
  %52 = load %struct.rtable*, %struct.rtable** %27, align 8
  %53 = icmp ne %struct.rtable* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.rtable*, %struct.rtable** %27, align 8
  store %struct.rtable* %55, %struct.rtable** %13, align 8
  br label %123

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = call i32 @memset(%struct.flowi4* %28, i32 0, i32 56)
  %59 = load i32, i32* %18, align 4
  %60 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i64, i64* %19, align 8
  %62 = call i32 @RT_TOS(i64 %61)
  %63 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 7
  store i32 %62, i32* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 6
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @IPPROTO_UDP, align 4
  %69 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 5
  store i32 %68, i32* %69, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  %72 = load i8**, i8*** %21, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %22, align 8
  %76 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 3
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %23, align 8
  %78 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %80 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.rtable* @ip_route_output_key(i32 %81, %struct.flowi4* %28)
  store %struct.rtable* %82, %struct.rtable** %27, align 8
  %83 = load %struct.rtable*, %struct.rtable** %27, align 8
  %84 = call i32 @IS_ERR(%struct.rtable* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %115, label %86

86:                                               ; preds = %57
  %87 = load %struct.rtable*, %struct.rtable** %27, align 8
  %88 = getelementptr inbounds %struct.rtable, %struct.rtable* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %15, align 8
  %92 = icmp eq %struct.net_device* %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.net_device*, %struct.net_device** %15, align 8
  %95 = call i32 @netdev_dbg(%struct.net_device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %20)
  %96 = load %struct.rtable*, %struct.rtable** %27, align 8
  %97 = call i32 @ip_rt_put(%struct.rtable* %96)
  %98 = load i32, i32* @ELOOP, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.rtable* @ERR_PTR(i32 %99)
  store %struct.rtable* %100, %struct.rtable** %13, align 8
  br label %123

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8**, i8*** %21, align 8
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* %26, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.dst_cache*, %struct.dst_cache** %24, align 8
  %109 = load %struct.rtable*, %struct.rtable** %27, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @dst_cache_set_ip4(%struct.dst_cache* %108, %struct.TYPE_2__* %110, i8* %112)
  br label %114

114:                                              ; preds = %107, %101
  br label %121

115:                                              ; preds = %57
  %116 = load %struct.net_device*, %struct.net_device** %15, align 8
  %117 = call i32 @netdev_dbg(%struct.net_device* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %20)
  %118 = load i32, i32* @ENETUNREACH, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.rtable* @ERR_PTR(i32 %119)
  store %struct.rtable* %120, %struct.rtable** %13, align 8
  br label %123

121:                                              ; preds = %114
  %122 = load %struct.rtable*, %struct.rtable** %27, align 8
  store %struct.rtable* %122, %struct.rtable** %13, align 8
  br label %123

123:                                              ; preds = %121, %115, %93, %54, %34
  %124 = load %struct.rtable*, %struct.rtable** %13, align 8
  ret %struct.rtable* %124
}

declare dso_local i32 @ip_tunnel_dst_cache_usable(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local %struct.rtable* @ERR_PTR(i32) #1

declare dso_local %struct.rtable* @dst_cache_get_ip4(%struct.dst_cache*, i8**) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @RT_TOS(i64) #1

declare dso_local %struct.rtable* @ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i8**) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @dst_cache_set_ip4(%struct.dst_cache*, %struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
