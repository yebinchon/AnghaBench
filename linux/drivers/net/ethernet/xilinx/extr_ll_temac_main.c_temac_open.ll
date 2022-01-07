; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.temac_local = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"temac_open()\0A\00", align 1
@temac_adjust_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"of_phy_connect() failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"phy_connect() failed\0A\00", align 1
@ll_temac_tx_irq = common dso_local global i32 0, align 4
@ll_temac_rx_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"request_irq() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @temac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.temac_local* @netdev_priv(%struct.net_device* %7)
  store %struct.temac_local* %8, %struct.temac_local** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %13 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %18 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %21 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @temac_adjust_link, align 4
  %24 = call %struct.phy_device* @of_phy_connect(i32 %19, i64 %22, i32 %23, i32 0, i32 0)
  store %struct.phy_device* %24, %struct.phy_device** %5, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %26 = icmp ne %struct.phy_device* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %29 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %116

34:                                               ; preds = %16
  %35 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %36 = call i32 @phy_start(%struct.phy_device* %35)
  br label %69

37:                                               ; preds = %1
  %38 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %39 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strlen(i32 %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %45 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %48 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @temac_adjust_link, align 4
  %51 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %52 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.phy_device* @phy_connect(i32 %46, i32 %49, i32 %50, i32 %53)
  store %struct.phy_device* %54, %struct.phy_device** %5, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %56 = call i64 @IS_ERR(%struct.phy_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %60 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %64 = call i32 @PTR_ERR(%struct.phy_device* %63)
  store i32 %64, i32* %2, align 4
  br label %116

65:                                               ; preds = %43
  %66 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %67 = call i32 @phy_start(%struct.phy_device* %66)
  br label %68

68:                                               ; preds = %65, %37
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @temac_device_reset(%struct.net_device* %70)
  %72 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %73 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ll_temac_tx_irq, align 4
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @request_irq(i32 %74, i32 %75, i32 0, i32 %78, %struct.net_device* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %104

84:                                               ; preds = %69
  %85 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %86 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ll_temac_rx_irq, align 4
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @request_irq(i32 %87, i32 %88, i32 0, i32 %91, %struct.net_device* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %98

97:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %116

98:                                               ; preds = %96
  %99 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %100 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @free_irq(i32 %101, %struct.net_device* %102)
  br label %104

104:                                              ; preds = %98, %83
  %105 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %106 = icmp ne %struct.phy_device* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %109 = call i32 @phy_disconnect(%struct.phy_device* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %112 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %97, %58, %27
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.phy_device* @of_phy_connect(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.phy_device* @phy_connect(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @temac_device_reset(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
