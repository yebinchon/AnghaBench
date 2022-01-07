; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.pci_dev*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.pci_dev = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.mic_device*, i64, i64, i32)* }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mic_irq = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"entry %d should be < num_irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"irq: %d freed\0A\00", align 1
@MIC_NUM_OFFSETS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Error unregistering callback\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"callback %d unregistered for src: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic_free_irq(%struct.mic_device* %0, %struct.mic_irq* %1, i8* %2) #0 {
  %4 = alloca %struct.mic_device*, align 8
  %5 = alloca %struct.mic_irq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %4, align 8
  store %struct.mic_irq* %1, %struct.mic_irq** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %13 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %11, align 8
  %15 = load %struct.mic_irq*, %struct.mic_irq** %5, align 8
  %16 = ptrtoint %struct.mic_irq* %15 to i64
  %17 = call i64 @GET_ENTRY(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.mic_irq*, %struct.mic_irq** %5, align 8
  %19 = ptrtoint %struct.mic_irq* %18 to i64
  %20 = call i64 @GET_OFFSET(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %22 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %84

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %29 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %27, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %36 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %35, i32 0, i32 0
  %37 = load %struct.pci_dev*, %struct.pci_dev** %36, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %41 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32*, i8*, ...) @dev_warn(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %43)
  br label %133

45:                                               ; preds = %26
  %46 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %47 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @free_irq(i32 %54, i8* %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @BIT(i64 %57)
  %59 = xor i32 %58, -1
  %60 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %61 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %59
  store i32 %67, i32* %65, align 4
  %68 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %69 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.mic_device*, i64, i64, i32)*, i32 (%struct.mic_device*, i64, i64, i32)** %71, align 8
  %73 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 %72(%struct.mic_device* %73, i64 %74, i64 %75, i32 0)
  %77 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %78 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %77, i32 0, i32 0
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  br label %133

84:                                               ; preds = %3
  %85 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @mic_unregister_intr_callback(%struct.mic_device* %88, i64 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @MIC_NUM_OFFSETS, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %84
  %95 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %96 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %95, i32 0, i32 0
  %97 = load %struct.pci_dev*, %struct.pci_dev** %96, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 1
  %99 = call i32 (i32*, i8*, ...) @dev_warn(i32* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %133

100:                                              ; preds = %84
  %101 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %102 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @BIT(i64 %105)
  %107 = xor i32 %106, -1
  %108 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %109 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %107
  store i32 %115, i32* %113, align 4
  %116 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %117 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (%struct.mic_device*, i64, i64, i32)*, i32 (%struct.mic_device*, i64, i64, i32)** %119, align 8
  %121 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 %120(%struct.mic_device* %121, i64 %122, i64 %123, i32 0)
  br label %125

125:                                              ; preds = %104, %100
  %126 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %127 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %126, i32 0, i32 0
  %128 = load %struct.pci_dev*, %struct.pci_dev** %127, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 1
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %34, %94, %125, %45
  ret void
}

declare dso_local i64 @GET_ENTRY(i64) #1

declare dso_local i64 @GET_OFFSET(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i64 @mic_unregister_intr_callback(%struct.mic_device*, i64) #1

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
