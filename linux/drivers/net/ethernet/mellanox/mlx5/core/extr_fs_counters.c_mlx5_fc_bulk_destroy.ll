; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_bulk_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_bulk_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fc_bulk = type { i64, %struct.mlx5_fc_bulk*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Freeing bulk before all counters were released\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_fc_bulk*)* @mlx5_fc_bulk_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fc_bulk_destroy(%struct.mlx5_core_dev* %0, %struct.mlx5_fc_bulk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_fc_bulk*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_fc_bulk* %1, %struct.mlx5_fc_bulk** %5, align 8
  %6 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %7 = call i64 @mlx5_fc_bulk_get_free_fcs_amount(%struct.mlx5_fc_bulk* %6)
  %8 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlx5_cmd_fc_free(%struct.mlx5_core_dev* %18, i32 %21)
  %23 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %23, i32 0, i32 1
  %25 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %24, align 8
  %26 = call i32 @kfree(%struct.mlx5_fc_bulk* %25)
  %27 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %28 = call i32 @kfree(%struct.mlx5_fc_bulk* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %17, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @mlx5_fc_bulk_get_free_fcs_amount(%struct.mlx5_fc_bulk*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_cmd_fc_free(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fc_bulk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
