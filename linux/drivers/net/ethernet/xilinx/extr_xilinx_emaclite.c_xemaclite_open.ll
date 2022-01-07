; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.net_local = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@xemaclite_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"of_phy_connect() failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@xemaclite_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate interrupt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xemaclite_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xemaclite_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %4, align 8
  %9 = load %struct.net_local*, %struct.net_local** %4, align 8
  %10 = call i32 @xemaclite_disable_interrupts(%struct.net_local* %9)
  %11 = load %struct.net_local*, %struct.net_local** %4, align 8
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %1
  %16 = load %struct.net_local*, %struct.net_local** %4, align 8
  %17 = getelementptr inbounds %struct.net_local, %struct.net_local* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.net_local*, %struct.net_local** %4, align 8
  %20 = getelementptr inbounds %struct.net_local, %struct.net_local* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @xemaclite_adjust_link, align 4
  %23 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %24 = call i32* @of_phy_connect(%struct.TYPE_2__* %18, i64 %21, i32 %22, i32 0, i32 %23)
  %25 = load %struct.net_local*, %struct.net_local** %4, align 8
  %26 = getelementptr inbounds %struct.net_local, %struct.net_local* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.net_local*, %struct.net_local** %4, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %15
  %32 = load %struct.net_local*, %struct.net_local** %4, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %122

39:                                               ; preds = %15
  %40 = load %struct.net_local*, %struct.net_local** %4, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @SPEED_100, align 4
  %44 = call i32 @phy_set_max_speed(i32* %42, i32 %43)
  %45 = load %struct.net_local*, %struct.net_local** %4, align 8
  %46 = getelementptr inbounds %struct.net_local, %struct.net_local* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @MII_CTRL1000, align 4
  %49 = call i32 @phy_write(i32* %47, i32 %48, i32 0)
  %50 = load %struct.net_local*, %struct.net_local** %4, align 8
  %51 = getelementptr inbounds %struct.net_local, %struct.net_local* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @MII_ADVERTISE, align 4
  %54 = load i32, i32* @ADVERTISE_ALL, align 4
  %55 = load i32, i32* @ADVERTISE_CSMA, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @phy_write(i32* %52, i32 %53, i32 %56)
  %58 = load %struct.net_local*, %struct.net_local** %4, align 8
  %59 = getelementptr inbounds %struct.net_local, %struct.net_local* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @MII_BMCR, align 4
  %62 = call i32 @phy_read(i32* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @BMCR_ANENABLE, align 4
  %64 = load i32, i32* @BMCR_ANRESTART, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.net_local*, %struct.net_local** %4, align 8
  %69 = getelementptr inbounds %struct.net_local, %struct.net_local* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @MII_BMCR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @phy_write(i32* %70, i32 %71, i32 %72)
  %74 = load %struct.net_local*, %struct.net_local** %4, align 8
  %75 = getelementptr inbounds %struct.net_local, %struct.net_local* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @phy_start(i32* %76)
  br label %78

78:                                               ; preds = %39, %1
  %79 = load %struct.net_local*, %struct.net_local** %4, align 8
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @xemaclite_update_address(%struct.net_local* %79, i32 %82)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @xemaclite_interrupt, align 4
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = call i32 @request_irq(i32 %86, i32 %87, i32 0, i32 %90, %struct.net_device* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %78
  %96 = load %struct.net_local*, %struct.net_local** %4, align 8
  %97 = getelementptr inbounds %struct.net_local, %struct.net_local* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.net_local*, %struct.net_local** %4, align 8
  %105 = getelementptr inbounds %struct.net_local, %struct.net_local* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %95
  %109 = load %struct.net_local*, %struct.net_local** %4, align 8
  %110 = getelementptr inbounds %struct.net_local, %struct.net_local* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @phy_disconnect(i32* %111)
  br label %113

113:                                              ; preds = %108, %95
  %114 = load %struct.net_local*, %struct.net_local** %4, align 8
  %115 = getelementptr inbounds %struct.net_local, %struct.net_local* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %122

117:                                              ; preds = %78
  %118 = load %struct.net_local*, %struct.net_local** %4, align 8
  %119 = call i32 @xemaclite_enable_interrupts(%struct.net_local* %118)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @netif_start_queue(%struct.net_device* %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %113, %31
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xemaclite_disable_interrupts(%struct.net_local*) #1

declare dso_local i32* @of_phy_connect(%struct.TYPE_2__*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @phy_set_max_speed(i32*, i32) #1

declare dso_local i32 @phy_write(i32*, i32, i32) #1

declare dso_local i32 @phy_read(i32*, i32) #1

declare dso_local i32 @phy_start(i32*) #1

declare dso_local i32 @xemaclite_update_address(%struct.net_local*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @xemaclite_enable_interrupts(%struct.net_local*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
