; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.sis900_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @mii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mii_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sis900_private*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.sis900_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sis900_private* %11, %struct.sis900_private** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %50 [
    i32 130, label %15
    i32 129, label %23
    i32 128, label %36
  ]

15:                                               ; preds = %3
  %16 = load %struct.sis900_private*, %struct.sis900_private** %8, align 8
  %17 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %3, %15
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %26 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 31
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 31
  %33 = call i32 @mdio_read(%struct.net_device* %24, i32 %28, i32 %32)
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %53

36:                                               ; preds = %3
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 31
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %43 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 31
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mdio_write(%struct.net_device* %37, i32 %41, i32 %45, i32 %48)
  store i32 0, i32* %4, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %36, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.sis900_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
