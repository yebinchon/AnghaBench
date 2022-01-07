; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_netdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_netdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.softing = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.softing_priv = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_10__, %struct.softing*, %struct.net_device* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@TX_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"alloc_candev failed\0A\00", align 1
@softing_btr_const = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@softing_netdev_ops = common dso_local global i32 0, align 4
@softing_candev_set_mode = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.softing*, i32)* @softing_netdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @softing_netdev_create(%struct.softing* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.softing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.softing_priv*, align 8
  store %struct.softing* %0, %struct.softing** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TX_ECHO_SKB_MAX, align 4
  %9 = call %struct.net_device* @alloc_candev(i32 56, i32 %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.softing*, %struct.softing** %4, align 8
  %14 = getelementptr inbounds %struct.softing, %struct.softing* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i32 @dev_alert(i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.softing_priv* %20, %struct.softing_priv** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %23 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %22, i32 0, i32 5
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.softing*, %struct.softing** %4, align 8
  %25 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %26 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %25, i32 0, i32 4
  store %struct.softing* %24, %struct.softing** %26, align 8
  %27 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %28 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %27, i32 0, i32 3
  %29 = call i32 @memcpy(%struct.TYPE_10__* %28, i32* @softing_btr_const, i32 8)
  %30 = load %struct.softing*, %struct.softing** %4, align 8
  %31 = getelementptr inbounds %struct.softing, %struct.softing* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %36 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.softing*, %struct.softing** %4, align 8
  %39 = getelementptr inbounds %struct.softing, %struct.softing* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %44 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %47 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %46, i32 0, i32 3
  %48 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %49 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %52 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 8000000, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %57 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call i32 @softing_default_output(%struct.net_device* %58)
  %60 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %61 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.softing*, %struct.softing** %4, align 8
  %64 = getelementptr inbounds %struct.softing, %struct.softing* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @SET_NETDEV_DEV(%struct.net_device* %62, i32* %66)
  %68 = load i32, i32* @IFF_ECHO, align 4
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  store i32* @softing_netdev_ops, i32** %74, align 8
  %75 = load i32, i32* @softing_candev_set_mode, align 4
  %76 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %77 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %80 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %81 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %83, %struct.net_device** %3, align 8
  br label %84

84:                                               ; preds = %18, %12
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %85
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_alert(i32*, i8*) #1

declare dso_local %struct.softing_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @softing_default_output(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
