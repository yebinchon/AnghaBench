; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.smc_private = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s: smc_close(), status %4.4x.\0A\00", align 1
@BANK_SELECT = common dso_local global i64 0, align 8
@INTERRUPT = common dso_local global i64 0, align 8
@RCR = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@CTL_POWERDOWN = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc_private*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.smc_private* @netdev_priv(%struct.net_device* %6)
  store %struct.smc_private* %7, %struct.smc_private** %3, align 8
  %8 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %9 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %8, i32 0, i32 1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @BANK_SELECT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @netif_stop_queue(%struct.net_device* %25)
  %27 = call i32 @SMC_SELECT_BANK(i32 2)
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @INTERRUPT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outw(i32 0, i64 %31)
  %33 = call i32 @SMC_SELECT_BANK(i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @RCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @mask_bits(i32 65280, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @TCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @mask_bits(i32 65280, i64 %42)
  %44 = call i32 @SMC_SELECT_BANK(i32 1)
  %45 = load i32, i32* @CTL_POWERDOWN, align 4
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outw(i32 %45, i64 %49)
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %56 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %55, i32 0, i32 0
  %57 = call i32 @del_timer_sync(i32* %56)
  ret i32 0
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @mask_bits(i32, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
