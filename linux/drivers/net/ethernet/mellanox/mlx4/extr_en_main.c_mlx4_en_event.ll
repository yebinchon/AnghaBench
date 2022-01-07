; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_main.c_mlx4_en_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_main.c_mlx4_en_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_en_dev = type { i32*, i32 }
%struct.mlx4_en_priv = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Internal error detected, restarting device\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unhandled event %d for port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i8*, i32, i64)* @mlx4_en_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_event(%struct.mlx4_dev* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.mlx4_en_dev*
  store %struct.mlx4_en_dev* %12, %struct.mlx4_en_dev** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %44 [
    i32 130, label %14
    i32 131, label %14
    i32 132, label %40
    i32 129, label %43
    i32 128, label %43
  ]

14:                                               ; preds = %4, %4
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %69

23:                                               ; preds = %14
  %24 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.mlx4_en_priv* @netdev_priv(i32 %29)
  store %struct.mlx4_en_priv* %30, %struct.mlx4_en_priv** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 1
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  br label %69

40:                                               ; preds = %4
  %41 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %42 = call i32 @mlx4_err(%struct.mlx4_en_dev* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %69

43:                                               ; preds = %4, %4
  br label %69

44:                                               ; preds = %4
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %45, 1
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %50 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %48, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54, %47, %44
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i64, i64* %8, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @mlx4_warn(%struct.mlx4_en_dev* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %22, %62, %63, %43, %40, %23
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_en_dev*, i8*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_en_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
