; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c___mlxsw_sp_mc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c___mlxsw_sp_mc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mid = type { i32, %struct.mlxsw_sp_mid*, i32, i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_mid* (%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, i8*, i32)* @__mlxsw_sp_mc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_alloc(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_bridge_device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_mid*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_mid*, align 8
  %11 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_bridge_device* %1, %struct.mlxsw_sp_bridge_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i64 32, i32 %12)
  %14 = bitcast i8* %13 to %struct.mlxsw_sp_mid*
  store %struct.mlxsw_sp_mid* %14, %struct.mlxsw_sp_mid** %10, align 8
  %15 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %16 = icmp ne %struct.mlxsw_sp_mid* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.mlxsw_sp_mid* null, %struct.mlxsw_sp_mid** %5, align 8
  br label %76

18:                                               ; preds = %4
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlxsw_core_max_ports(i32 %21)
  %23 = call i32 @BITS_TO_LONGS(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i64 %26, i32 %27)
  %29 = bitcast i8* %28 to %struct.mlxsw_sp_mid*
  %30 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %30, i32 0, i32 1
  store %struct.mlxsw_sp_mid* %29, %struct.mlxsw_sp_mid** %31, align 8
  %32 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %32, i32 0, i32 1
  %34 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %33, align 8
  %35 = icmp ne %struct.mlxsw_sp_mid* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  br label %73

37:                                               ; preds = %18
  %38 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @ether_addr_copy(i32 %40, i8* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %61

53:                                               ; preds = %37
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %55 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %56 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %57 = call i32 @mlxsw_sp_mc_write_mdb_entry(%struct.mlxsw_sp* %54, %struct.mlxsw_sp_mid* %55, %struct.mlxsw_sp_bridge_device* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  %62 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %62, i32 0, i32 2
  %64 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %64, i32 0, i32 0
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  store %struct.mlxsw_sp_mid* %67, %struct.mlxsw_sp_mid** %5, align 8
  br label %76

68:                                               ; preds = %59
  %69 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %69, i32 0, i32 1
  %71 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %70, align 8
  %72 = call i32 @kfree(%struct.mlxsw_sp_mid* %71)
  br label %73

73:                                               ; preds = %68, %36
  %74 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %10, align 8
  %75 = call i32 @kfree(%struct.mlxsw_sp_mid* %74)
  store %struct.mlxsw_sp_mid* null, %struct.mlxsw_sp_mid** %5, align 8
  br label %76

76:                                               ; preds = %73, %61, %17
  %77 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  ret %struct.mlxsw_sp_mid* %77
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_mc_write_mdb_entry(%struct.mlxsw_sp*, %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_bridge_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_mid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
