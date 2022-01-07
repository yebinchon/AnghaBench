; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_mc_write_mdb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_mc_write_mdb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_mid = type { i32, i32, i32, i64, i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }

@MLXSW_SP_MID_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_bridge_device*)* @mlxsw_sp_mc_write_mdb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mc_write_mdb_entry(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_mid* %1, %struct.mlxsw_sp_bridge_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_mid*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_mid* %1, %struct.mlxsw_sp_mid** %6, align 8
  store %struct.mlxsw_sp_bridge_device* %2, %struct.mlxsw_sp_bridge_device** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @MLXSW_SP_MID_MAX, align 8
  %19 = call i64 @find_first_zero_bit(i32 %17, i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @MLXSW_SP_MID_MAX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mlxsw_core_max_ports(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @BITS_TO_LONGS(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64* @kzalloc(i32 %34, i32 %35)
  store i64* %36, i64** %8, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %89

40:                                               ; preds = %24
  %41 = load i64*, i64** %8, align 8
  %42 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @bitmap_copy(i64* %41, i32 %44, i32 %45)
  %47 = load i64*, i64** %8, align 8
  %48 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %50 = call i32 @mlxsw_sp_mc_get_mrouters_bitmap(i64* %47, %struct.mlxsw_sp_bridge_device* %48, %struct.mlxsw_sp* %49)
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlxsw_sp_port_smid_full_entry(%struct.mlxsw_sp* %54, i64 %55, i64* %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i64*, i64** %8, align 8
  %62 = call i32 @kfree(i64* %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %89

66:                                               ; preds = %40
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %68 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @mlxsw_sp_port_mdb_op(%struct.mlxsw_sp* %67, i32 %70, i32 %73, i64 %74, i32 1)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %89

79:                                               ; preds = %66
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @set_bit(i64 %80, i32 %85)
  %87 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %78, %65, %39, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_copy(i64*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_mc_get_mrouters_bitmap(i64*, %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_port_smid_full_entry(%struct.mlxsw_sp*, i64, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @mlxsw_sp_port_mdb_op(%struct.mlxsw_sp*, i32, i32, i64, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
