; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_eph_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_eph_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.smc_private = type { i32 }

@EPH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Ethernet protocol handler interrupt, status %4.4x.\0A\00", align 1
@COUNTER = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TCR_ENABLE = common dso_local global i32 0, align 4
@CTL_AUTO_RELEASE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@CTL_TE_ENABLE = common dso_local global i32 0, align 4
@CTL_CR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_eph_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_eph_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.smc_private* @netdev_priv(%struct.net_device* %7)
  store %struct.smc_private* %8, %struct.smc_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = call i32 @SMC_SELECT_BANK(i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @EPH, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inw(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @netdev_dbg(%struct.net_device* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* @COUNTER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inw(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 15
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 15
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* @TCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inw(i64 %45)
  %47 = load i32, i32* @TCR_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %50 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @TCR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %52, i64 %56)
  %58 = call i32 @SMC_SELECT_BANK(i32 1)
  %59 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @CONTROL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outw(i32 %59, i64 %63)
  %65 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %66 = load i32, i32* @CTL_TE_ENABLE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CTL_CR_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @CONTROL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outw(i32 %69, i64 %73)
  %75 = call i32 @SMC_SELECT_BANK(i32 2)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
