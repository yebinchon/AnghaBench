; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_setup_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_setup_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32, i32, %struct.TYPE_2__, i32*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"enabling pci device\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't enable device\0A\00", align 1
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"PCI Express interface from Omnitek\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"PCI Express interface provider is unknown!\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"PCI Express link width is %d lanes.\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"The current slot only supports %d lanes, for best performance 8 are needed\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"The card is most likely not seated correctly in the PCIe slot\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"no suitable DMA available\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cobalt\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"error requesting regions\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"64-bit BAR\0A\00", align 1
@COBALT_SYS_CTRL_BASE = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Could not enable MSI\0A\00", align 1
@cobalt_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to register irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cobalt*, %struct.pci_dev*, %struct.pci_device_id*)* @cobalt_setup_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_setup_pci(%struct.cobalt* %0, %struct.pci_dev* %1, %struct.pci_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cobalt*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.pci_device_id* %2, %struct.pci_device_id** %7, align 8
  %10 = call i32 @cobalt_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %182

18:                                               ; preds = %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = call i32 @pci_set_master(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %23 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %24 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %23, i32 0, i32 5
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %21, i32 %22, i32* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = load i32, i32* @PCI_DEVICE_ID, align 4
  %28 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %29 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %28, i32 0, i32 0
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %26, i32 %27, i32* %29)
  %31 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %32 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %36 [
    i32 128, label %34
  ]

34:                                               ; preds = %18
  %35 = call i32 @cobalt_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %18
  %37 = call i32 @cobalt_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %40 = call i32 @pcie_link_get_lanes(%struct.cobalt* %39)
  %41 = icmp ne i32 %40, 8
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %44 = call i32 @pcie_link_get_lanes(%struct.cobalt* %43)
  %45 = call i32 @cobalt_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %47 = call i32 @pcie_bus_link_get_lanes(%struct.cobalt* %46)
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %51 = call i32 @pcie_bus_link_get_lanes(%struct.cobalt* %50)
  %52 = call i32 @cobalt_warn(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %55 = call i32 @pcie_link_get_lanes(%struct.cobalt* %54)
  %56 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %57 = call i32 @pcie_bus_link_get_lanes(%struct.cobalt* %56)
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %176

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = call i32 @DMA_BIT_MASK(i32 64)
  %67 = call i32 @pci_set_dma_mask(%struct.pci_dev* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = call i32 @DMA_BIT_MASK(i32 32)
  %72 = call i32 @pci_set_dma_mask(%struct.pci_dev* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %176

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %64
  %79 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %80 = call i32 @pci_request_regions(%struct.pci_dev* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %176

85:                                               ; preds = %78
  %86 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %87 = call i32 @cobalt_pcie_status_show(%struct.cobalt* %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %89 = call i8* @pci_iomap(%struct.pci_dev* %88, i32 0, i32 0)
  %90 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %91 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %93 = call i8* @pci_iomap(%struct.pci_dev* %92, i32 1, i32 0)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %96 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %95, i32 0, i32 3
  store i32* %94, i32** %96, align 8
  %97 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %98 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %85
  %102 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %103 = call i8* @pci_iomap(%struct.pci_dev* %102, i32 2, i32 0)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %106 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = call i32 @cobalt_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %85
  %109 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %110 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %115 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %170

121:                                              ; preds = %113
  %122 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %123 = load i32, i32* @COBALT_SYS_CTRL_BASE, align 4
  %124 = call i32 @cobalt_read_bar1(%struct.cobalt* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %126 = load i32, i32* @COBALT_SYS_CTRL_BASE, align 4
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, -3841
  %129 = call i32 @cobalt_write_bar1(%struct.cobalt* %125, i32 %126, i32 %128)
  %130 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %131 = call i32 @cobalt_set_interrupt(%struct.cobalt* %130, i32 0)
  %132 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %133 = load i32, i32* @PCI_IRQ_MSI, align 4
  %134 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %132, i32 1, i32 1, i32 %133)
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %121
  %137 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  br label %170

140:                                              ; preds = %121
  %141 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %142 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %143 = call i32 @msi_config_show(%struct.cobalt* %141, %struct.pci_dev* %142)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @cobalt_irq_handler, align 4
  %148 = load i32, i32* @IRQF_SHARED, align 4
  %149 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %150 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %154 = bitcast %struct.cobalt* %153 to i8*
  %155 = call i64 @request_irq(i32 %146, i32 %147, i32 %148, i32 %152, i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %140
  %158 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %167

164:                                              ; preds = %140
  %165 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %166 = call i32 @omni_sg_dma_init(%struct.cobalt* %165)
  store i32 0, i32* %4, align 4
  br label %182

167:                                              ; preds = %157
  %168 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %169 = call i32 @pci_disable_msi(%struct.pci_dev* %168)
  br label %170

170:                                              ; preds = %167, %136, %118
  %171 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %172 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %173 = call i32 @cobalt_pci_iounmap(%struct.cobalt* %171, %struct.pci_dev* %172)
  %174 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %175 = call i32 @pci_release_regions(%struct.pci_dev* %174)
  br label %176

176:                                              ; preds = %170, %83, %75, %59
  %177 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %178 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @pci_disable_device(i32 %179)
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %176, %164, %15
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @cobalt_dbg(i32, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @cobalt_err(i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cobalt_info(i8*) #1

declare dso_local i32 @pcie_link_get_lanes(%struct.cobalt*) #1

declare dso_local i32 @cobalt_warn(i8*, i32) #1

declare dso_local i32 @pcie_bus_link_get_lanes(%struct.cobalt*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @cobalt_pcie_status_show(%struct.cobalt*) #1

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @cobalt_read_bar1(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_write_bar1(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @cobalt_set_interrupt(%struct.cobalt*, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @msi_config_show(%struct.cobalt*, %struct.pci_dev*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @omni_sg_dma_init(%struct.cobalt*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @cobalt_pci_iounmap(%struct.cobalt*, %struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
