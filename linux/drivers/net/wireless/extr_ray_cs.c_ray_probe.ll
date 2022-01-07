; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_ray_cs.c_ray_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_ray_cs.c_ray_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.net_device*, i32, %struct.TYPE_5__** }
%struct.net_device = type { %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i64, i32, i32, %struct.pcmcia_device* }

@.str = private unnamed_addr constant [14 x i8] c"ray_attach()\0A\00", align 1
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CARD_INSERTED = common dso_local global i32 0, align 4
@UNAUTHENTICATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"ray_attach p_dev = %p,  dev = %p,  local = %p, intr = %p\0A\00", align 1
@ray_interrupt = common dso_local global i32 0, align 4
@ray_netdev_ops = common dso_local global i32 0, align 4
@ray_handler_def = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"ray_cs ray_attach calling ether_setup.)\0A\00", align 1
@this_device = common dso_local global %struct.pcmcia_device* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ray_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ray_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 1
  %8 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.net_device* @alloc_etherdev(i32 48)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 6
  store %struct.pcmcia_device* %16, %struct.pcmcia_device** %18, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 4
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 2
  store %struct.net_device* %41, %struct.net_device** %43, align 8
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 6
  store %struct.pcmcia_device* %44, %struct.pcmcia_device** %46, align 8
  %47 = load i32, i32* @CARD_INSERTED, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @UNAUTHENTICATED, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 1
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.pcmcia_device* %57, %struct.net_device* %58, %struct.TYPE_7__* %59, i32* @ray_interrupt)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  store i32* @ray_netdev_ops, i32** %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  store i32* @ray_handler_def, i32** %64, align 8
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 1
  %67 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @netif_stop_queue(%struct.net_device* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @timer_setup(i32* %71, i32* null, i32 0)
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  store %struct.pcmcia_device* %73, %struct.pcmcia_device** @this_device, align 8
  %74 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %75 = call i32 @ray_config(%struct.pcmcia_device* %74)
  store i32 %75, i32* %2, align 4
  br label %79

76:                                               ; preds = %12
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @ray_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
