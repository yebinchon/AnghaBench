; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_cxgb4_select_ntuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_cxgb4_select_ntuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.l2t_entry = type { i32, i64 }
%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tp_params }
%struct.tp_params = type { i32, i32, i32, i64, i32 }
%struct.port_info = type { i32, i32 }

@VLAN_NONE = common dso_local global i32 0, align 4
@FT_VLAN_VLD_F = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@VNIC_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_select_ntuple(%struct.net_device* %0, %struct.l2t_entry* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.tp_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.l2t_entry* %1, %struct.l2t_entry** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.tp_params* %13, %struct.tp_params** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %15 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %20 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VLAN_NONE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32, i32* @FT_VLAN_VLD_F, align 4
  %26 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %27 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %25, %28
  %30 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %31 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %24, %18, %2
  %37 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %38 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %43 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %47 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %45, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %41, %36
  %53 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %54 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i64, i64* @IPPROTO_TCP, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %61 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %59, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %68 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %66
  %72 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %73 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VNIC_F, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %71
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i64 @netdev_priv(%struct.net_device* %79)
  %81 = inttoptr i64 %80 to %struct.port_info*
  store %struct.port_info* %81, %struct.port_info** %8, align 8
  %82 = load %struct.port_info*, %struct.port_info** %8, align 8
  %83 = getelementptr inbounds %struct.port_info, %struct.port_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @FT_VNID_ID_VF_V(i32 %84)
  %86 = load %struct.adapter*, %struct.adapter** %5, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @FT_VNID_ID_PF_V(i32 %88)
  %90 = or i32 %85, %89
  %91 = load %struct.port_info*, %struct.port_info** %8, align 8
  %92 = getelementptr inbounds %struct.port_info, %struct.port_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FT_VNID_ID_VLD_V(i32 %93)
  %95 = or i32 %90, %94
  %96 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %97 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %95, %99
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %78, %71, %66
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @FT_VNID_ID_VF_V(i32) #1

declare dso_local i32 @FT_VNID_ID_PF_V(i32) #1

declare dso_local i32 @FT_VNID_ID_VLD_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
