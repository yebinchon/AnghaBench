; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_catas.c_mlx4_start_catas_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_catas.c_mlx4_start_catas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@poll_catas = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to map internal error buffer at 0x%llx\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MLX4_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_start_catas_poll(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %3, align 8
  %7 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* @poll_catas, align 4
  %15 = call i32 @timer_setup(%struct.TYPE_9__* %13, i32 %14, i32 0)
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %20 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %1
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @pci_resource_start(i32 %27, i32 %31)
  %33 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 4
  %44 = call i32* @ioremap(i64 %38, i32 %43)
  %45 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32* %44, i32** %47, align 8
  %48 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %22
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @mlx4_warn(%struct.mlx4_dev* %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %71

57:                                               ; preds = %22
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @round_jiffies(i64 %61)
  %63 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @add_timer(%struct.TYPE_9__* %69)
  br label %71

71:                                               ; preds = %58, %53
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
