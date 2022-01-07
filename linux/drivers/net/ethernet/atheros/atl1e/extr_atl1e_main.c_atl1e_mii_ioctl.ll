; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.atl1e_adapter = type { i32, i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"<atl1e_mii_ioctl> write %x %x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @atl1e_mii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_mii_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atl1e_adapter*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.atl1e_adapter* %13, %struct.atl1e_adapter** %8, align 8
  %14 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %15 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %14)
  store %struct.mii_ioctl_data* %15, %struct.mii_ioctl_data** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  %23 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %24 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %80 [
    i32 130, label %28
    i32 129, label %31
    i32 128, label %46
  ]

28:                                               ; preds = %22
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 3
  store i32 0, i32* %30, align 4
  br label %83

31:                                               ; preds = %22
  %32 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %32, i32 0, i32 1
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 31
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 2
  %40 = call i32 @atl1e_read_phy_reg(i32* %33, i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %84

45:                                               ; preds = %31
  br label %83

46:                                               ; preds = %22
  %47 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %48 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %84

55:                                               ; preds = %46
  %56 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %60 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %63 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netdev_dbg(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %67 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %66, i32 0, i32 1
  %68 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %69 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %72 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @atl1e_write_phy_reg(i32* %67, i32 %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %84

79:                                               ; preds = %55
  br label %83

80:                                               ; preds = %22
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %79, %45, %28
  br label %84

84:                                               ; preds = %83, %76, %52, %42
  %85 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %86 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atl1e_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @atl1e_write_phy_reg(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
