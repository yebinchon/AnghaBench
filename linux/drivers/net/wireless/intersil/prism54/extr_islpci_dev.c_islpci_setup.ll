; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_dev.c_islpci_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_dev.c_islpci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, %struct.TYPE_6__*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i64, %struct.TYPE_6__, i32, i32, %struct.net_device*, %struct.pci_dev* }

@wlan_type = common dso_local global i32 0, align 4
@islpci_netdev_ops = common dso_local global i32 0, align 4
@prism54_handler_def = common dso_local global i32 0, align 4
@islpci_ethtool_ops = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@dummy_mac = common dso_local global i32 0, align 4
@ISLPCI_TX_TIMEOUT = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ISL38XX_PCI_MEM_SIZE = common dso_local global i64 0, align 8
@PRV_STATE_OFF = common dso_local global i32 0, align 4
@prism54_update_stats = common dso_local global i32 0, align 4
@islpci_do_reset_and_wake = common dso_local global i32 0, align 4
@ISL3877_IMAGE_FILE = common dso_local global i32 0, align 4
@ISL3886_IMAGE_FILE = common dso_local global i32 0, align 4
@ISL3890_IMAGE_FILE = common dso_local global i32 0, align 4
@SHOW_ERROR_MESSAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ERROR: register_netdev() failed\0A\00", align 1
@SHOW_TRACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @islpci_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = call %struct.net_device* @alloc_etherdev(i32 120)
  store %struct.net_device* %6, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %10, %struct.net_device** %2, align 8
  br label %172

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @pci_set_drvdata(%struct.pci_dev* %12, %struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 2
  %18 = call i32 @SET_NETDEV_DEV(%struct.net_device* %15, i32* %17)
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %19, i32* @wlan_type)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_resource_start(%struct.pci_dev* %21, i32 0)
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 9
  store i32* @islpci_netdev_ops, i32** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 8
  store i32* @prism54_handler_def, i32** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 7
  store i32* @islpci_ethtool_ops, i32** %35, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @dummy_mac, align 4
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @ISLPCI_TX_TIMEOUT, align 4
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 18
  store %struct.net_device* %50, %struct.net_device** %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 19
  store %struct.pci_dev* %53, %struct.pci_dev** %55, align 8
  %56 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IW_MODE_MONITOR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %11
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 4
  br label %70

68:                                               ; preds = %11
  %69 = load i32, i32* @ARPHRD_ETHER, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %67, %64 ], [ %69, %68 ]
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 18
  %74 = load %struct.net_device*, %struct.net_device** %73, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 3
  store i32 %71, i32* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 16
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 15
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 2
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 14
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ISL38XX_PCI_MEM_SIZE, align 8
  %94 = add i64 %92, %93
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 13
  %99 = call i32 @init_waitqueue_head(i32* %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 12
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 11
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 10
  %107 = call i32 @init_waitqueue_head(i32* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 9
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 8
  %113 = call i32 @spin_lock_init(i32* %112)
  %114 = load i32, i32* @PRV_STATE_OFF, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  %121 = load i32, i32* @prism54_update_stats, align 4
  %122 = call i32 @INIT_WORK(i32* %120, i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32, i32* @islpci_do_reset_and_wake, align 4
  %128 = call i32 @INIT_WORK(i32* %126, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = call i64 @islpci_alloc_memory(%struct.TYPE_7__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %70
  br label %169

135:                                              ; preds = %70
  %136 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %151 [
    i32 14455, label %139
    i32 14470, label %145
  ]

139:                                              ; preds = %135
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ISL3877_IMAGE_FILE, align 4
  %144 = call i32 @strcpy(i32 %142, i32 %143)
  br label %157

145:                                              ; preds = %135
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ISL3886_IMAGE_FILE, align 4
  %150 = call i32 @strcpy(i32 %148, i32 %149)
  br label %157

151:                                              ; preds = %135
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ISL3890_IMAGE_FILE, align 4
  %156 = call i32 @strcpy(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %145, %139
  %158 = load %struct.net_device*, %struct.net_device** %5, align 8
  %159 = call i64 @register_netdev(%struct.net_device* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* @SHOW_ERROR_MESSAGES, align 4
  %163 = call i32 (i32, i8*, ...) @DEBUG(i32 %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %166

164:                                              ; preds = %157
  %165 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %165, %struct.net_device** %2, align 8
  br label %172

166:                                              ; preds = %161
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = call i32 @islpci_free_memory(%struct.TYPE_7__* %167)
  br label %169

169:                                              ; preds = %166, %134
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = call i32 @free_netdev(%struct.net_device* %170)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %172

172:                                              ; preds = %169, %164, %9
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %173
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @islpci_alloc_memory(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @islpci_free_memory(%struct.TYPE_7__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
