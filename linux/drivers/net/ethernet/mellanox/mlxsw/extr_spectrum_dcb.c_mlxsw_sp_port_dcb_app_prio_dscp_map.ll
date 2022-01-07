; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_app_prio_dscp_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_app_prio_dscp_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.dcb_ieee_app_prio_map = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.dcb_ieee_app_prio_map*)* @mlxsw_sp_port_dcb_app_prio_dscp_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_dcb_app_prio_dscp_map(%struct.mlxsw_sp_port* %0, %struct.dcb_ieee_app_prio_map* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.dcb_ieee_app_prio_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.dcb_ieee_app_prio_map* %1, %struct.dcb_ieee_app_prio_map** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dcb_ieee_app_prio_map*, %struct.dcb_ieee_app_prio_map** %4, align 8
  %11 = call i32 @dcb_ieee_getapp_prio_dscp_mask_map(i32 %9, %struct.dcb_ieee_app_prio_map* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dcb_ieee_app_prio_map*, %struct.dcb_ieee_app_prio_map** %4, align 8
  %15 = getelementptr inbounds %struct.dcb_ieee_app_prio_map, %struct.dcb_ieee_app_prio_map* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i64* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  %20 = load %struct.dcb_ieee_app_prio_map*, %struct.dcb_ieee_app_prio_map** %4, align 8
  %21 = getelementptr inbounds %struct.dcb_ieee_app_prio_map, %struct.dcb_ieee_app_prio_map* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.dcb_ieee_app_prio_map*, %struct.dcb_ieee_app_prio_map** %4, align 8
  %30 = getelementptr inbounds %struct.dcb_ieee_app_prio_map, %struct.dcb_ieee_app_prio_map* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @fls64(i64 %35)
  %37 = sub nsw i64 %36, 1
  %38 = load %struct.dcb_ieee_app_prio_map*, %struct.dcb_ieee_app_prio_map** %4, align 8
  %39 = getelementptr inbounds %struct.dcb_ieee_app_prio_map, %struct.dcb_ieee_app_prio_map* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %28, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %12

48:                                               ; preds = %12
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @dcb_ieee_getapp_prio_dscp_mask_map(i32, %struct.dcb_ieee_app_prio_map*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @fls64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
