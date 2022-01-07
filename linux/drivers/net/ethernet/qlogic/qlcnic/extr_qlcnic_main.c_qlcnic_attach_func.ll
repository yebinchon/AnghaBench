; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_attach_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_attach_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, i32*, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@pci_channel_io_normal = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@__QLCNIC_START_FW = common dso_local global i32 0, align 4
@QLCNIC_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_INITIALIZING = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Restarting fw\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to setup interrupt\0A\00", align 1
@__QLCNIC_AER = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @qlcnic_attach_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_attach_func(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 4
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load i32, i32* @pci_channel_io_normal, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i32 @pci_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %125

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @pci_set_master(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_restore_state(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @qlcnic_is_first_func(%struct.pci_dev* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %125

35:                                               ; preds = %22
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @__QLCNIC_START_FW, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %54 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %55 = load i32, i32* @QLCNIC_DEV_INITIALIZING, align 4
  %56 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %53, i32 %54, i32 %55)
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = load i32, i32* @DRV, align 4
  %59 = call i32 @QLCDB(%struct.qlcnic_adapter* %57, i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %46, %43, %35
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %62 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %61)
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %64 = call i32 @qlcnic_start_firmware(%struct.qlcnic_adapter* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %125

69:                                               ; preds = %60
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = call i32 @qlcnic_clr_drv_state(%struct.qlcnic_adapter* %70)
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = call i32 @qlcnic_setup_intr(%struct.qlcnic_adapter* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %69
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.net_device*, %struct.net_device** %7, align 8
  %88 = call i32 @netdev_err(%struct.net_device* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %125

90:                                               ; preds = %69
  %91 = load %struct.net_device*, %struct.net_device** %7, align 8
  %92 = call i64 @netif_running(%struct.net_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %96 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %101 = call i32 @qlcnic_clr_all_drv_state(%struct.qlcnic_adapter* %100, i32 1)
  %102 = load i32, i32* @__QLCNIC_AER, align 4
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %103, i32 0, i32 1
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = call i32 @netif_device_attach(%struct.net_device* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %125

109:                                              ; preds = %94
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %111 = load %struct.net_device*, %struct.net_device** %7, align 8
  %112 = call i32 @qlcnic_up(%struct.qlcnic_adapter* %110, %struct.net_device* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %121

116:                                              ; preds = %109
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = load i32, i32* @NETDEV_UP, align 4
  %119 = call i32 @qlcnic_restore_indev_addr(%struct.net_device* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %90
  br label %121

121:                                              ; preds = %120, %115
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = call i32 @netif_device_attach(%struct.net_device* %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %99, %82, %67, %32, %20
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @qlcnic_is_first_func(%struct.pci_dev*) #1

declare dso_local i64 @qlcnic_api_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*) #1

declare dso_local i32 @qlcnic_api_unlock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_start_firmware(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_clr_drv_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @qlcnic_setup_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_clr_all_drv_state(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_up(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_restore_indev_addr(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
