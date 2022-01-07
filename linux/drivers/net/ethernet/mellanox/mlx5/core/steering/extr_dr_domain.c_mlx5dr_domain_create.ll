; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32, %struct.TYPE_4__, i32, i32, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@MLX5DR_DOMAIN_TYPE_FDB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed init domain, no caps\0A\00", align 1
@DR_CHUNK_SIZE_4K = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@DR_CHUNK_SIZE_1024K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SW steering is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed init domain resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed initialize domain cache\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_domain* @mlx5dr_domain_create(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MLX5DR_DOMAIN_TYPE_FDB, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.mlx5dr_domain* null, %struct.mlx5dr_domain** %3, align 8
  br label %90

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx5dr_domain* @kzalloc(i32 40, i32 %13)
  store %struct.mlx5dr_domain* %14, %struct.mlx5dr_domain** %6, align 8
  %15 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %16 = icmp ne %struct.mlx5dr_domain* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.mlx5dr_domain* null, %struct.mlx5dr_domain** %3, align 8
  br label %90

18:                                               ; preds = %12
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %20, i32 0, i32 4
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %25, i32 0, i32 3
  %27 = call i32 @refcount_set(i32* %26, i32 1)
  %28 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %28, i32 0, i32 2
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %33 = call i64 @dr_domain_caps_init(%struct.mlx5_core_dev* %31, %struct.mlx5dr_domain* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %37 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %87

38:                                               ; preds = %18
  %39 = load i32, i32* @DR_CHUNK_SIZE_4K, align 4
  %40 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @u32, align 4
  %44 = load i32, i32* @DR_CHUNK_SIZE_1024K, align 4
  %45 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @min_t(i32 %43, i32 %44, i32 %49)
  %51 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %38
  %60 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %61 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %84

62:                                               ; preds = %38
  %63 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %64 = call i32 @dr_domain_init_resources(%struct.mlx5dr_domain* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %69 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %84

70:                                               ; preds = %62
  %71 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %72 = call i32 @dr_domain_init_cache(%struct.mlx5dr_domain* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %77 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %81

78:                                               ; preds = %70
  %79 = call i32 (...) @mlx5dr_crc32_init_table()
  %80 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  store %struct.mlx5dr_domain* %80, %struct.mlx5dr_domain** %3, align 8
  br label %90

81:                                               ; preds = %75
  %82 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %83 = call i32 @dr_domain_uninit_resources(%struct.mlx5dr_domain* %82)
  br label %84

84:                                               ; preds = %81, %67, %59
  %85 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %86 = call i32 @dr_domain_caps_uninit(%struct.mlx5dr_domain* %85)
  br label %87

87:                                               ; preds = %84, %35
  %88 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %89 = call i32 @kfree(%struct.mlx5dr_domain* %88)
  store %struct.mlx5dr_domain* null, %struct.mlx5dr_domain** %3, align 8
  br label %90

90:                                               ; preds = %87, %78, %17, %11
  %91 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  ret %struct.mlx5dr_domain* %91
}

declare dso_local %struct.mlx5dr_domain* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @dr_domain_caps_init(%struct.mlx5_core_dev*, %struct.mlx5dr_domain*) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @mlx5dr_err(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @dr_domain_init_resources(%struct.mlx5dr_domain*) #1

declare dso_local i32 @dr_domain_init_cache(%struct.mlx5dr_domain*) #1

declare dso_local i32 @mlx5dr_crc32_init_table(...) #1

declare dso_local i32 @dr_domain_uninit_resources(%struct.mlx5dr_domain*) #1

declare dso_local i32 @dr_domain_caps_uninit(%struct.mlx5dr_domain*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
