; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_mlx5_init_rl_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_mlx5_init_rl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_rl_table }
%struct.mlx5_rl_table = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@qos = common dso_local global i32 0, align 4
@packet_pacing = common dso_local global i32 0, align 4
@packet_pacing_rate_table_size = common dso_local global i32 0, align 4
@packet_pacing_max_rate = common dso_local global i32 0, align 4
@packet_pacing_min_rate = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Rate limit: %u rates are supported, range: %uMbps to %uMbps\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_init_rl_table(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_rl_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.mlx5_rl_table* %8, %struct.mlx5_rl_table** %4, align 8
  %9 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %9, i32 0, i32 4
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = load i32, i32* @qos, align 4
  %14 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = load i32, i32* @packet_pacing, align 4
  %19 = call i8* @MLX5_CAP_QOS(%struct.mlx5_core_dev* %17, i32 %18)
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  store i32 0, i32* %2, align 4
  br label %92

24:                                               ; preds = %16
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = load i32, i32* @packet_pacing_rate_table_size, align 4
  %27 = call i8* @MLX5_CAP_QOS(%struct.mlx5_core_dev* %25, i32 %26)
  %28 = getelementptr i8, i8* %27, i64 -1
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i32, i32* @packet_pacing_max_rate, align 4
  %34 = call i8* @MLX5_CAP_QOS(%struct.mlx5_core_dev* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = load i32, i32* @packet_pacing_min_rate, align 4
  %40 = call i8* @MLX5_CAP_QOS(%struct.mlx5_core_dev* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.TYPE_4__* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %49, i32 0, i32 3
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %24
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %92

58:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %80 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 10
  %87 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 10
  %91 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %79, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %86, i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %78, %55, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @MLX5_CAP_QOS(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
