; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }
%struct.gbe_intf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ifreq*, i32)* @gbe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_ioctl(i8* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gbe_intf*, align 8
  %9 = alloca %struct.phy_device*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gbe_intf*
  store %struct.gbe_intf* %11, %struct.gbe_intf** %8, align 8
  %12 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %13 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %9, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %18 = icmp ne %struct.phy_device* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %26
  %29 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %30 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %31 = call i32 @gbe_hwtstamp_get(%struct.gbe_intf* %29, %struct.ifreq* %30)
  store i32 %31, i32* %4, align 4
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %34 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %35 = call i32 @gbe_hwtstamp_set(%struct.gbe_intf* %33, %struct.ifreq* %34)
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %39 = icmp ne %struct.phy_device* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %42 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @phy_mii_ioctl(%struct.phy_device* %41, %struct.ifreq* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %40, %32, %28
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @gbe_hwtstamp_get(%struct.gbe_intf*, %struct.ifreq*) #1

declare dso_local i32 @gbe_hwtstamp_set(%struct.gbe_intf*, %struct.ifreq*) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
