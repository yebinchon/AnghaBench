; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i64, i32, i32, i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_upper = type { i32 }

@MLXSW_SP_DEFAULT_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.net_device*)* @mlxsw_sp_port_lag_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_lag_leave(%struct.mlxsw_sp_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_upper*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %8, i32 0, i32 4
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp* %10, %struct.mlxsw_sp** %5, align 8
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.mlxsw_sp_upper* @mlxsw_sp_lag_get(%struct.mlxsw_sp* %20, i32 %21)
  store %struct.mlxsw_sp_upper* %22, %struct.mlxsw_sp_upper** %7, align 8
  %23 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mlxsw_sp_lag_col_port_remove(%struct.mlxsw_sp_port* %29, i32 %30)
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %33 = call i32 @mlxsw_sp_port_vlan_flush(%struct.mlxsw_sp_port* %32, i32 0)
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlxsw_sp_port_vlan_cleanup(i32 %36)
  %38 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @mlxsw_sp_port_lag_uppers_cleanup(%struct.mlxsw_sp_port* %38, %struct.net_device* %39)
  %41 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %19
  %46 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mlxsw_sp_lag_destroy(%struct.mlxsw_sp* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %19
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mlxsw_core_lag_mapping_clear(i32 %52, i32 %53, i32 %56)
  %58 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %65 = load i32, i32* @MLXSW_SP_DEFAULT_VID, align 4
  %66 = call i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port* %64, i32 %65)
  br label %67

67:                                               ; preds = %49, %18
  ret void
}

declare dso_local %struct.mlxsw_sp_upper* @mlxsw_sp_lag_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_lag_col_port_remove(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_flush(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_cleanup(i32) #1

declare dso_local i32 @mlxsw_sp_port_lag_uppers_cleanup(%struct.mlxsw_sp_port*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_lag_destroy(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_core_lag_mapping_clear(i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
