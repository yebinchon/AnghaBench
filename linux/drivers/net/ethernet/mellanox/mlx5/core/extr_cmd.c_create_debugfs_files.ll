; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_create_debugfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_create_debugfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mlx5_cmd_debug }
%struct.mlx5_cmd_debug = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@dfops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"out_len\00", align 1
@olfops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @create_debugfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_debugfs_files(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_cmd_debug*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.mlx5_cmd_debug* %6, %struct.mlx5_cmd_debug** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %18 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %16, %struct.mlx5_core_dev* %17, i32* @dfops)
  %19 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 128, i32 %21, %struct.mlx5_core_dev* %22, i32* @dfops)
  %24 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %28 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %26, %struct.mlx5_core_dev* %27, i32* @olfops)
  %29 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %32, i32 0, i32 1
  %34 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 384, i32 %31, i32* %33)
  %35 = load %struct.mlx5_cmd_debug*, %struct.mlx5_cmd_debug** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_cmd_debug, %struct.mlx5_cmd_debug* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %39 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 128, i32 %37, %struct.mlx5_core_dev* %38, i32* @fops)
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %41 = call i32 @mlx5_cmdif_debugfs_init(%struct.mlx5_core_dev* %40)
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i32, i32*) #1

declare dso_local i32 @mlx5_cmdif_debugfs_init(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
