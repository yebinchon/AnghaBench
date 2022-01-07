; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_timer.c_comet_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_timer.c_comet_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tulip_private = type { i32, i32*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@tulip_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Comet link status %04x partner capability %04x\0A\00", align 1
@tp = common dso_local global %struct.tulip_private* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comet_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %7 = ptrtoint %struct.tulip_private* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.tulip_private* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.tulip_private* %10, %struct.tulip_private** %3, align 8
  %11 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %12 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 2, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @tulip_debug, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %22 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tulip_mdio_read(%struct.net_device* %20, i32 %25, i32 1)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %29 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tulip_mdio_read(%struct.net_device* %27, i32 %32, i32 5)
  %34 = call i32 @netdev_dbg(%struct.net_device* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %18, %1
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i64 @tulip_check_duplex(%struct.net_device* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netif_carrier_off(%struct.net_device* %40)
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netif_carrier_on(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %47 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @RUN_AT(i32 %48)
  %50 = call i32 @mod_timer(i32* %47, i32 %49)
  ret void
}

declare dso_local %struct.tulip_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @tulip_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i64 @tulip_check_duplex(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @RUN_AT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
