; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.c_cxgb_find_route6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.c_cxgb_find_route6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i64 }
%struct.cxgb4_lld_info = type { i32 }
%struct.net_device = type opaque
%struct.flowi6 = type { i32, i32, i32 }
%struct.net_device.0 = type opaque
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CONFIG_IPV6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @cxgb_find_route6(%struct.cxgb4_lld_info* %0, %struct.net_device* (%struct.net_device*)* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.cxgb4_lld_info*, align 8
  %11 = alloca %struct.net_device* (%struct.net_device*)*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dst_entry*, align 8
  %19 = alloca %struct.flowi6, align 4
  store %struct.cxgb4_lld_info* %0, %struct.cxgb4_lld_info** %10, align 8
  store %struct.net_device* (%struct.net_device*)* %1, %struct.net_device* (%struct.net_device*)** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %18, align 8
  %20 = load i32, i32* @CONFIG_IPV6, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %8
  %24 = call i32 @memset(%struct.flowi6* %19, i32 0, i32 12)
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 1
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 16)
  %28 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 2
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 16)
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 1
  %32 = call i32 @ipv6_addr_type(i32* %31)
  %33 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %17, align 4
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = call %struct.dst_entry* @ip6_route_output(i32* @init_net, i32* null, %struct.flowi6* %19)
  store %struct.dst_entry* %40, %struct.dst_entry** %18, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %39
  %46 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %47 = load %struct.net_device* (%struct.net_device*)*, %struct.net_device* (%struct.net_device*)** %11, align 8
  %48 = bitcast %struct.net_device* (%struct.net_device*)* %47 to %struct.net_device.0* (%struct.net_device.0*)*
  %49 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %50 = call %struct.TYPE_3__* @ip6_dst_idev(%struct.dst_entry* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @cxgb_our_interface(%struct.cxgb4_lld_info* %46, %struct.net_device.0* (%struct.net_device.0*)* %48, %struct.TYPE_4__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %45
  %56 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %57 = call %struct.TYPE_3__* @ip6_dst_idev(%struct.dst_entry* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_LOOPBACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %55, %39
  %66 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %67 = call i32 @dst_release(%struct.dst_entry* %66)
  store %struct.dst_entry* null, %struct.dst_entry** %9, align 8
  br label %71

68:                                               ; preds = %55, %45
  br label %69

69:                                               ; preds = %68, %8
  %70 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  store %struct.dst_entry* %70, %struct.dst_entry** %9, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  ret %struct.dst_entry* %72
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(i32*, i32*, %struct.flowi6*) #1

declare dso_local i32 @cxgb_our_interface(%struct.cxgb4_lld_info*, %struct.net_device.0* (%struct.net_device.0*)*, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_3__* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
