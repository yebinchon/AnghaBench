; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.cobalt = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@COBALT_NUM_ADAPTERS = common dso_local global i32 0, align 4
@COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"removed cobalt card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cobalt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.cobalt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.v4l2_device* %9, %struct.v4l2_device** %3, align 8
  %10 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %11 = call %struct.cobalt* @to_cobalt(%struct.v4l2_device* %10)
  store %struct.cobalt* %11, %struct.cobalt** %4, align 8
  %12 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %13 = call i32 @cobalt_flash_remove(%struct.cobalt* %12)
  %14 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %15 = call i32 @cobalt_set_interrupt(%struct.cobalt* %14, i32 0)
  %16 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %17 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @flush_workqueue(i32 %18)
  %20 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %21 = call i32 @cobalt_nodes_unregister(%struct.cobalt* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %45, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @COBALT_NUM_ADAPTERS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %28 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %33, align 8
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %6, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = icmp eq %struct.v4l2_subdev* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %40 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %39)
  store %struct.i2c_client* %40, %struct.i2c_client** %7, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %42 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %44 = call i32 @i2c_unregister_device(%struct.i2c_client* %43)
  br label %45

45:                                               ; preds = %38, %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %50 = call i32 @cobalt_i2c_exit(%struct.cobalt* %49)
  %51 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @cobalt_free_msi(%struct.cobalt* %51, %struct.pci_dev* %52)
  %54 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %55 = load i32, i32* @COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT, align 4
  %56 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %54, i32 %55, i32 0)
  %57 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = call i32 @cobalt_pci_iounmap(%struct.cobalt* %57, %struct.pci_dev* %58)
  %60 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %61 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pci_release_regions(i32 %62)
  %64 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %65 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pci_disable_device(i32 %66)
  %68 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %69 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @destroy_workqueue(i32 %70)
  %72 = call i32 @cobalt_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %74 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %73)
  %75 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %76 = call i32 @kfree(%struct.cobalt* %75)
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.cobalt* @to_cobalt(%struct.v4l2_device*) #1

declare dso_local i32 @cobalt_flash_remove(%struct.cobalt*) #1

declare dso_local i32 @cobalt_set_interrupt(%struct.cobalt*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @cobalt_nodes_unregister(%struct.cobalt*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @cobalt_i2c_exit(%struct.cobalt*) #1

declare dso_local i32 @cobalt_free_msi(%struct.cobalt*, %struct.pci_dev*) #1

declare dso_local i32 @cobalt_s_bit_sysctrl(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @cobalt_pci_iounmap(%struct.cobalt*, %struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @cobalt_info(i8*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @kfree(%struct.cobalt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
