; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.smi_dev = type { i32, i32*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@MSI_INT_ENA_CLR = common dso_local global i32 0, align 4
@ALL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @smi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.smi_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.smi_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.smi_dev* %5, %struct.smi_dev** %3, align 8
  %6 = load i32, i32* @MSI_INT_ENA_CLR, align 4
  %7 = load i32, i32* @ALL_INT, align 4
  %8 = call i32 @smi_write(i32 %6, i32 %7)
  %9 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %10 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.smi_dev* %14)
  %16 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %17 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %24 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = call i32 @smi_port_detach(i32* %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %30 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %37 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @smi_port_detach(i32* %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %43 = call i32 @smi_ir_exit(%struct.smi_dev* %42)
  %44 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %45 = call i32 @smi_i2c_exit(%struct.smi_dev* %44)
  %46 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %47 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @iounmap(i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_set_drvdata(%struct.pci_dev* %50, i32* null)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %55 = call i32 @kfree(%struct.smi_dev* %54)
  ret void
}

declare dso_local %struct.smi_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @smi_write(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.smi_dev*) #1

declare dso_local i32 @smi_port_detach(i32*) #1

declare dso_local i32 @smi_ir_exit(%struct.smi_dev*) #1

declare dso_local i32 @smi_i2c_exit(%struct.smi_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.smi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
