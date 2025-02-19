; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_stats.c_mlx5e_ipsec_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_stats.c_mlx5e_ipsec_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_priv = type { i32 }

@NUM_IPSEC_HW_COUNTERS = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@mlx5e_ipsec_hw_stats_desc = common dso_local global %struct.TYPE_4__* null, align 8
@NUM_IPSEC_SW_COUNTERS = common dso_local global i32 0, align 4
@mlx5e_ipsec_sw_stats_desc = common dso_local global %struct.TYPE_3__* null, align 8
@NUM_IPSEC_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ipsec_get_strings(%struct.mlx5e_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NUM_IPSEC_HW_COUNTERS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %23 = mul i32 %20, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mlx5e_ipsec_hw_stats_desc, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i32* %25, i32 %31)
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NUM_IPSEC_SW_COUNTERS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %46 = mul i32 %43, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mlx5e_ipsec_sw_stats_desc, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32* %48, i32 %54)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load i32, i32* @NUM_IPSEC_COUNTERS, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @strcpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
