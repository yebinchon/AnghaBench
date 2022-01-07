; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh_entry_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh_entry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_neigh_entry = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@NTF_OFFLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_neigh_entry*, i32)* @mlxsw_sp_neigh_entry_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_neigh_entry_update(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_neigh_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_neigh_entry* %1, %struct.mlxsw_sp_neigh_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @mlxsw_sp_rauht_op(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %92

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %19
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %35 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mlxsw_sp_router_neigh_entry_op4(%struct.mlxsw_sp* %34, %struct.mlxsw_sp_neigh_entry* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %92

41:                                               ; preds = %33
  br label %70

42:                                               ; preds = %19
  %43 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_INET6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %55 = call i64 @mlxsw_sp_neigh_ipv6_ignore(%struct.mlxsw_sp_neigh_entry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %92

58:                                               ; preds = %53
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %60 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mlxsw_sp_router_neigh_entry_op6(%struct.mlxsw_sp* %59, %struct.mlxsw_sp_neigh_entry* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %92

66:                                               ; preds = %58
  br label %69

67:                                               ; preds = %42
  %68 = call i32 @WARN_ON_ONCE(i32 1)
  br label %92

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %41
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* @NTF_OFFLOADED, align 4
  %75 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %74
  store i32 %81, i32* %79, align 8
  br label %92

82:                                               ; preds = %70
  %83 = load i32, i32* @NTF_OFFLOADED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %84
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %18, %40, %57, %65, %67, %82, %73
  ret void
}

declare dso_local i32 @mlxsw_sp_rauht_op(i32) #1

declare dso_local i32 @mlxsw_sp_router_neigh_entry_op4(%struct.mlxsw_sp*, %struct.mlxsw_sp_neigh_entry*, i32) #1

declare dso_local i64 @mlxsw_sp_neigh_ipv6_ignore(%struct.mlxsw_sp_neigh_entry*) #1

declare dso_local i32 @mlxsw_sp_router_neigh_entry_op6(%struct.mlxsw_sp*, %struct.mlxsw_sp_neigh_entry*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
