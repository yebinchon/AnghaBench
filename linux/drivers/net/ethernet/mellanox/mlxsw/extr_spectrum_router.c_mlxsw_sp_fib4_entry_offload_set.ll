; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_offload_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_offload_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_entry = type { i64, %struct.mlxsw_sp_nexthop_group* }
%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop* }
%struct.mlxsw_sp_nexthop = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLXSW_SP_FIB_ENTRY_TYPE_LOCAL = common dso_local global i64 0, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE = common dso_local global i64 0, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP = common dso_local global i64 0, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP = common dso_local global i64 0, align 8
@RTNH_F_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_fib_entry*)* @mlxsw_sp_fib4_entry_offload_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib4_entry_offload_set(%struct.mlxsw_sp_fib_entry* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %3 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_nexthop*, align 8
  store %struct.mlxsw_sp_fib_entry* %0, %struct.mlxsw_sp_fib_entry** %2, align 8
  %6 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  store %struct.mlxsw_sp_nexthop_group* %8, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %9 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %2, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MLXSW_SP_FIB_ENTRY_TYPE_LOCAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %2, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26, %20, %14, %1
  %33 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %34 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %34, i32 0, i32 1
  %36 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %35, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %33
  store i32 %42, i32* %40, align 4
  br label %84

43:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %81, %43
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %51, i32 0, i32 1
  %53 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %53, i64 %55
  store %struct.mlxsw_sp_nexthop* %56, %struct.mlxsw_sp_nexthop** %5, align 8
  %57 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %63 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %62
  store i32 %69, i32* %67, align 4
  br label %80

70:                                               ; preds = %50
  %71 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %72
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %70, %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %44

84:                                               ; preds = %32, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
