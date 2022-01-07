; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pci.c_mantis_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pci.c_mantis_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32, i32, i32, %struct.pci_dev*, i32, %struct.mantis_hwconfig* }
%struct.pci_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mantis_hwconfig = type { i32, i32, i32 }

@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"found a %s PCI %s device on (%02x:%02x.%x),\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ERROR: PCI enable failed <%i>\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ERROR: Unable to obtain 32 bit DMA <%i>\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ERROR: BAR0 Request failed !\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR: BAR0 remap failed !\00", align 1
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"    Mantis Rev %d [%04x:%04x], \00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"irq: %d, latency: %d\0A    memory: 0x%lx, mmio: 0x%p\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"ERROR: IRQ registration failed ! <%d>\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"ERROR: <%d> I/O unmap\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"ERROR: <%d> releasing regions\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"ERROR: <%d> disabling device\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ERROR: <%d> exiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_pci_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mantis_hwconfig*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 5
  %11 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %10, align 8
  store %struct.mantis_hwconfig* %11, %struct.mantis_hwconfig** %5, align 8
  %12 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %13 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %12, i32 0, i32 3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @MANTIS_ERROR, align 4
  %16 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %5, align 8
  %17 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %5, align 8
  %20 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %23 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %22, i32 0, i32 3
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %30 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %29, i32 0, i32 3
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PCI_SLOT(i32 %33)
  %35 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %36 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %35, i32 0, i32 3
  %37 = load %struct.pci_dev*, %struct.pci_dev** %36, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PCI_FUNC(i32 %39)
  %41 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %15, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %28, i32 %34, i32 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = call i32 @pci_enable_device(%struct.pci_dev* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @MANTIS_ERROR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %49, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %191

52:                                               ; preds = %1
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = call i32 @DMA_BIT_MASK(i32 32)
  %55 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @MANTIS_ERROR, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %59, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %185

64:                                               ; preds = %52
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = call i32 @pci_set_master(%struct.pci_dev* %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = call i32 @pci_resource_start(%struct.pci_dev* %67, i32 0)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = call i32 @pci_resource_len(%struct.pci_dev* %69, i32 0)
  %71 = load i32, i32* @DRIVER_NAME, align 4
  %72 = call i32 @request_mem_region(i32 %68, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @MANTIS_ERROR, align 4
  %76 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %75, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %185

79:                                               ; preds = %64
  %80 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %81 = call i32 @pci_resource_start(%struct.pci_dev* %80, i32 0)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %83 = call i32 @pci_resource_len(%struct.pci_dev* %82, i32 0)
  %84 = call i32 @ioremap(i32 %81, i32 %83)
  %85 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %86 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %88 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* @MANTIS_ERROR, align 4
  %93 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %92, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %176

96:                                               ; preds = %79
  %97 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %98 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %99 = call i32 @pci_read_config_byte(%struct.pci_dev* %97, i32 %98, i32* %4)
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %102 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %107 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @MANTIS_ERROR, align 4
  %109 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %110 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %113 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %112, i32 0, i32 3
  %114 = load %struct.pci_dev*, %struct.pci_dev** %113, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %118 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %117, i32 0, i32 3
  %119 = load %struct.pci_dev*, %struct.pci_dev** %118, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %108, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %116, i32 %121)
  %123 = load i32, i32* @MANTIS_ERROR, align 4
  %124 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %125 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %124, i32 0, i32 3
  %126 = load %struct.pci_dev*, %struct.pci_dev** %125, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %130 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %133 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %136 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %123, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i32 %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %5, align 8
  %143 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IRQF_SHARED, align 4
  %146 = load i32, i32* @DRIVER_NAME, align 4
  %147 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %148 = call i32 @request_irq(i32 %141, i32 %144, i32 %145, i32 %146, %struct.mantis_pci* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %96
  %152 = load i32, i32* @MANTIS_ERROR, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %152, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %8, align 4
  br label %162

157:                                              ; preds = %96
  %158 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %159 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %160 = call i32 @pci_set_drvdata(%struct.pci_dev* %158, %struct.mantis_pci* %159)
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %196

162:                                              ; preds = %151
  %163 = load i32, i32* @MANTIS_ERROR, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %163, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  %166 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %167 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %172 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @iounmap(i32 %173)
  br label %175

175:                                              ; preds = %170, %162
  br label %176

176:                                              ; preds = %175, %91
  %177 = load i32, i32* @MANTIS_ERROR, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %177, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %178)
  %180 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %181 = call i32 @pci_resource_start(%struct.pci_dev* %180, i32 0)
  %182 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %183 = call i32 @pci_resource_len(%struct.pci_dev* %182, i32 0)
  %184 = call i32 @release_mem_region(i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %176, %74, %58
  %186 = load i32, i32* @MANTIS_ERROR, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %186, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %187)
  %189 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %190 = call i32 @pci_disable_device(%struct.pci_dev* %189)
  br label %191

191:                                              ; preds = %185, %46
  %192 = load i32, i32* @MANTIS_ERROR, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %192, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %191, %157
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mantis_pci*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mantis_pci*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
