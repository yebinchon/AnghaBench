; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_use_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_use_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cmd_use_polling(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %8 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %35, %15
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = call i32 @down(i32* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = call i32 @up(i32* %49)
  %51 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = call i32 @up_write(i32* %53)
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %56 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %38
  %59 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %58, %38
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
