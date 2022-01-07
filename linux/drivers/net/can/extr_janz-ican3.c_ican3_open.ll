; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ican3_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unable to start CAN layer\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to set bus-on\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ican3_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ican3_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.ican3_dev* %7, %struct.ican3_dev** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @open_candev(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %14 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netdev_err(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %20 = call i32 @ican3_set_bus_state(%struct.ican3_dev* %19, i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %25 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @close_candev(%struct.net_device* %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %33 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %34 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @netif_start_queue(%struct.net_device* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %23, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ican3_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ican3_set_bus_state(%struct.ican3_dev*, i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
