; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_common.c_mlx5e_create_mdev_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_common.c_mlx5e_create_mdev_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5e_resources }
%struct.mlx5e_resources = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"alloc pd failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc td failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"create mkey failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"alloc bfreg failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_create_mdev_resources(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_resources*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  store %struct.mlx5e_resources* %7, %struct.mlx5e_resources** %4, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %9, i32 0, i32 0
  %11 = call i32 @mlx5_core_alloc_pd(%struct.mlx5_core_dev* %8, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %21 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mlx5_core_alloc_transport_domain(%struct.mlx5_core_dev* %20, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %79

31:                                               ; preds = %19
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %36, i32 0, i32 2
  %38 = call i32 @mlx5e_create_mkey(%struct.mlx5_core_dev* %32, i32 %35, i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %72

45:                                               ; preds = %31
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %47 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %47, i32 0, i32 3
  %49 = call i32 @mlx5_alloc_bfreg(%struct.mlx5_core_dev* %46, i32* %48, i32 0, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %67

56:                                               ; preds = %45
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @mutex_init(i32* %65)
  store i32 0, i32* %2, align 4
  br label %86

67:                                               ; preds = %52
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %69 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %69, i32 0, i32 2
  %71 = call i32 @mlx5_core_destroy_mkey(%struct.mlx5_core_dev* %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %41
  %73 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %74 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mlx5_core_dealloc_transport_domain(%struct.mlx5_core_dev* %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %27
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %81 = load %struct.mlx5e_resources*, %struct.mlx5e_resources** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5e_resources, %struct.mlx5e_resources* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mlx5_core_dealloc_pd(%struct.mlx5_core_dev* %80, i32 %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %56, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @mlx5_core_alloc_pd(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_core_alloc_transport_domain(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5e_create_mkey(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_alloc_bfreg(%struct.mlx5_core_dev*, i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlx5_core_destroy_mkey(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_dealloc_transport_domain(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dealloc_pd(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
