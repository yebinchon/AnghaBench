; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_neigh_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_neigh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_sp_nexthop = type { i32, %struct.neighbour*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.neighbour = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlxsw_sp_neigh_entry = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*)* @mlxsw_sp_nexthop_neigh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop_neigh_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %6 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_nexthop* %1, %struct.mlxsw_sp_nexthop** %5, align 8
  %11 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %18, i32 0, i32 1
  %20 = load %struct.neighbour*, %struct.neighbour** %19, align 8
  %21 = icmp ne %struct.neighbour* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %135

23:                                               ; preds = %17
  %24 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %29, i32 0, i32 3
  %31 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.neighbour* @neigh_lookup(i32 %28, i32* %30, i32 %35)
  store %struct.neighbour* %36, %struct.neighbour** %7, align 8
  %37 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %38 = icmp ne %struct.neighbour* %37, null
  br i1 %38, label %62, label %39

39:                                               ; preds = %23
  %40 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %45, i32 0, i32 3
  %47 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.neighbour* @neigh_create(i32 %44, i32* %46, i32 %51)
  store %struct.neighbour* %52, %struct.neighbour** %7, align 8
  %53 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %54 = call i64 @IS_ERR(%struct.neighbour* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.neighbour* %57)
  store i32 %58, i32* %3, align 4
  br label %135

59:                                               ; preds = %39
  %60 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %61 = call i32 @neigh_event_send(%struct.neighbour* %60, i32* null)
  br label %62

62:                                               ; preds = %59, %23
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %64 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %65 = call %struct.neighbour* @mlxsw_sp_neigh_entry_lookup(%struct.mlxsw_sp* %63, %struct.neighbour* %64)
  %66 = bitcast %struct.neighbour* %65 to %struct.mlxsw_sp_neigh_entry*
  store %struct.mlxsw_sp_neigh_entry* %66, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %67 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %68 = icmp ne %struct.mlxsw_sp_neigh_entry* %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %62
  %70 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %72 = call %struct.neighbour* @mlxsw_sp_neigh_entry_create(%struct.mlxsw_sp* %70, %struct.neighbour* %71)
  %73 = bitcast %struct.neighbour* %72 to %struct.mlxsw_sp_neigh_entry*
  store %struct.mlxsw_sp_neigh_entry* %73, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %74 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %75 = bitcast %struct.mlxsw_sp_neigh_entry* %74 to %struct.neighbour*
  %76 = call i64 @IS_ERR(%struct.neighbour* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %131

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %83, i32 0, i32 3
  %85 = call i64 @list_empty(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %88, i32 0, i32 4
  %90 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @list_add_tail(i32* %89, i32* %93)
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %97 = bitcast %struct.mlxsw_sp_neigh_entry* %96 to %struct.neighbour*
  %98 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %98, i32 0, i32 1
  store %struct.neighbour* %97, %struct.neighbour** %99, align 8
  %100 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %100, i32 0, i32 0
  %102 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %6, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %102, i32 0, i32 3
  %104 = call i32 @list_add_tail(i32* %101, i32* %103)
  %105 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %106 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %105, i32 0, i32 2
  %107 = call i32 @read_lock_bh(i32* %106)
  %108 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %109 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %112 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  %114 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %115 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %114, i32 0, i32 2
  %116 = call i32 @read_unlock_bh(i32* %115)
  %117 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @NUD_VALID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %95
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  br label %126

126:                                              ; preds = %122, %95
  %127 = phi i1 [ false, %95 ], [ %125, %122 ]
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @__mlxsw_sp_nexthop_neigh_update(%struct.mlxsw_sp_nexthop* %117, i32 %129)
  store i32 0, i32* %3, align 4
  br label %135

131:                                              ; preds = %78
  %132 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %133 = call i32 @neigh_release(%struct.neighbour* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %126, %56, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.neighbour* @neigh_lookup(i32, i32*, i32) #1

declare dso_local %struct.neighbour* @neigh_create(i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local %struct.neighbour* @mlxsw_sp_neigh_entry_lookup(%struct.mlxsw_sp*, %struct.neighbour*) #1

declare dso_local %struct.neighbour* @mlxsw_sp_neigh_entry_create(%struct.mlxsw_sp*, %struct.neighbour*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @__mlxsw_sp_nexthop_neigh_update(%struct.mlxsw_sp_nexthop*, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
