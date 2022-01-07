; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Error enabling MSI. rc = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error setting up callbacks\0A\00", align 1
@mic_interrupt = common dso_local global i32 0, align 4
@mic_thread_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mic-msi\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error allocating MSI interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%d MSI irqs setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_device*, %struct.pci_dev*)* @mic_setup_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_setup_msi(%struct.mic_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mic_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mic_device* %0, %struct.mic_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %8 = call i32 @pci_enable_msi(%struct.pci_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %19 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %22 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %31 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %34 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %81

41:                                               ; preds = %17
  %42 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %43 = call i32 @mic_setup_callbacks(%struct.mic_device* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %75

50:                                               ; preds = %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @mic_interrupt, align 4
  %55 = load i32, i32* @mic_thread_fn, align 4
  %56 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %57 = call i32 @request_threaded_irq(i32 %53, i32 %54, i32 %55, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.mic_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %72

64:                                               ; preds = %50
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %68 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  store i32 0, i32* %3, align 4
  br label %88

72:                                               ; preds = %60
  %73 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %74 = call i32 @mic_release_callbacks(%struct.mic_device* %73)
  br label %75

75:                                               ; preds = %72, %46
  %76 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %77 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kfree(i32 %79)
  br label %81

81:                                               ; preds = %75, %38
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = call i32 @pci_disable_msi(%struct.pci_dev* %82)
  %84 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %85 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %64, %11
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @mic_setup_callbacks(%struct.mic_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.mic_device*) #1

declare dso_local i32 @mic_release_callbacks(%struct.mic_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
