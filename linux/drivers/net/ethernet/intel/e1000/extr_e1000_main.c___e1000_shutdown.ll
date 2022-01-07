; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c___e1000_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c___e1000_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { i64, i64 }

@E1000_CHECK_RESET_COUNT = common dso_local global i32 0, align 4
@__E1000_RESETTING = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP7_DATA = common dso_local global i32 0, align 4
@WUC = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@WUFC = common dso_local global i32 0, align 4
@__E1000_DISABLED = common dso_local global i32 0, align 4
@E1000_CTRL_ADVD3WUC = common dso_local global i32 0, align 4
@E1000_CTRL_EN_PHY_PWR_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*)* @__e1000_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__e1000_shutdown(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %14)
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.e1000_adapter* %17, %struct.e1000_adapter** %6, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 3
  store %struct.e1000_hw* %19, %struct.e1000_hw** %7, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @netif_device_detach(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i64 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %2
  %29 = load i32, i32* @E1000_CHECK_RESET_COUNT, align 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %42, %28
  %31 = load i32, i32* @__E1000_RESETTING, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %13, align 4
  %39 = icmp ne i32 %37, 0
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi i1 [ false, %30 ], [ %39, %36 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %30

44:                                               ; preds = %40
  %45 = load i32, i32* @__E1000_RESETTING, align 4
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = call i32 @WARN_ON(i64 %48)
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %51 = call i32 @e1000_down(%struct.e1000_adapter* %50)
  br label %52

52:                                               ; preds = %44, %2
  %53 = load i32, i32* @STATUS, align 4
  %54 = call i32 @er32(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @E1000_STATUS_LU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %129

67:                                               ; preds = %64
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %69 = call i32 @e1000_setup_rctl(%struct.e1000_adapter* %68)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i32 @e1000_set_rx_mode(%struct.net_device* %70)
  %72 = load i32, i32* @RCTL, align 4
  %73 = call i32 @er32(i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @E1000_WUFC_MC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load i32, i32* @E1000_RCTL_MPE, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %67
  %83 = load i32, i32* @RCTL, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @E1000_RCTL_EN, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @ew32(i32 %83, i32 %86)
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_82540, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load i32, i32* @CTRL, align 4
  %95 = call i32 @er32(i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, 3145728
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @CTRL, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ew32(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %82
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @e1000_media_type_fiber, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107, %101
  %114 = load i32, i32* @CTRL_EXT, align 4
  %115 = call i32 @er32(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* @E1000_CTRL_EXT_SDP7_DATA, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @CTRL_EXT, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @ew32(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %107
  %123 = load i32, i32* @WUC, align 4
  %124 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %125 = call i32 @ew32(i32 %123, i32 %124)
  %126 = load i32, i32* @WUFC, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ew32(i32 %126, i32 %127)
  br label %134

129:                                              ; preds = %64
  %130 = load i32, i32* @WUC, align 4
  %131 = call i32 @ew32(i32 %130, i32 0)
  %132 = load i32, i32* @WUFC, align 4
  %133 = call i32 @ew32(i32 %132, i32 0)
  br label %134

134:                                              ; preds = %129, %122
  %135 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %136 = call i32 @e1000_release_manageability(%struct.e1000_adapter* %135)
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load i32*, i32** %4, align 8
  store i32 %141, i32* %142, align 4
  %143 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %134
  %148 = load i32*, i32** %4, align 8
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %147, %134
  %150 = load %struct.net_device*, %struct.net_device** %5, align 8
  %151 = call i64 @netif_running(%struct.net_device* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %155 = call i32 @e1000_free_irq(%struct.e1000_adapter* %154)
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32, i32* @__E1000_DISABLED, align 4
  %158 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %158, i32 0, i32 1
  %160 = call i32 @test_and_set_bit(i32 %157, i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %164 = call i32 @pci_disable_device(%struct.pci_dev* %163)
  br label %165

165:                                              ; preds = %162, %156
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @e1000_down(%struct.e1000_adapter*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_setup_rctl(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_release_manageability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
