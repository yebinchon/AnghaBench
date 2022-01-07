; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_recover_from_oom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_recover_from_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.TYPE_2__**, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_recover_from_oom(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %4 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %42

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %39, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mlx4_en_is_ring_empty(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = call i32 (...) @local_bh_disable()
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @napi_reschedule(i32* %35)
  %37 = call i32 (...) @local_bh_enable()
  br label %38

38:                                               ; preds = %26, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %10

42:                                               ; preds = %8, %10
  ret void
}

declare dso_local i64 @mlx4_en_is_ring_empty(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @napi_reschedule(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
