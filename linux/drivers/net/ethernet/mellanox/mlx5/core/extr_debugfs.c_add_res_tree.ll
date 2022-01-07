; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_add_res_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_add_res_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.dentry = type { i32 }
%struct.mlx5_rsc_debug = type { i32, %struct.TYPE_2__*, i32, i8*, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }

@fields = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, %struct.dentry*, %struct.mlx5_rsc_debug**, i32, i8**, i32, i8*)* @add_res_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_res_tree(%struct.mlx5_core_dev* %0, i32 %1, %struct.dentry* %2, %struct.mlx5_rsc_debug** %3, i32 %4, i8** %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.mlx5_rsc_debug**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mlx5_rsc_debug*, align 8
  %19 = alloca [32 x i8], align 16
  %20 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.dentry* %2, %struct.dentry** %12, align 8
  store %struct.mlx5_rsc_debug** %3, %struct.mlx5_rsc_debug*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8** %5, i8*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %21 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %22 = load i32, i32* @fields, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i32 @struct_size(%struct.mlx5_rsc_debug* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx5_rsc_debug* @kzalloc(i32 %24, i32 %25)
  store %struct.mlx5_rsc_debug* %26, %struct.mlx5_rsc_debug** %18, align 8
  %27 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %28 = icmp ne %struct.mlx5_rsc_debug* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %84

32:                                               ; preds = %8
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %34 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %35 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %34, i32 0, i32 4
  store %struct.mlx5_core_dev* %33, %struct.mlx5_core_dev** %35, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %38 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %41 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %46 = load %struct.dentry*, %struct.dentry** %12, align 8
  %47 = call i32 @debugfs_create_dir(i8* %45, %struct.dentry* %46)
  %48 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %49 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %20, align 4
  br label %50

50:                                               ; preds = %78, %32
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i32, i32* %20, align 4
  %56 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %57 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load i8**, i8*** %15, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %69 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %72 = getelementptr inbounds %struct.mlx5_rsc_debug, %struct.mlx5_rsc_debug* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = call i32 @debugfs_create_file(i8* %67, i32 256, i32 %70, %struct.TYPE_2__* %76, i32* @fops)
  br label %78

78:                                               ; preds = %54
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %20, align 4
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.mlx5_rsc_debug*, %struct.mlx5_rsc_debug** %18, align 8
  %83 = load %struct.mlx5_rsc_debug**, %struct.mlx5_rsc_debug*** %13, align 8
  store %struct.mlx5_rsc_debug* %82, %struct.mlx5_rsc_debug** %83, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %29
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.mlx5_rsc_debug* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mlx5_rsc_debug*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
