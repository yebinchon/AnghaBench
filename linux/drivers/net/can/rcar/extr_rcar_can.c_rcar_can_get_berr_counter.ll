; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_get_berr_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_get_berr_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_berr_counter = type { i8*, i8* }
%struct.rcar_can_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_berr_counter*)* @rcar_can_get_berr_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_can_get_berr_counter(%struct.net_device* %0, %struct.can_berr_counter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_berr_counter*, align 8
  %6 = alloca %struct.rcar_can_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_berr_counter* %1, %struct.can_berr_counter** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.rcar_can_priv* %9, %struct.rcar_can_priv** %6, align 8
  %10 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %11 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %20 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i8* @readb(i32* %22)
  %24 = load %struct.can_berr_counter*, %struct.can_berr_counter** %5, align 8
  %25 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %27 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i8* @readb(i32* %29)
  %31 = load %struct.can_berr_counter*, %struct.can_berr_counter** %5, align 8
  %32 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %34 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %18, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i8* @readb(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
