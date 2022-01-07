; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_col_dist_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_col_dist_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_lag_col_dist_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_lag_col_dist_enable(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  %5 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mlxsw_sp_lag_col_port_enable(%struct.mlxsw_sp_port* %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlxsw_sp_lag_dist_port_add(%struct.mlxsw_sp_port* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

24:                                               ; preds = %22
  %25 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlxsw_sp_lag_col_port_disable(%struct.mlxsw_sp_port* %25, i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %23, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mlxsw_sp_lag_col_port_enable(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_lag_dist_port_add(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_lag_col_port_disable(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
