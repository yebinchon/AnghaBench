; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_get_direct_rqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_get_direct_rqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5e_redirect_rqt_param = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, %struct.TYPE_9__*, i64)* @mlx5e_get_direct_rqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_direct_rqn(%struct.mlx5e_priv* %0, i32 %1, %struct.TYPE_9__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_redirect_rqt_param, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.mlx5e_redirect_rqt_param* %6 to { %struct.TYPE_9__*, i64 }*
  %10 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %9, i32 0, i32 0
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  %11 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %9, i32 0, i32 1
  store i64 %3, i64* %11, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  %12 = getelementptr inbounds %struct.mlx5e_redirect_rqt_param, %struct.mlx5e_redirect_rqt_param* %6, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.mlx5e_redirect_rqt_param, %struct.mlx5e_redirect_rqt_param* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.mlx5e_redirect_rqt_param, %struct.mlx5e_redirect_rqt_param* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.mlx5e_redirect_rqt_param, %struct.mlx5e_redirect_rqt_param* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %26, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
