; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_free_solo_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_free_solo_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i64, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @free_solo_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_solo_dev(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %4, i32 0, i32 3
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %8 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %14 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %13, i32 0, i32 2
  %15 = call i32 @device_unregister(%struct.TYPE_2__* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = call i32 @solo_g723_exit(%struct.solo_dev* %22)
  %24 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %25 = call i32 @solo_enc_v4l2_exit(%struct.solo_dev* %24)
  %26 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %27 = call i32 @solo_enc_exit(%struct.solo_dev* %26)
  %28 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %29 = call i32 @solo_v4l2_exit(%struct.solo_dev* %28)
  %30 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %31 = call i32 @solo_disp_exit(%struct.solo_dev* %30)
  %32 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %33 = call i32 @solo_gpio_exit(%struct.solo_dev* %32)
  %34 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %35 = call i32 @solo_p2m_exit(%struct.solo_dev* %34)
  %36 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %37 = call i32 @solo_i2c_exit(%struct.solo_dev* %36)
  %38 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %39 = call i32 @solo_irq_off(%struct.solo_dev* %38, i32 -1)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %44 = call i32 @free_irq(i32 %42, %struct.solo_dev* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pci_iounmap(%struct.pci_dev* %45, i64 %48)
  br label %50

50:                                               ; preds = %21, %16
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = call i32 @pci_release_regions(%struct.pci_dev* %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_disable_device(%struct.pci_dev* %53)
  %55 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %56 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %55, i32 0, i32 0
  %57 = call i32 @v4l2_device_unregister(i32* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = call i32 @pci_set_drvdata(%struct.pci_dev* %58, i32* null)
  %60 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %61 = call i32 @kfree(%struct.solo_dev* %60)
  ret void
}

declare dso_local i32 @device_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @solo_g723_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_enc_v4l2_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_enc_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_v4l2_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_disp_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_gpio_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_p2m_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_i2c_exit(%struct.solo_dev*) #1

declare dso_local i32 @solo_irq_off(%struct.solo_dev*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.solo_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
