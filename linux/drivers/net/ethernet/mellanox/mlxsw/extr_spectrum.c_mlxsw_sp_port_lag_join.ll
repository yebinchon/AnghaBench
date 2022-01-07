; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.TYPE_2__*, i32, i32, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i64 }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_upper = type { i32, %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.net_device*)* @mlxsw_sp_port_lag_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_lag_join(%struct.mlxsw_sp_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_upper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %6, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @mlxsw_sp_lag_index_get(%struct.mlxsw_sp* %14, %struct.net_device* %15, i32* %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %99

21:                                               ; preds = %2
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.mlxsw_sp_upper* @mlxsw_sp_lag_get(%struct.mlxsw_sp* %22, i32 %23)
  store %struct.mlxsw_sp_upper* %24, %struct.mlxsw_sp_upper** %7, align 8
  %25 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mlxsw_sp_lag_create(%struct.mlxsw_sp* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %99

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %39, i32 0, i32 1
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  br label %41

41:                                               ; preds = %37, %21
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlxsw_sp_port_lag_index_get(%struct.mlxsw_sp* %42, i32 %43, i32* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %99

49:                                               ; preds = %41
  %50 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mlxsw_sp_lag_col_port_add(%struct.mlxsw_sp_port* %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %88

57:                                               ; preds = %49
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mlxsw_core_lag_mapping_set(i32 %60, i32 %61, i32 %62, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %57
  %83 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = call i32 @mlxsw_sp_port_vlan_router_leave(%struct.TYPE_2__* %85)
  br label %87

87:                                               ; preds = %82, %57
  store i32 0, i32* %3, align 4
  br label %99

88:                                               ; preds = %56
  %89 = load %struct.mlxsw_sp_upper*, %struct.mlxsw_sp_upper** %7, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_upper, %struct.mlxsw_sp_upper* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mlxsw_sp_lag_destroy(%struct.mlxsw_sp* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %87, %47, %35, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @mlxsw_sp_lag_index_get(%struct.mlxsw_sp*, %struct.net_device*, i32*) #1

declare dso_local %struct.mlxsw_sp_upper* @mlxsw_sp_lag_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_lag_create(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_port_lag_index_get(%struct.mlxsw_sp*, i32, i32*) #1

declare dso_local i32 @mlxsw_sp_lag_col_port_add(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_core_lag_mapping_set(i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_router_leave(%struct.TYPE_2__*) #1

declare dso_local i32 @mlxsw_sp_lag_destroy(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
