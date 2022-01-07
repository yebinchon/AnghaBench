; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_per_port_buffer_congest_fill_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_per_port_buffer_congest_fill_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@sbcam_reg = common dso_local global i32 0, align 4
@NUM_PPORT_PRIO = common dso_local global i32 0, align 4
@NUM_PPORT_PER_TC_PRIO_COUNTERS = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@pport_per_tc_prio_stats_desc = common dso_local global %struct.TYPE_3__* null, align 8
@NUM_PPORT_PER_TC_CONGEST_PRIO_COUNTERS = common dso_local global i32 0, align 4
@pport_per_tc_congest_prio_stats_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_per_port_buffer_congest_fill_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_per_port_buffer_congest_fill_strings(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %8, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %15 = load i32, i32* @sbcam_reg, align 4
  %16 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %74, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @NUM_PPORT_PRIO, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @NUM_PPORT_PER_TC_PRIO_COUNTERS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %35 = mul nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pport_per_tc_prio_stats_desc, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @sprintf(i32* %37, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NUM_PPORT_PER_TC_CONGEST_PRIO_COUNTERS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = mul nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pport_per_tc_congest_prio_stats_desc, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @sprintf(i32* %61, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %21

77:                                               ; preds = %21
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
