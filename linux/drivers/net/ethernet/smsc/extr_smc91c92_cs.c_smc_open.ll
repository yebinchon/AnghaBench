; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.smc_private = type { i32, i64, i32*, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: smc_open(%p), ID/Window %4.4x.\0A\00", align 1
@BANK_SELECT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Yikes!  Bad chip signature!\0A\00", align 1
@media_check = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.smc_private* @netdev_priv(%struct.net_device* %6)
  store %struct.smc_private* %7, %struct.smc_private** %4, align 8
  %8 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %9 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %8, i32 0, i32 3
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BANK_SELECT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inw(i64 %21)
  %23 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.net_device* %16, i32 %22)
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %25 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %32 = call i64 @check_sig(%struct.pcmcia_device* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %62

39:                                               ; preds = %30
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_start_queue(%struct.net_device* %44)
  %46 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %47 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %49 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @smc_reset(%struct.net_device* %50)
  %52 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %53 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %52, i32 0, i32 0
  %54 = load i32, i32* @media_check, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %57 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %56, i32 0, i32 0
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* @HZ, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @mod_timer(i32* %57, i64 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %39, %34, %27
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i64 @check_sig(%struct.pcmcia_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @smc_reset(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
