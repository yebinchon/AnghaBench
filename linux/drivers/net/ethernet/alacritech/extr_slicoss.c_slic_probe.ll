; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.slic_device = type { i32, i32, %struct.net_device*, %struct.pci_dev*, i32, i32 }
%struct.net_device = type { i32*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to setup DMA\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to obtain PCI regions\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to alloc ethernet device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@slic_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@slic_ethtool_ops = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ALACRITECH_OASIS = common dso_local global i64 0, align 8
@SLIC_MODEL_OASIS = common dso_local global i32 0, align 4
@SLIC_MODEL_MOJAVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to map registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to initialize driver\0A\00", align 1
@slic_poll = common dso_local global i32 0, align 4
@SLIC_NAPI_WEIGHT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to register net device: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @slic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.slic_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %173

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_set_master(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_try_set_mwi(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @slic_configure_pci(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = call i32 @DMA_BIT_MASK(i32 32)
  %28 = call i32 @dma_set_mask(i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %169

35:                                               ; preds = %18
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = call i32 @DMA_BIT_MASK(i32 32)
  %39 = call i32 @dma_set_coherent_mask(i32* %37, i32 %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @DRV_NAME, align 4
  %42 = call i32 @pci_request_regions(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %169

49:                                               ; preds = %35
  %50 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %50, %struct.net_device** %7, align 8
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %166

59:                                               ; preds = %49
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  %63 = call i32 @SET_NETDEV_DEV(%struct.net_device* %60, i32* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = call i32 @pci_set_drvdata(%struct.pci_dev* %64, %struct.net_device* %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %7, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 3
  store i32* @slic_netdev_ops, i32** %73, align 8
  %74 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32* @slic_ethtool_ops, i32** %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = call %struct.slic_device* @netdev_priv(%struct.net_device* %86)
  store %struct.slic_device* %87, %struct.slic_device** %6, align 8
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCI_DEVICE_ID_ALACRITECH_OASIS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %59
  %94 = load i32, i32* @SLIC_MODEL_OASIS, align 4
  br label %97

95:                                               ; preds = %59
  %96 = load i32, i32* @SLIC_MODEL_MOJAVE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %100 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @slic_is_fiber(i32 %103)
  %105 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %106 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %109 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %108, i32 0, i32 3
  store %struct.pci_dev* %107, %struct.pci_dev** %109, align 8
  %110 = load %struct.net_device*, %struct.net_device** %7, align 8
  %111 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %112 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %111, i32 0, i32 2
  store %struct.net_device* %110, %struct.net_device** %112, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @pci_resource_start(%struct.pci_dev* %113, i32 0)
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = call i32 @pci_resource_len(%struct.pci_dev* %115, i32 0)
  %117 = call i32 @ioremap_nocache(i32 %114, i32 %116)
  %118 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %119 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %121 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %97
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 1
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %163

130:                                              ; preds = %97
  %131 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %132 = call i32 @slic_init(%struct.slic_device* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 1
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %158

139:                                              ; preds = %130
  %140 = load %struct.net_device*, %struct.net_device** %7, align 8
  %141 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %142 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %141, i32 0, i32 1
  %143 = load i32, i32* @slic_poll, align 4
  %144 = load i32, i32* @SLIC_NAPI_WEIGHT, align 4
  %145 = call i32 @netif_napi_add(%struct.net_device* %140, i32* %142, i32 %143, i32 %144)
  %146 = load %struct.net_device*, %struct.net_device** %7, align 8
  %147 = call i32 @netif_carrier_off(%struct.net_device* %146)
  %148 = load %struct.net_device*, %struct.net_device** %7, align 8
  %149 = call i32 @register_netdev(%struct.net_device* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 1
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %158

157:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %173

158:                                              ; preds = %152, %135
  %159 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %160 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @iounmap(i32 %161)
  br label %163

163:                                              ; preds = %158, %124
  %164 = load %struct.net_device*, %struct.net_device** %7, align 8
  %165 = call i32 @free_netdev(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %163, %53
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = call i32 @pci_release_regions(%struct.pci_dev* %167)
  br label %169

169:                                              ; preds = %166, %45, %31
  %170 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %171 = call i32 @pci_disable_device(%struct.pci_dev* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %157, %13
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @slic_configure_pci(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.slic_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @slic_is_fiber(i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @slic_init(%struct.slic_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
