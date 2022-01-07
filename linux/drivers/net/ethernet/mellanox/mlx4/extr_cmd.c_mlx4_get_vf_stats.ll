; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_get_vf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_get_vf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.ifla_vf_stats = type { i8*, i8*, i8*, i8* }
%struct.mlx4_counter = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_vf_stats(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.ifla_vf_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifla_vf_stats*, align 8
  %10 = alloca %struct.mlx4_counter, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ifla_vf_stats* %3, %struct.ifla_vf_stats** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %14 = icmp ne %struct.ifla_vf_stats* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %72

18:                                               ; preds = %4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %20 = call i32 @mlx4_is_master(%struct.mlx4_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EPROTONOSUPPORT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %72

25:                                               ; preds = %18
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %72

34:                                               ; preds = %25
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mlx4_calc_vf_counters(%struct.mlx4_dev* %39, i32 %40, i32 %41, %struct.mlx4_counter* %10)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %10, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @be64_to_cpu(i32 %51)
  %53 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %54 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %10, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @be64_to_cpu(i32 %56)
  %58 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %59 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be64_to_cpu(i32 %61)
  %63 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %64 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @be64_to_cpu(i32 %66)
  %68 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %69 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %49, %45, %34
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %31, %22, %15
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_calc_vf_counters(%struct.mlx4_dev*, i32, i32, %struct.mlx4_counter*) #1

declare dso_local i8* @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
