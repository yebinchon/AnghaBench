; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c___ixgbe_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c___ixgbe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.net_device = type { i32 }

@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_GIO_DIS = common dso_local global i32 0, align 4
@IXGBE_WUFC = common dso_local global i32 0, align 4
@IXGBE_WUC = common dso_local global i32 0, align 4
@__IXGBE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*)* @__ixgbe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ixgbe_shutdown(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 3
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 2
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %7, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = call i32 (...) @rtnl_lock()
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call i32 @netif_device_detach(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %29 = call i32 @ixgbe_close_suspend(%struct.ixgbe_adapter* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %32 = call i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter* %31)
  %33 = call i32 (...) @rtnl_unlock()
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %37, align 8
  %39 = icmp ne i32 (%struct.ixgbe_hw.2*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.2*
  %48 = call i32 %45(%struct.ixgbe_hw.2* %47)
  br label %49

49:                                               ; preds = %40, %30
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %49
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @ixgbe_set_rx_mode(%struct.net_device* %53)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %58, align 8
  %60 = icmp ne i32 (%struct.ixgbe_hw.1*)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %65, align 8
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %68 = bitcast %struct.ixgbe_hw* %67 to %struct.ixgbe_hw.1*
  %69 = call i32 %66(%struct.ixgbe_hw.1* %68)
  br label %70

70:                                               ; preds = %61, %52
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %72 = load i32, i32* @IXGBE_FCTRL, align 4
  %73 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %78 = load i32, i32* @IXGBE_FCTRL, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %82 = load i32, i32* @IXGBE_CTRL, align 4
  %83 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @IXGBE_CTRL_GIO_DIS, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %88 = load i32, i32* @IXGBE_CTRL, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %87, i32 %88, i32 %89)
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %92 = load i32, i32* @IXGBE_WUFC, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %91, i32 %92, i32 %93)
  br label %102

95:                                               ; preds = %49
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %97 = load i32, i32* @IXGBE_WUC, align 4
  %98 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %97, i32 0)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = load i32, i32* @IXGBE_WUFC, align 4
  %101 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %95, %70
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %118 [
    i32 133, label %107
    i32 132, label %110
    i32 131, label %110
    i32 130, label %110
    i32 129, label %110
    i32 128, label %110
  ]

107:                                              ; preds = %102
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = call i32 @pci_wake_from_d3(%struct.pci_dev* %108, i32 0)
  br label %119

110:                                              ; preds = %102, %102, %102, %102, %102
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @pci_wake_from_d3(%struct.pci_dev* %111, i32 %116)
  br label %119

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %110, %107
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i32*, i32** %4, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %129, align 8
  %131 = icmp ne i32 (%struct.ixgbe_hw.0*, i32)* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %119
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %140, align 8
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %143 = bitcast %struct.ixgbe_hw* %142 to %struct.ixgbe_hw.0*
  %144 = call i32 %141(%struct.ixgbe_hw.0* %143, i32 0)
  br label %145

145:                                              ; preds = %136, %132, %119
  %146 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %147 = call i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter* %146)
  %148 = load i32, i32* @__IXGBE_DISABLED, align 4
  %149 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %150 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %149, i32 0, i32 1
  %151 = call i32 @test_and_set_bit(i32 %148, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %145
  %154 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %155 = call i32 @pci_disable_device(%struct.pci_dev* %154)
  br label %156

156:                                              ; preds = %153, %145
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_close_suspend(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ixgbe_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
