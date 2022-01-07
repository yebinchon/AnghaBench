; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_debugfs.c_mic_msi_irq_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_debugfs.c_mic_msi_irq_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mic_device* }
%struct.mic_device = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.pci_dev* }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.mic_device*, i64)* }
%struct.pci_dev = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"%s %-10d %s %-10d MXAR[%d]: %08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IRQ:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Entry:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%-10s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"offset:\00", align 1
@MIC_NUM_OFFSETS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%4d \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"count:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"MSI/MSIx interrupts not enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mic_msi_irq_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_msi_irq_info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mic_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.mic_device*, %struct.mic_device** %13, align 8
  store %struct.mic_device* %14, %struct.mic_device** %5, align 8
  %15 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %16 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %15, i32 0, i32 2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %11, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %19 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %123

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %119, %21
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %25 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %122

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %36 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %45 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %57

53:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %53, %34
  %58 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %59 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.mic_device*, i64)*, i32 (%struct.mic_device*, i64)** %61, align 8
  %63 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 %62(%struct.mic_device* %63, i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %68, i32 %69, i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @MIC_NUM_OFFSETS, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %83, %57
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  br label %76

86:                                               ; preds = %76
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = call i32 @seq_puts(%struct.seq_file* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* @MIC_NUM_OFFSETS, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %113, %86
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %99 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %8, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %118 = call i32 @seq_puts(%struct.seq_file* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %22

122:                                              ; preds = %22
  br label %126

123:                                              ; preds = %2
  %124 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %125 = call i32 @seq_puts(%struct.seq_file* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %122
  ret i32 0
}

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
