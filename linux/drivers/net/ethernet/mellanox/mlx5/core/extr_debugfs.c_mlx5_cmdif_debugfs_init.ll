; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_mlx5_cmdif_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_mlx5_cmdif_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.mlx5_cmd_stats* }
%struct.mlx5_cmd_stats = type { i32, i8* }
%struct.TYPE_3__ = type { %struct.dentry*, %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"commands\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown command opcode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@stats_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cmdif_debugfs_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_cmd_stats*, align 8
  %4 = alloca %struct.dentry**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store %struct.dentry** %9, %struct.dentry*** %4, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.dentry* %13)
  %15 = bitcast i8* %14 to %struct.dentry*
  %16 = load %struct.dentry**, %struct.dentry*** %4, align 8
  store %struct.dentry* %15, %struct.dentry** %16, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %57, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.mlx5_cmd_stats* %22)
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %17
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %29, i64 %31
  store %struct.mlx5_cmd_stats* %32, %struct.mlx5_cmd_stats** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @mlx5_command_str(i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %25
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.dentry**, %struct.dentry*** %4, align 8
  %41 = load %struct.dentry*, %struct.dentry** %40, align 8
  %42 = call i8* @debugfs_create_dir(i8* %39, %struct.dentry* %41)
  %43 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %3, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 256, i8* %47, %struct.mlx5_cmd_stats* %48, i32* @stats_fops)
  %50 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %53, i32 0, i32 0
  %55 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 256, i8* %52, i32* %54)
  br label %56

56:                                               ; preds = %38, %25
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %17

60:                                               ; preds = %17
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mlx5_cmd_stats*) #1

declare dso_local i8* @mlx5_command_str(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i8*, %struct.mlx5_cmd_stats*, i32*) #1

declare dso_local i32 @debugfs_create_u64(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
