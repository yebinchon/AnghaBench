; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfhsi = type { %struct.TYPE_3__*, i32*, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)* }

@CFHSI_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cfhsi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfhsi_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cfhsi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.cfhsi* @netdev_priv(%struct.net_device* %7)
  store %struct.cfhsi* %8, %struct.cfhsi** %3, align 8
  %9 = load i32, i32* @CFHSI_SHUTDOWN, align 4
  %10 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %11 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %10, i32 0, i32 8
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %14 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %13, i32 0, i32 7
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %17 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %16, i32 0, i32 6
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %20 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %19, i32 0, i32 5
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %23 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %25, align 8
  %27 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %28 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 %26(%struct.TYPE_3__* %29)
  %31 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %32 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @destroy_workqueue(i32 %33)
  %35 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %36 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %4, align 8
  %38 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %39 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %5, align 8
  %41 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %42 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %6, align 8
  %44 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %45 = call i32 @cfhsi_abort_tx(%struct.cfhsi* %44)
  %46 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %47 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %49, align 8
  %51 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %52 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_3__* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @kfree(i32* %59)
  ret i32 0
}

declare dso_local %struct.cfhsi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @cfhsi_abort_tx(%struct.cfhsi*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
