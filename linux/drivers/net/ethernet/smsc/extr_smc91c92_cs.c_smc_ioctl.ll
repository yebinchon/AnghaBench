; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.smc_private = type { i32, i32 }
%struct.mii_ioctl_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @smc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_private*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.smc_private* @netdev_priv(%struct.net_device* %14)
  store %struct.smc_private* %15, %struct.smc_private** %8, align 8
  %16 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %17 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %16)
  store %struct.mii_ioctl_data* %17, %struct.mii_ioctl_data** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load %struct.smc_private*, %struct.smc_private** %8, align 8
  %29 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %28, i32 0, i32 0
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @BANK_SELECT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inw(i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = call i32 @SMC_SELECT_BANK(i32 3)
  %38 = load %struct.smc_private*, %struct.smc_private** %8, align 8
  %39 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %38, i32 0, i32 1
  %40 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @generic_mii_ioctl(i32* %39, %struct.mii_ioctl_data* %40, i32 %41, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @SMC_SELECT_BANK(i32 %43)
  %45 = load %struct.smc_private*, %struct.smc_private** %8, align 8
  %46 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %45, i32 0, i32 0
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %27, %24
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @generic_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
