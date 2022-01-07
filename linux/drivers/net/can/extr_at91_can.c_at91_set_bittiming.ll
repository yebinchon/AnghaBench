; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"writing AT91_BR: 0x%08x\0A\00", align 1
@AT91_BR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @at91_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.at91_priv* %7, %struct.at91_priv** %3, align 8
  %8 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %9 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.can_bittiming* %10, %struct.can_bittiming** %4, align 8
  %11 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %12 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 16777216, i32 0
  %20 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %21 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = shl i32 %23, 16
  %25 = or i32 %19, %24
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 %29, 12
  %31 = or i32 %25, %30
  %32 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %33 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 %35, 8
  %37 = or i32 %31, %36
  %38 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %39 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 %41, 4
  %43 = or i32 %37, %42
  %44 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %45 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 %47, 0
  %49 = or i32 %43, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @netdev_info(%struct.net_device* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %54 = load i32, i32* @AT91_BR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @at91_write(%struct.at91_priv* %53, i32 %54, i32 %55)
  ret i32 0
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
