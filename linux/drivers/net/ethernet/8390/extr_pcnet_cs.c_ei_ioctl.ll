; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_ei_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_ei_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.pcnet_dev = type { i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@DLINK_GPIO = common dso_local global i32 0, align 4
@IS_DL10019 = common dso_local global i32 0, align 4
@IS_DL10022 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ei_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ei_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcnet_dev*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %11)
  store %struct.pcnet_dev* %12, %struct.pcnet_dev** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DLINK_GPIO, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.pcnet_dev*, %struct.pcnet_dev** %8, align 8
  %21 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IS_DL10019, align 4
  %24 = load i32, i32* @IS_DL10022, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %64 [
    i32 130, label %33
    i32 129, label %39
    i32 128, label %51
  ]

33:                                               ; preds = %31
  %34 = load %struct.pcnet_dev*, %struct.pcnet_dev** %8, align 8
  %35 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %38 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %31, %33
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %45 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 31
  %48 = call i32 @mdio_read(i32 %40, i32 %43, i32 %47)
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %67

51:                                               ; preds = %31
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %57 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 31
  %60 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %61 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mdio_write(i32 %52, i32 %55, i32 %59, i32 %62)
  store i32 0, i32* %4, align 4
  br label %67

64:                                               ; preds = %31
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %51, %39, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
