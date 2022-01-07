; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_queue_bond_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_queue_bond_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_bond = type { i32, i32, %struct.TYPE_3__, %struct.mlx4_en_priv* }
%struct.TYPE_3__ = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlx4_en_bond_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i32, i8*, i8*)* @mlx4_en_queue_bond_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_queue_bond_work(%struct.mlx4_en_priv* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx4_en_bond*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.mlx4_en_bond* null, %struct.mlx4_en_bond** %10, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.mlx4_en_bond* @kzalloc(i32 32, i32 %11)
  store %struct.mlx4_en_bond* %12, %struct.mlx4_en_bond** %10, align 8
  %13 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %14 = icmp ne %struct.mlx4_en_bond* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %49

18:                                               ; preds = %4
  %19 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_bond, %struct.mlx4_en_bond* %19, i32 0, i32 1
  %21 = load i32, i32* @mlx4_en_bond_work, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %24 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_bond, %struct.mlx4_en_bond* %24, i32 0, i32 3
  store %struct.mlx4_en_priv* %23, %struct.mlx4_en_priv** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_bond, %struct.mlx4_en_bond* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_bond, %struct.mlx4_en_bond* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_bond, %struct.mlx4_en_bond* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_hold(i32 %39)
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx4_en_bond*, %struct.mlx4_en_bond** %10, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_bond, %struct.mlx4_en_bond* %46, i32 0, i32 1
  %48 = call i32 @queue_work(i32 %45, i32* %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %18, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.mlx4_en_bond* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
