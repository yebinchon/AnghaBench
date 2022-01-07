; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_restore_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_restore_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32, %struct.asix_common_private* }
%struct.TYPE_2__ = type { i32 }
%struct.asix_common_private = type { i32, i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @ax88772_restore_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88772_restore_phy(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.asix_common_private*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 2
  %6 = load %struct.asix_common_private*, %struct.asix_common_private** %5, align 8
  store %struct.asix_common_private* %6, %struct.asix_common_private** %3, align 8
  %7 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %8 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MII_ADVERTISE, align 4
  %20 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %21 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @asix_mdio_write_nopm(i32 %14, i32 %18, i32 %19, i32 %22)
  %24 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %25 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BMCR_ANENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %11
  %31 = load i32, i32* @BMCR_ANRESTART, align 4
  %32 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %33 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %11
  %37 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %41 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MII_BMCR, align 4
  %45 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %46 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @asix_mdio_write_nopm(i32 %39, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %50 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %52 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @asix_mdio_write_nopm(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
