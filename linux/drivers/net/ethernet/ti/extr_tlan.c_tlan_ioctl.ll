; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.tlan_priv = type { i32*, i64, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @tlan_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlan_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlan_priv*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.tlan_priv* %12, %struct.tlan_priv** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %9, align 8
  %15 = load %struct.tlan_priv*, %struct.tlan_priv** %8, align 8
  %16 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.tlan_priv*, %struct.tlan_priv** %8, align 8
  %19 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.tlan_priv*, %struct.tlan_priv** %8, align 8
  %24 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %66

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %63 [
    i32 130, label %32
    i32 129, label %36
    i32 128, label %49
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %32
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
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 3
  %48 = call i32 @tlan_mii_read_reg(%struct.net_device* %37, i32 %41, i32 %45, i32* %47)
  store i32 0, i32* %4, align 4
  br label %66

49:                                               ; preds = %30
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 31
  %55 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %56 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 31
  %59 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %60 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tlan_mii_write_reg(%struct.net_device* %50, i32 %54, i32 %58, i32 %61)
  store i32 0, i32* %4, align 4
  br label %66

63:                                               ; preds = %30
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %49, %36, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
