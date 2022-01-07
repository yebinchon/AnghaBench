; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_mdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_mdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_priv, i32, i32, i32* }
%struct.mlx5_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@profile = common dso_local global i32* null, align 8
@mlx5_debugfs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"mlx5_core: error, Cannot create debugfs dir, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @mlx5_mdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_mdev_init(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  store %struct.mlx5_priv* %9, %struct.mlx5_priv** %6, align 8
  %10 = load i32*, i32** @profile, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %19, i32 0, i32 6
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %22, i32 0, i32 2
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %45, i32 0, i32 4
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %48, i32 0, i32 3
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %54, i32 0, i32 1
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_name(i32 %59)
  %61 = load i32, i32* @mlx5_debugfs_root, align 4
  %62 = call i32 @debugfs_create_dir(i32 %60, i32 %61)
  %63 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %64 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %2
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %99

76:                                               ; preds = %2
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %78 = call i32 @mlx5_health_init(%struct.mlx5_core_dev* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %92

82:                                               ; preds = %76
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %84 = call i32 @mlx5_pagealloc_init(%struct.mlx5_core_dev* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %99

89:                                               ; preds = %87
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %91 = call i32 @mlx5_health_cleanup(%struct.mlx5_core_dev* %90)
  br label %92

92:                                               ; preds = %89, %81
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @debugfs_remove(i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %88, %69
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mlx5_health_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pagealloc_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_health_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
