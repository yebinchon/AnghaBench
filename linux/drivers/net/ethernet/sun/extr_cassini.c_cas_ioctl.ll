; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.cas = type { i32, i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @cas_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cas*, align 8
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.cas* @netdev_priv(%struct.net_device* %11)
  store %struct.cas* %12, %struct.cas** %7, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.cas*, %struct.cas** %7, align 8
  %18 = getelementptr inbounds %struct.cas, %struct.cas* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %70 [
    i32 130, label %21
    i32 129, label %27
    i32 128, label %48
  ]

21:                                               ; preds = %3
  %22 = load %struct.cas*, %struct.cas** %7, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %26 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %3, %21
  %28 = load %struct.cas*, %struct.cas** %7, align 8
  %29 = getelementptr inbounds %struct.cas, %struct.cas* %28, i32 0, i32 1
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.cas*, %struct.cas** %7, align 8
  %33 = call i32 @cas_mif_poll(%struct.cas* %32, i32 0)
  %34 = load %struct.cas*, %struct.cas** %7, align 8
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 31
  %39 = call i32 @cas_phy_read(%struct.cas* %34, i32 %38)
  %40 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %41 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cas*, %struct.cas** %7, align 8
  %43 = call i32 @cas_mif_poll(%struct.cas* %42, i32 1)
  %44 = load %struct.cas*, %struct.cas** %7, align 8
  %45 = getelementptr inbounds %struct.cas, %struct.cas* %44, i32 0, i32 1
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i32 0, i32* %10, align 4
  br label %71

48:                                               ; preds = %3
  %49 = load %struct.cas*, %struct.cas** %7, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.cas*, %struct.cas** %7, align 8
  %54 = call i32 @cas_mif_poll(%struct.cas* %53, i32 0)
  %55 = load %struct.cas*, %struct.cas** %7, align 8
  %56 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %57 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 31
  %60 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %61 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cas_phy_write(%struct.cas* %55, i32 %59, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.cas*, %struct.cas** %7, align 8
  %65 = call i32 @cas_mif_poll(%struct.cas* %64, i32 1)
  %66 = load %struct.cas*, %struct.cas** %7, align 8
  %67 = getelementptr inbounds %struct.cas, %struct.cas* %66, i32 0, i32 1
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %71

70:                                               ; preds = %3
  br label %71

71:                                               ; preds = %70, %48, %27
  %72 = load %struct.cas*, %struct.cas** %7, align 8
  %73 = getelementptr inbounds %struct.cas, %struct.cas* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
