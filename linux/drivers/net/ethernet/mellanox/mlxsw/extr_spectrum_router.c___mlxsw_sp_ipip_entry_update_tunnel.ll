; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_ipip_entry_update_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_ipip_entry_update_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_ipip_entry* %1, i32 %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp_ipip_entry* %1, %struct.mlxsw_sp_ipip_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %15 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %21 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %22 = call i32 @mlxsw_sp_ipip_entry_demote_decap(%struct.mlxsw_sp* %20, %struct.mlxsw_sp_ipip_entry* %21)
  br label %23

23:                                               ; preds = %19, %6
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %28 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %31 = call i32 @mlxsw_sp_ipip_entry_ol_lb_update(%struct.mlxsw_sp* %27, %struct.mlxsw_sp_ipip_entry* %28, i32 %29, %struct.netlink_ext_ack* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %62

36:                                               ; preds = %26
  br label %48

37:                                               ; preds = %23
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %42 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @mlxsw_sp_nexthop_rif_update(%struct.mlxsw_sp* %41, i32* %45)
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_UP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %59 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %60 = call i32 @mlxsw_sp_ipip_entry_ol_up_event(%struct.mlxsw_sp* %58, %struct.mlxsw_sp_ipip_entry* %59)
  br label %61

61:                                               ; preds = %57, %48
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @mlxsw_sp_ipip_entry_demote_decap(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_ol_lb_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_nexthop_rif_update(%struct.mlxsw_sp*, i32*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_ol_up_event(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
