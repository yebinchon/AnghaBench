; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.axnet_dev = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@AXNET_MII_EEP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @axnet_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axnet_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.axnet_dev*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.axnet_dev* @PRIV(%struct.net_device* %11)
  store %struct.axnet_dev* %12, %struct.axnet_dev** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AXNET_MII_EEP, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %52 [
    i32 130, label %21
    i32 129, label %27
    i32 128, label %39
  ]

21:                                               ; preds = %3
  %22 = load %struct.axnet_dev*, %struct.axnet_dev** %8, align 8
  %23 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %26 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %3, %21
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 31
  %36 = call i32 @mdio_read(i32 %28, i32 %31, i32 %35)
  %37 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %38 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %55

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %45 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 31
  %48 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %49 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mdio_write(i32 %40, i32 %43, i32 %47, i32 %50)
  store i32 0, i32* %4, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %39, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
