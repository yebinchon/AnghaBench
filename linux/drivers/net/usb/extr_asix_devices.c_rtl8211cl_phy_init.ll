; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_rtl8211cl_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_rtl8211cl_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.asix_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"rtl8211cl_phy_init()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @rtl8211cl_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8211cl_phy_init(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.asix_data*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 2
  %6 = bitcast i32* %5 to %struct.asix_data*
  store %struct.asix_data* %6, %struct.asix_data** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netdev_dbg(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @asix_mdio_write(i32 %13, i32 %17, i32 31, i32 5)
  %19 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @asix_mdio_write(i32 %21, i32 %25, i32 12, i32 0)
  %27 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @asix_mdio_read(i32 %36, i32 %40, i32 1)
  %42 = or i32 %41, 128
  %43 = call i32 @asix_mdio_write(i32 %29, i32 %33, i32 1, i32 %42)
  %44 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @asix_mdio_write(i32 %46, i32 %50, i32 31, i32 0)
  %52 = load %struct.asix_data*, %struct.asix_data** %3, align 8
  %53 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 12
  br i1 %55, label %56, label %81

56:                                               ; preds = %1
  %57 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @asix_mdio_write(i32 %59, i32 %63, i32 31, i32 2)
  %65 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @asix_mdio_write(i32 %67, i32 %71, i32 26, i32 203)
  %73 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %77 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @asix_mdio_write(i32 %75, i32 %79, i32 31, i32 0)
  br label %81

81:                                               ; preds = %56, %1
  ret i32 0
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @asix_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @asix_mdio_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
