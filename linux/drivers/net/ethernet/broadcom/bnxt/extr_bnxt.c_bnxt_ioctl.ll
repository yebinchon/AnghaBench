; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.bnxt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bnxt_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.bnxt* @netdev_priv(%struct.net_device* %14)
  store %struct.bnxt* %15, %struct.bnxt** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %63 [
    i32 130, label %17
    i32 129, label %24
    i32 128, label %44
  ]

17:                                               ; preds = %3
  %18 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %23 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %3, %17
  store i32 0, i32* %11, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %33 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %34 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %37 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bnxt_hwrm_port_phy_read(%struct.bnxt* %32, i32 %35, i32 %38, i32* %11)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %67

44:                                               ; preds = %3
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %67

51:                                               ; preds = %44
  %52 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %57 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %60 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bnxt_hwrm_port_phy_write(%struct.bnxt* %52, i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %51, %48, %31, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_hwrm_port_phy_read(%struct.bnxt*, i32, i32, i32*) #1

declare dso_local i32 @bnxt_hwrm_port_phy_write(%struct.bnxt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
