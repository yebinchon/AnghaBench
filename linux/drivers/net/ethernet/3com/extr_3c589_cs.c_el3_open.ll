; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.el3_private = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@media_check = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: opened, status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.el3_private*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.el3_private* @netdev_priv(%struct.net_device* %6)
  store %struct.el3_private* %7, %struct.el3_private** %4, align 8
  %8 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %9 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %8, i32 0, i32 1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %12 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @netif_start_queue(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @tc589_reset(%struct.net_device* %24)
  %26 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %27 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %26, i32 0, i32 0
  %28 = load i32, i32* @media_check, align 4
  %29 = call i32 @timer_setup(i32* %27, i32 %28, i32 0)
  %30 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %31 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %30, i32 0, i32 0
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @HZ, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mod_timer(i32* %31, i64 %34)
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EL3_STATUS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inw(i64 %45)
  %47 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %17, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @tc589_reset(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
