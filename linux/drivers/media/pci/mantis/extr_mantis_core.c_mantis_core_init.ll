; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_core.c_mantis_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_core.c_mantis_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@verbose = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"found a %s PCI %s device on (%02x:%02x.%x),\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"    Mantis Rev %d [%04x:%04x], \00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"irq: %d, latency: %d\0A    memory: 0x%lx, mmio: 0x%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Mantis I2C init failed\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"get MAC address failed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Mantis DMA init failed\00", align 1
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Mantis DVB init failed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Mantis UART init failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_core_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %6 = call i32 @mantis_load_config(%struct.mantis_pci* %5)
  %7 = load i32, i32* @verbose, align 4
  %8 = load i32, i32* @MANTIS_ERROR, align 4
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 7
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %15 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %14, i32 0, i32 7
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %20 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %27 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PCI_SLOT(i32 %30)
  %32 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %33 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PCI_FUNC(i32 %36)
  %38 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %7, i32 %8, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18, i32 %25, i32 %31, i32 %37)
  %39 = load i32, i32* @verbose, align 4
  %40 = load i32, i32* @MANTIS_ERROR, align 4
  %41 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %42 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %45 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %48 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %39, i32 %40, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* @verbose, align 4
  %52 = load i32, i32* @MANTIS_ERROR, align 4
  %53 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %54 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %59 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %62 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %65 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %51, i32 %52, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %69 = call i32 @mantis_i2c_init(%struct.mantis_pci* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %1
  %73 = load i32, i32* @verbose, align 4
  %74 = load i32, i32* @MANTIS_ERROR, align 4
  %75 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %73, i32 %74, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %118

77:                                               ; preds = %1
  %78 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %79 = call i32 @get_mac_address(%struct.mantis_pci* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @verbose, align 4
  %84 = load i32, i32* @MANTIS_ERROR, align 4
  %85 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %83, i32 %84, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %118

87:                                               ; preds = %77
  %88 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %89 = call i32 @mantis_dma_init(%struct.mantis_pci* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @verbose, align 4
  %94 = load i32, i32* @MANTIS_ERROR, align 4
  %95 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %93, i32 %94, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %118

97:                                               ; preds = %87
  %98 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %99 = call i32 @mantis_dvb_init(%struct.mantis_pci* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @verbose, align 4
  %104 = load i32, i32* @MANTIS_DEBUG, align 4
  %105 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %103, i32 %104, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %118

107:                                              ; preds = %97
  %108 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %109 = call i32 @mantis_uart_init(%struct.mantis_pci* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @verbose, align 4
  %114 = load i32, i32* @MANTIS_DEBUG, align 4
  %115 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %113, i32 %114, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %112, %102, %92, %82, %72
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @mantis_load_config(%struct.mantis_pci*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @mantis_i2c_init(%struct.mantis_pci*) #1

declare dso_local i32 @get_mac_address(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_dma_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_dvb_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_uart_init(%struct.mantis_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
