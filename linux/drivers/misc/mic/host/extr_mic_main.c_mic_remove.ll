; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_main.c_mic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_main.c_mic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mic_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@g_mic_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mic_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.mic_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.mic_device* %5, %struct.mic_device** %3, align 8
  %6 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %7 = icmp ne %struct.mic_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %11 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cosm_unregister_device(i32 %12)
  %14 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %15 = call i32 @mic_delete_debug_dir(%struct.mic_device* %14)
  %16 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %17 = call i32 @mic_dp_uninit(%struct.mic_device* %16)
  %18 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %19 = call i32 @mic_smpt_uninit(%struct.mic_device* %18)
  %20 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @mic_free_interrupts(%struct.mic_device* %20, %struct.pci_dev* %21)
  %23 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %24 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iounmap(i32 %26)
  %28 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %29 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_release_regions(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_disable_device(%struct.pci_dev* %35)
  %37 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %38 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ida_simple_remove(i32* @g_mic_ida, i32 %39)
  %41 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %42 = call i32 @kfree(%struct.mic_device* %41)
  br label %43

43:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.mic_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cosm_unregister_device(i32) #1

declare dso_local i32 @mic_delete_debug_dir(%struct.mic_device*) #1

declare dso_local i32 @mic_dp_uninit(%struct.mic_device*) #1

declare dso_local i32 @mic_smpt_uninit(%struct.mic_device*) #1

declare dso_local i32 @mic_free_interrupts(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
