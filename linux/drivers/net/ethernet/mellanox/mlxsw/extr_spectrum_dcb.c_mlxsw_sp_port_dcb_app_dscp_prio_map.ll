; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_app_dscp_prio_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_app_dscp_prio_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.dcb_ieee_app_dscp_map = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, i64, %struct.dcb_ieee_app_dscp_map*)* @mlxsw_sp_port_dcb_app_dscp_prio_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_dcb_app_dscp_prio_map(%struct.mlxsw_sp_port* %0, i64 %1, %struct.dcb_ieee_app_dscp_map* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dcb_ieee_app_dscp_map*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dcb_ieee_app_dscp_map* %2, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %8 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dcb_ieee_app_dscp_map*, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %12 = call i32 @dcb_ieee_getapp_dscp_prio_mask_map(i32 %10, %struct.dcb_ieee_app_dscp_map* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %54, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.dcb_ieee_app_dscp_map*, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %16 = getelementptr inbounds %struct.dcb_ieee_app_dscp_map, %struct.dcb_ieee_app_dscp_map* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i64* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %13
  %21 = load %struct.dcb_ieee_app_dscp_map*, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %22 = getelementptr inbounds %struct.dcb_ieee_app_dscp_map, %struct.dcb_ieee_app_dscp_map* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.dcb_ieee_app_dscp_map*, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %31 = getelementptr inbounds %struct.dcb_ieee_app_dscp_map, %struct.dcb_ieee_app_dscp_map* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @fls(i64 %36)
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.dcb_ieee_app_dscp_map*, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %40 = getelementptr inbounds %struct.dcb_ieee_app_dscp_map, %struct.dcb_ieee_app_dscp_map* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %38, i64* %44, align 8
  br label %53

45:                                               ; preds = %20
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.dcb_ieee_app_dscp_map*, %struct.dcb_ieee_app_dscp_map** %6, align 8
  %48 = getelementptr inbounds %struct.dcb_ieee_app_dscp_map, %struct.dcb_ieee_app_dscp_map* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %29
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %13

57:                                               ; preds = %13
  ret void
}

declare dso_local i32 @dcb_ieee_getapp_dscp_prio_mask_map(i32, %struct.dcb_ieee_app_dscp_map*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
