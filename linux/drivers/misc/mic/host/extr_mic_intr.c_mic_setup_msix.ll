; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_dev = type { i32 }

@MIC_MIN_MSIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error enabling MSIx. rc = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%d MSIx irqs setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_device*, %struct.pci_dev*)* @mic_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_setup_msix(%struct.mic_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mic_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mic_device* %0, %struct.mic_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 4, i32* %8, align 4
  %9 = load i32, i32* @MIC_MIN_MSIX, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_8__* @kmalloc_array(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %14 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %15, align 8
  %16 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %17 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %101

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MIC_MIN_MSIX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %32 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %30, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %25

42:                                               ; preds = %25
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %45 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* @MIC_MIN_MSIX, align 4
  %49 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %43, %struct.TYPE_8__* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %95

57:                                               ; preds = %42
  %58 = load i32, i32* @MIC_MIN_MSIX, align 4
  %59 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %60 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %63 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @kzalloc(i32 %68, i32 %69)
  %71 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %72 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %75 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %57
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %92

82:                                               ; preds = %57
  %83 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %84 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %88 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  store i32 0, i32* %3, align 4
  br label %106

92:                                               ; preds = %79
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = call i32 @pci_disable_msix(%struct.pci_dev* %93)
  br label %95

95:                                               ; preds = %92, %52
  %96 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %97 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @kfree(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %95, %21
  %102 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %103 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %82
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_8__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
