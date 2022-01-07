; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.r8152 = type { i32, i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@R8152_PHY_ID = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rtl8152_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8152*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.r8152* @netdev_priv(%struct.net_device* %11)
  store %struct.r8152* %12, %struct.r8152** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %9, align 8
  %15 = load i32, i32* @RTL8152_UNPLUG, align 4
  %16 = load %struct.r8152*, %struct.r8152** %8, align 8
  %17 = getelementptr inbounds %struct.r8152, %struct.r8152* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.r8152*, %struct.r8152** %8, align 8
  %25 = getelementptr inbounds %struct.r8152, %struct.r8152* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_autopm_get_interface(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %81

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %73 [
    i32 130, label %33
    i32 129, label %37
    i32 128, label %51
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @R8152_PHY_ID, align 4
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %76

37:                                               ; preds = %31
  %38 = load %struct.r8152*, %struct.r8152** %8, align 8
  %39 = getelementptr inbounds %struct.r8152, %struct.r8152* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.r8152*, %struct.r8152** %8, align 8
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %43 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @r8152_mdio_read(%struct.r8152* %41, i32 %44)
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.r8152*, %struct.r8152** %8, align 8
  %49 = getelementptr inbounds %struct.r8152, %struct.r8152* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %76

51:                                               ; preds = %31
  %52 = load i32, i32* @CAP_NET_ADMIN, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %76

58:                                               ; preds = %51
  %59 = load %struct.r8152*, %struct.r8152** %8, align 8
  %60 = getelementptr inbounds %struct.r8152, %struct.r8152* %59, i32 0, i32 1
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.r8152*, %struct.r8152** %8, align 8
  %63 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %64 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %67 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @r8152_mdio_write(%struct.r8152* %62, i32 %65, i32 %68)
  %70 = load %struct.r8152*, %struct.r8152** %8, align 8
  %71 = getelementptr inbounds %struct.r8152, %struct.r8152* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %76

73:                                               ; preds = %31
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %58, %55, %37, %33
  %77 = load %struct.r8152*, %struct.r8152** %8, align 8
  %78 = getelementptr inbounds %struct.r8152, %struct.r8152* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_autopm_put_interface(i32 %79)
  br label %81

81:                                               ; preds = %76, %30
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %20
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @r8152_mdio_read(%struct.r8152*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @r8152_mdio_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
