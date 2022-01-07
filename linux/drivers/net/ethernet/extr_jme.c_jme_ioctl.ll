; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.jme_adapter = type { i32, i32, i32, i32 }
%struct.mii_ioctl_data = type { i32 }

@SIOCSMIIREG = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JME_FLAG_SSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @jme_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jme_adapter*, align 8
  %10 = alloca %struct.mii_ioctl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.jme_adapter* %14, %struct.jme_adapter** %9, align 8
  %15 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %16 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %15)
  store %struct.mii_ioctl_data* %16, %struct.mii_ioctl_data** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SIOCSMIIREG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @BMCR_RESET, align 4
  %26 = load i32, i32* @BMCR_ANENABLE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @BMCR_SPEED1000, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %74

38:                                               ; preds = %30, %20
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %41 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %44 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %43, i32 0, i32 3
  %45 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @generic_mii_ioctl(i32* %44, %struct.mii_ioctl_data* %45, i32 %46, i32* %11)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %49 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SIOCSMIIREG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %62 = call i32 @jme_reset_link(%struct.jme_adapter* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %66 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %65, i32 0, i32 1
  %67 = call i32 @jme_get_link_ksettings(%struct.net_device* %64, i32* %66)
  %68 = load i32, i32* @JME_FLAG_SSET, align 4
  %69 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %70 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %69, i32 0, i32 0
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %63, %53, %39
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %35
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @generic_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @jme_reset_link(%struct.jme_adapter*) #1

declare dso_local i32 @jme_get_link_ksettings(%struct.net_device*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
