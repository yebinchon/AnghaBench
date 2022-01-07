; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_init_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_init_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32**, %struct.mlx5i_priv* }
%struct.mlx5i_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"create underlay QP failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"create tis failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5i_init_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_init_tx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5i_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 2
  %8 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %7, align 8
  store %struct.mlx5i_priv* %8, %struct.mlx5i_priv** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %12, i32 0, i32 0
  %14 = call i32 @mlx5i_create_underlay_qp(i32 %11, %struct.TYPE_3__* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mlx5_core_warn(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @mlx5i_create_tis(i32 %27, i32 %31, i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mlx5_core_warn(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %48

47:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %56

48:                                               ; preds = %41
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %52, i32 0, i32 0
  %54 = call i32 @mlx5i_destroy_underlay_qp(i32 %51, %struct.TYPE_3__* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %47, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mlx5i_create_underlay_qp(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @mlx5i_create_tis(i32, i32, i32*) #1

declare dso_local i32 @mlx5i_destroy_underlay_qp(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
