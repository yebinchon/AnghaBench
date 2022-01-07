; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_cards.c_mantis_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_cards.c_mantis_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.mantis_pci_drvdata = type { i32, %struct.mantis_hwconfig* }
%struct.mantis_hwconfig = type { i32* }
%struct.mantis_pci = type { i32, i32, %struct.mantis_hwconfig*, %struct.pci_dev*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devs = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@mantis_irq_handler = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ERROR: Mantis PCI initialization failed <%d>\00", align 1
@STREAM_TO_HIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ERROR: Mantis stream control failed <%d>\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ERROR: Mantis I2C initialization failed <%d>\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ERROR: Mantis MAC address read failed <%d>\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"ERROR: Mantis DMA initialization failed <%d>\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ERROR: Mantis DVB initialization failed <%d>\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"ERROR: Mantis UART initialization failed <%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mantis_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mantis_pci_drvdata*, align 8
  %7 = alloca %struct.mantis_pci*, align 8
  %8 = alloca %struct.mantis_hwconfig*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mantis_pci* @kzalloc(i32 32, i32 %10)
  store %struct.mantis_pci* %11, %struct.mantis_pci** %7, align 8
  %12 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %13 = icmp ne %struct.mantis_pci* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %142

17:                                               ; preds = %2
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.mantis_pci_drvdata*
  store %struct.mantis_pci_drvdata* %22, %struct.mantis_pci_drvdata** %6, align 8
  %23 = load i32, i32* @devs, align 4
  %24 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %25 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @verbose, align 4
  %27 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %28 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %31 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %30, i32 0, i32 3
  store %struct.pci_dev* %29, %struct.pci_dev** %31, align 8
  %32 = load %struct.mantis_pci_drvdata*, %struct.mantis_pci_drvdata** %6, align 8
  %33 = getelementptr inbounds %struct.mantis_pci_drvdata, %struct.mantis_pci_drvdata* %32, i32 0, i32 1
  %34 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %33, align 8
  store %struct.mantis_hwconfig* %34, %struct.mantis_hwconfig** %8, align 8
  %35 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %8, align 8
  %36 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %35, i32 0, i32 0
  store i32* @mantis_irq_handler, i32** %36, align 8
  %37 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %8, align 8
  %38 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %39 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %38, i32 0, i32 2
  store %struct.mantis_hwconfig* %37, %struct.mantis_hwconfig** %39, align 8
  %40 = load %struct.mantis_pci_drvdata*, %struct.mantis_pci_drvdata** %6, align 8
  %41 = getelementptr inbounds %struct.mantis_pci_drvdata, %struct.mantis_pci_drvdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %44 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %46 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %49 = call i32 @mantis_pci_init(%struct.mantis_pci* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %17
  %53 = load i32, i32* @MANTIS_ERROR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dprintk(i32 %53, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %138

56:                                               ; preds = %17
  %57 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %58 = load i32, i32* @STREAM_TO_HIF, align 4
  %59 = call i32 @mantis_stream_control(%struct.mantis_pci* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @MANTIS_ERROR, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dprintk(i32 %63, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %135

66:                                               ; preds = %56
  %67 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %68 = call i32 @mantis_i2c_init(%struct.mantis_pci* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @MANTIS_ERROR, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dprintk(i32 %72, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %135

75:                                               ; preds = %66
  %76 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %77 = call i32 @mantis_get_mac(%struct.mantis_pci* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @MANTIS_ERROR, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dprintk(i32 %81, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %132

84:                                               ; preds = %75
  %85 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %86 = call i32 @mantis_dma_init(%struct.mantis_pci* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @MANTIS_ERROR, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dprintk(i32 %90, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %132

93:                                               ; preds = %84
  %94 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %95 = call i32 @mantis_dvb_init(%struct.mantis_pci* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @MANTIS_ERROR, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dprintk(i32 %99, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %129

102:                                              ; preds = %93
  %103 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %104 = call i32 @mantis_input_init(%struct.mantis_pci* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @MANTIS_ERROR, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dprintk(i32 %108, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %126

111:                                              ; preds = %102
  %112 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %113 = call i32 @mantis_uart_init(%struct.mantis_pci* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @MANTIS_ERROR, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @dprintk(i32 %117, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @devs, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @devs, align 4
  store i32 0, i32* %3, align 4
  br label %142

123:                                              ; preds = %116
  %124 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %125 = call i32 @mantis_input_exit(%struct.mantis_pci* %124)
  br label %126

126:                                              ; preds = %123, %107
  %127 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %128 = call i32 @mantis_dvb_exit(%struct.mantis_pci* %127)
  br label %129

129:                                              ; preds = %126, %98
  %130 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %131 = call i32 @mantis_dma_exit(%struct.mantis_pci* %130)
  br label %132

132:                                              ; preds = %129, %89, %80
  %133 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %134 = call i32 @mantis_i2c_exit(%struct.mantis_pci* %133)
  br label %135

135:                                              ; preds = %132, %71, %62
  %136 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %137 = call i32 @mantis_pci_exit(%struct.mantis_pci* %136)
  br label %138

138:                                              ; preds = %135, %52
  %139 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  %140 = call i32 @kfree(%struct.mantis_pci* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %120, %14
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.mantis_pci* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mantis_pci_init(%struct.mantis_pci*) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @mantis_stream_control(%struct.mantis_pci*, i32) #1

declare dso_local i32 @mantis_i2c_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_get_mac(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_dma_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_dvb_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_input_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_uart_init(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_input_exit(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_dvb_exit(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_dma_exit(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_i2c_exit(%struct.mantis_pci*) #1

declare dso_local i32 @mantis_pci_exit(%struct.mantis_pci*) #1

declare dso_local i32 @kfree(%struct.mantis_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
