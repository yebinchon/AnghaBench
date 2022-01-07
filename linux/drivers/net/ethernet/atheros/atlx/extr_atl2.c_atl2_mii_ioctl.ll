; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.atl2_adapter = type { i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @atl2_mii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_mii_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atl2_adapter*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl2_adapter* %12, %struct.atl2_adapter** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %82 [
    i32 130, label %16
    i32 129, label %19
    i32 128, label %46
  ]

16:                                               ; preds = %3
  %17 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %18 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %25 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %24, i32 0, i32 1
  %26 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %27 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 31
  %30 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %31 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %30, i32 0, i32 2
  %32 = call i32 @atl2_read_phy_reg(i32* %25, i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %36 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %86

41:                                               ; preds = %19
  %42 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %43 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %85

46:                                               ; preds = %3
  %47 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %48 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %86

55:                                               ; preds = %46
  %56 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %60, i32 0, i32 1
  %62 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %63 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %66 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @atl2_write_phy_reg(i32* %61, i32 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %55
  %71 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %72 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %71, i32 0, i32 0
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %86

77:                                               ; preds = %55
  %78 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %79 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @EOPNOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %77, %41, %16
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82, %70, %52, %34
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atl2_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atl2_write_phy_reg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
