; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { i32, %struct.TYPE_6__, i32, %struct.mlx5e_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.ttc_params = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"add hairpin: using %d channels rss ttc table id %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_hairpin*)* @mlx5e_hairpin_rss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_hairpin_rss_init(%struct.mlx5e_hairpin* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_hairpin*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.ttc_params, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %3, align 8
  %7 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %7, i32 0, i32 3
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %4, align 8
  %10 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %11 = call i32 @mlx5e_hairpin_create_indirect_rqt(%struct.mlx5e_hairpin* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %18 = call i32 @mlx5e_hairpin_create_indirect_tirs(%struct.mlx5e_hairpin* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %50

22:                                               ; preds = %16
  %23 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %24 = call i32 @mlx5e_hairpin_set_ttc_params(%struct.mlx5e_hairpin* %23, %struct.ttc_params* %5)
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %26, i32 0, i32 1
  %28 = call i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv* %25, %struct.ttc_params* %5, %struct.TYPE_6__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %47

32:                                               ; preds = %22
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netdev_dbg(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %45)
  store i32 0, i32* %2, align 4
  br label %56

47:                                               ; preds = %31
  %48 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %49 = call i32 @mlx5e_hairpin_destroy_indirect_tirs(%struct.mlx5e_hairpin* %48)
  br label %50

50:                                               ; preds = %47, %21
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %52 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %52, i32 0, i32 0
  %54 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %51, i32* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %32, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mlx5e_hairpin_create_indirect_rqt(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_hairpin_create_indirect_tirs(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_hairpin_set_ttc_params(%struct.mlx5e_hairpin*, %struct.ttc_params*) #1

declare dso_local i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv*, %struct.ttc_params*, %struct.TYPE_6__*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_hairpin_destroy_indirect_tirs(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
