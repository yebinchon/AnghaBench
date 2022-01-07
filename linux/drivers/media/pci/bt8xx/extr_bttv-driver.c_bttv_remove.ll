; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.bttv = type { i32, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@bttv_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%d: unloading\0A\00", align 1
@bttv_tvcards = common dso_local global %struct.TYPE_8__* null, align 8
@BT848_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@BT848_INT_MASK = common dso_local global i32 0, align 4
@BT848_INT_STAT = common dso_local global i32 0, align 4
@BT848_GPIO_OUT_EN = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@bttvs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bttv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.bttv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.v4l2_device* %6, %struct.v4l2_device** %3, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %8 = call %struct.bttv* @to_bttv(%struct.v4l2_device* %7)
  store %struct.bttv* %8, %struct.bttv** %4, align 8
  %9 = load i64, i64* @bttv_verbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.bttv*, %struct.bttv** %4, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %19 = load %struct.bttv*, %struct.bttv** %4, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.bttv*, %struct.bttv** %4, align 8
  %29 = call i32 @flush_request_modules(%struct.bttv* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %32 = call i32 @btand(i32 -16, i32 %31)
  %33 = load i32, i32* @BT848_INT_MASK, align 4
  %34 = call i32 @btwrite(i32 0, i32 %33)
  %35 = load i32, i32* @BT848_INT_STAT, align 4
  %36 = call i32 @btwrite(i32 -1, i32 %35)
  %37 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %38 = call i32 @btwrite(i32 0, i32 %37)
  %39 = load i64, i64* @bttv_gpio, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.bttv*, %struct.bttv** %4, align 8
  %43 = call i32 @bttv_gpio_tracking(%struct.bttv* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.bttv*, %struct.bttv** %4, align 8
  %46 = getelementptr inbounds %struct.bttv, %struct.bttv* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.bttv*, %struct.bttv** %4, align 8
  %48 = call i32 @bttv_input_fini(%struct.bttv* %47)
  %49 = load %struct.bttv*, %struct.bttv** %4, align 8
  %50 = getelementptr inbounds %struct.bttv, %struct.bttv* %49, i32 0, i32 1
  %51 = call i32 @bttv_sub_del_devices(%struct.TYPE_9__* %50)
  %52 = load %struct.bttv*, %struct.bttv** %4, align 8
  %53 = call i32 @fini_bttv_i2c(%struct.bttv* %52)
  %54 = load %struct.bttv*, %struct.bttv** %4, align 8
  %55 = call i32 @bttv_unregister_video(%struct.bttv* %54)
  %56 = load %struct.bttv*, %struct.bttv** %4, align 8
  %57 = getelementptr inbounds %struct.bttv, %struct.bttv* %56, i32 0, i32 5
  %58 = call i32 @v4l2_ctrl_handler_free(i32* %57)
  %59 = load %struct.bttv*, %struct.bttv** %4, align 8
  %60 = getelementptr inbounds %struct.bttv, %struct.bttv* %59, i32 0, i32 4
  %61 = call i32 @v4l2_ctrl_handler_free(i32* %60)
  %62 = load %struct.bttv*, %struct.bttv** %4, align 8
  %63 = getelementptr inbounds %struct.bttv, %struct.bttv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load %struct.bttv*, %struct.bttv** %4, align 8
  %67 = getelementptr inbounds %struct.bttv, %struct.bttv* %66, i32 0, i32 3
  %68 = call i32 @btcx_riscmem_free(%struct.TYPE_7__* %65, i32* %67)
  %69 = load %struct.bttv*, %struct.bttv** %4, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bttv*, %struct.bttv** %4, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.bttv* %75)
  %77 = load %struct.bttv*, %struct.bttv** %4, align 8
  %78 = getelementptr inbounds %struct.bttv, %struct.bttv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iounmap(i32 %79)
  %81 = load %struct.bttv*, %struct.bttv** %4, align 8
  %82 = getelementptr inbounds %struct.bttv, %struct.bttv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @pci_resource_start(%struct.TYPE_7__* %84, i32 0)
  %86 = load %struct.bttv*, %struct.bttv** %4, align 8
  %87 = getelementptr inbounds %struct.bttv, %struct.bttv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i32 @pci_resource_len(%struct.TYPE_7__* %89, i32 0)
  %91 = call i32 @release_mem_region(i32 %85, i32 %90)
  %92 = load %struct.bttv*, %struct.bttv** %4, align 8
  %93 = getelementptr inbounds %struct.bttv, %struct.bttv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 @pci_disable_device(%struct.TYPE_7__* %95)
  %97 = load %struct.bttv*, %struct.bttv** %4, align 8
  %98 = getelementptr inbounds %struct.bttv, %struct.bttv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = call i32 @v4l2_device_unregister(i32* %99)
  %101 = load i32**, i32*** @bttvs, align 8
  %102 = load %struct.bttv*, %struct.bttv** %4, align 8
  %103 = getelementptr inbounds %struct.bttv, %struct.bttv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32*, i32** %101, i64 %105
  store i32* null, i32** %106, align 8
  %107 = load %struct.bttv*, %struct.bttv** %4, align 8
  %108 = call i32 @kfree(%struct.bttv* %107)
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bttv* @to_bttv(%struct.v4l2_device*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @flush_request_modules(%struct.bttv*) #1

declare dso_local i32 @btand(i32, i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

declare dso_local i32 @bttv_input_fini(%struct.bttv*) #1

declare dso_local i32 @bttv_sub_del_devices(%struct.TYPE_9__*) #1

declare dso_local i32 @fini_bttv_i2c(%struct.bttv*) #1

declare dso_local i32 @bttv_unregister_video(%struct.bttv*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @btcx_riscmem_free(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.bttv*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.bttv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
