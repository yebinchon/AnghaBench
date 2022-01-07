; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_load_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_load_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX5_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"interface is up, NOP\0A\00", align 1
@MLX5_DEVICE_STATE_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"sw objs init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"register device failed %d\0A\00", align 1
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @mlx5_load_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_load_one(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = call i32 @mlx5_read_embedded_cpu(%struct.mlx5_core_dev* %7)
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %22 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* @MLX5_DEVICE_STATE_UP, align 4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mlx5_function_setup(%struct.mlx5_core_dev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %73

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %38 = call i32 @mlx5_init_once(%struct.mlx5_core_dev* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %43 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %88

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %47 = call i32 @mlx5_load(%struct.mlx5_core_dev* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %81

51:                                               ; preds = %45
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %53 = call i64 @mlx5_device_registered(%struct.mlx5_core_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %57 = call i32 @mlx5_attach_device(%struct.mlx5_core_dev* %56)
  br label %68

58:                                               ; preds = %51
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %60 = call i32 @mlx5_register_device(%struct.mlx5_core_dev* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %78

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %70, i32 0, i32 2
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %32, %20
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %99

78:                                               ; preds = %63
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %80 = call i32 @mlx5_unload(%struct.mlx5_core_dev* %79)
  br label %81

81:                                               ; preds = %78, %50
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %86 = call i32 @mlx5_cleanup_once(%struct.mlx5_core_dev* %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %41
  %89 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @mlx5_function_teardown(%struct.mlx5_core_dev* %89, i32 %90)
  %92 = load i32, i32* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 4
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %88, %73
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @mlx5_read_embedded_cpu(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_function_setup(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_init_once(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_load(%struct.mlx5_core_dev*) #1

declare dso_local i64 @mlx5_device_registered(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_attach_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_register_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_unload(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_once(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_function_teardown(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
