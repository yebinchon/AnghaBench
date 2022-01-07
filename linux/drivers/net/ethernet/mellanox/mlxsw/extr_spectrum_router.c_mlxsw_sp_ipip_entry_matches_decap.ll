; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_matches_decap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_matches_decap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i32, i32, %struct.mlxsw_sp_ipip_entry*)* @mlxsw_sp_ipip_entry_matches_decap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_entry_matches_decap(%struct.mlxsw_sp* %0, %struct.net_device* %1, i32 %2, i32 %3, %struct.mlxsw_sp_ipip_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.mlxsw_sp_l3addr, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.mlxsw_sp_ipip_entry* %4, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %9, align 8
  %16 = call i64 @l3mdev_fib_table(%struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @RT_TABLE_MAIN, align 4
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i64 [ %16, %18 ], [ %21, %19 ]
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %50

42:                                               ; preds = %22
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %47 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlxsw_sp_ipip_entry_saddr_matches(%struct.mlxsw_sp* %43, i32 %44, i32 %48, i32 %45, %struct.mlxsw_sp_ipip_entry* %46)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %42, %41
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @l3mdev_fib_table(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_saddr_matches(%struct.mlxsw_sp*, i32, i32, i32, %struct.mlxsw_sp_ipip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
