; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.c_cxgb_find_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.c_cxgb_find_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.cxgb4_lld_info = type { i32 }
%struct.net_device = type opaque
%struct.rtable = type { %struct.dst_entry }
%struct.flowi4 = type { i32 }
%struct.neighbour = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device.0 = type opaque

@init_net = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @cxgb_find_route(%struct.cxgb4_lld_info* %0, %struct.net_device* (%struct.net_device*)* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.cxgb4_lld_info*, align 8
  %10 = alloca %struct.net_device* (%struct.net_device*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca %struct.flowi4, align 4
  %18 = alloca %struct.neighbour*, align 8
  store %struct.cxgb4_lld_info* %0, %struct.cxgb4_lld_info** %9, align 8
  store %struct.net_device* (%struct.net_device*)* %1, %struct.net_device* (%struct.net_device*)** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @IPPROTO_TCP, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call %struct.rtable* @ip_route_output_ports(i32* @init_net, %struct.flowi4* %17, i32* null, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 0)
  store %struct.rtable* %25, %struct.rtable** %16, align 8
  %26 = load %struct.rtable*, %struct.rtable** %16, align 8
  %27 = call i64 @IS_ERR(%struct.rtable* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store %struct.dst_entry* null, %struct.dst_entry** %8, align 8
  br label %66

30:                                               ; preds = %7
  %31 = load %struct.rtable*, %struct.rtable** %16, align 8
  %32 = getelementptr inbounds %struct.rtable, %struct.rtable* %31, i32 0, i32 0
  %33 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %32, i32* %12)
  store %struct.neighbour* %33, %struct.neighbour** %18, align 8
  %34 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %35 = icmp ne %struct.neighbour* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store %struct.dst_entry* null, %struct.dst_entry** %8, align 8
  br label %66

37:                                               ; preds = %30
  %38 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %9, align 8
  %39 = load %struct.net_device* (%struct.net_device*)*, %struct.net_device* (%struct.net_device*)** %10, align 8
  %40 = bitcast %struct.net_device* (%struct.net_device*)* %39 to %struct.net_device.0* (%struct.net_device.0*)*
  %41 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %42 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @cxgb_our_interface(%struct.cxgb4_lld_info* %38, %struct.net_device.0* (%struct.net_device.0*)* %40, %struct.TYPE_2__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %37
  %47 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_LOOPBACK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %57 = call i32 @neigh_release(%struct.neighbour* %56)
  %58 = load %struct.rtable*, %struct.rtable** %16, align 8
  %59 = getelementptr inbounds %struct.rtable, %struct.rtable* %58, i32 0, i32 0
  %60 = call i32 @dst_release(%struct.dst_entry* %59)
  store %struct.dst_entry* null, %struct.dst_entry** %8, align 8
  br label %66

61:                                               ; preds = %46, %37
  %62 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %63 = call i32 @neigh_release(%struct.neighbour* %62)
  %64 = load %struct.rtable*, %struct.rtable** %16, align 8
  %65 = getelementptr inbounds %struct.rtable, %struct.rtable* %64, i32 0, i32 0
  store %struct.dst_entry* %65, %struct.dst_entry** %8, align 8
  br label %66

66:                                               ; preds = %61, %55, %36, %29
  %67 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  ret %struct.dst_entry* %67
}

declare dso_local %struct.rtable* @ip_route_output_ports(i32*, %struct.flowi4*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i32*) #1

declare dso_local i32 @cxgb_our_interface(%struct.cxgb4_lld_info*, %struct.net_device.0* (%struct.net_device.0*)*, %struct.TYPE_2__*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
