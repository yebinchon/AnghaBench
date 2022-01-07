; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_catas.c_poll_catas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_catas.c_poll_catas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.mlx4_dev }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@catas_err = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [54 x i8] c"Internal error detected on the communication channel\0A\00", align 1
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Internal error mark was detected on device\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MLX4_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8
@mlx4_internal_err_reset = common dso_local global i64 0, align 8
@priv = common dso_local global %struct.mlx4_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @poll_catas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_catas(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %7 = ptrtoint %struct.mlx4_priv* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @catas_err, i32 0, i32 0), align 4
  %10 = call %struct.mlx4_priv* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %3, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 2
  store %struct.mlx4_dev* %12, %struct.mlx4_dev** %4, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i64 @readl(i32* %21)
  %23 = call i32 @swab32(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @mlx4_comm_internal_err(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %29 = call i32 @mlx4_warn(%struct.mlx4_dev* %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %63

30:                                               ; preds = %16
  br label %42

31:                                               ; preds = %1
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @readl(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = call i32 @dump_err_buf(%struct.mlx4_dev* %39)
  br label %63

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %53 = call i32 @mlx4_warn(%struct.mlx4_dev* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %63

54:                                               ; preds = %42
  %55 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @round_jiffies(i64 %60)
  %62 = call i32 @mod_timer(i32* %57, i32 %61)
  br label %77

63:                                               ; preds = %51, %38, %27
  %64 = load i64, i64* @mlx4_internal_err_reset, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = call i32 @queue_work(i32 %71, i32* %75)
  br label %77

77:                                               ; preds = %54, %66, %63
  ret void
}

declare dso_local %struct.mlx4_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @swab32(i64) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @mlx4_comm_internal_err(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @dump_err_buf(%struct.mlx4_dev*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
