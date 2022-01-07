; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_destroy_drop_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_destroy_drop_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_vport = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_vport*)* @esw_vport_destroy_drop_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_vport_destroy_drop_counters(%struct.mlx5_vport* %0) #0 {
  %2 = alloca %struct.mlx5_vport*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_vport* %0, %struct.mlx5_vport** %2, align 8
  %4 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %4, i32 0, i32 2
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mlx5_fc_destroy(%struct.mlx5_core_dev* %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %27 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mlx5_fc_destroy(%struct.mlx5_core_dev* %26, i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @mlx5_fc_destroy(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
