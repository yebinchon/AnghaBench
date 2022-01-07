; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.smi_dev* }
%struct.smi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Port[%d]-DMA CH0 engine complete successful !\0A\00", align 1
@SMI_TS_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"DMA CH0 engine complete length mismatched, finish data=%d !\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Port[%d]-DMA CH1 engine complete successful !\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"DMA CH1 engine complete length mismatched, finish data=%d !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @smi_dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_dma_xfer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.smi_port*, align 8
  %4 = alloca %struct.smi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.smi_port*
  store %struct.smi_port* %11, %struct.smi_port** %3, align 8
  %12 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %13 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %12, i32 0, i32 9
  %14 = load %struct.smi_dev*, %struct.smi_dev** %13, align 8
  store %struct.smi_dev* %14, %struct.smi_dev** %4, align 8
  %15 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %16 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %19 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @smi_read(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 48
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 3145728
  %27 = ashr i32 %26, 20
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %30 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = load %struct.smi_dev*, %struct.smi_dev** %4, align 8
  %39 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %43 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %47 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @smi_read(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 4194303
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 4194304, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SMI_TS_DMA_BUF_SIZE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.smi_dev*, %struct.smi_dev** %4, align 8
  %61 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  %67 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %68 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %67, i32 0, i32 6
  %69 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %70 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %74, 188
  %76 = call i32 @dvb_dmx_swfilter_packets(i32* %68, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %66, %34, %1
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %80 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %127

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = load %struct.smi_dev*, %struct.smi_dev** %4, align 8
  %89 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %93 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %97 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @smi_read(i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 4194303
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %87
  store i32 4194304, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SMI_TS_DMA_BUF_SIZE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.smi_dev*, %struct.smi_dev** %4, align 8
  %111 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @dev_dbg(i32* %113, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %109, %105
  %117 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %118 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %117, i32 0, i32 6
  %119 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %120 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sdiv i32 %124, 188
  %126 = call i32 @dvb_dmx_swfilter_packets(i32* %118, i32 %123, i32 %125)
  br label %127

127:                                              ; preds = %116, %84, %77
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %130 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, 2
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %134, %127
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %140 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, 131072
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %144, %137
  %148 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %149 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @smi_write(i32 %150, i32 %151)
  %153 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %154 = call i32 @smi_port_enableInterrupt(%struct.smi_port* %153)
  ret void
}

declare dso_local i32 @smi_read(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i32, i32) #1

declare dso_local i32 @smi_write(i32, i32) #1

declare dso_local i32 @smi_port_enableInterrupt(%struct.smi_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
