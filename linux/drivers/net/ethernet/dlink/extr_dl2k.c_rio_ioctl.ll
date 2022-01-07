; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.netdev_private = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netdev_private*, align 8
  %10 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %11)
  store %struct.netdev_private* %12, %struct.netdev_private** %9, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %10, align 8
  %15 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %16 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %49 [
    i32 130, label %19
    i32 129, label %23
    i32 128, label %32
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %27 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mii_read(%struct.net_device* %24, i32 %25, i32 %28)
  %30 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %31 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  br label %52

32:                                               ; preds = %3
  %33 = load i32, i32* @CAP_NET_ADMIN, align 4
  %34 = call i32 @capable(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %43 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %46 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mii_write(%struct.net_device* %40, i32 %41, i32 %44, i32 %47)
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %39, %23, %19
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %36
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mii_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mii_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
