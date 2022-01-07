; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.cx18 = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.cx18** }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Removing Card\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Stopping all streams\0A\00", align 1
@IRQ_CPU_TO_EPU = common dso_local global i32 0, align 4
@IRQ_APU_TO_EPU = common dso_local global i32 0, align 4
@IRQ_CPU_TO_EPU_ACK = common dso_local global i32 0, align 4
@IRQ_APU_TO_EPU_ACK = common dso_local global i32 0, align 4
@CX18_MEM_SIZE = common dso_local global i32 0, align 4
@CX18_VBI_FRAMES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Removed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cx18_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.v4l2_device* %7, %struct.v4l2_device** %3, align 8
  %8 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %9 = call %struct.cx18* @to_cx18(%struct.v4l2_device* %8)
  store %struct.cx18* %9, %struct.cx18** %4, align 8
  %10 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cx18*, %struct.cx18** %4, align 8
  %12 = call i32 @flush_request_modules(%struct.cx18* %11)
  %13 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.cx18*, %struct.cx18** %4, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 6
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.cx18*, %struct.cx18** %4, align 8
  %20 = call i32 @cx18_stop_all_captures(%struct.cx18* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.cx18*, %struct.cx18** %4, align 8
  %23 = load i32, i32* @IRQ_CPU_TO_EPU, align 4
  %24 = load i32, i32* @IRQ_APU_TO_EPU, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @cx18_sw1_irq_disable(%struct.cx18* %22, i32 %25)
  %27 = load %struct.cx18*, %struct.cx18** %4, align 8
  %28 = call i32 @cx18_cancel_in_work_orders(%struct.cx18* %27)
  %29 = load %struct.cx18*, %struct.cx18** %4, align 8
  %30 = call i32 @cx18_cancel_out_work_orders(%struct.cx18* %29)
  %31 = load %struct.cx18*, %struct.cx18** %4, align 8
  %32 = load i32, i32* @IRQ_CPU_TO_EPU_ACK, align 4
  %33 = load i32, i32* @IRQ_APU_TO_EPU_ACK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cx18_sw2_irq_disable(%struct.cx18* %31, i32 %34)
  %36 = load %struct.cx18*, %struct.cx18** %4, align 8
  %37 = call i32 @cx18_halt_firmware(%struct.cx18* %36)
  %38 = load %struct.cx18*, %struct.cx18** %4, align 8
  %39 = getelementptr inbounds %struct.cx18, %struct.cx18* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @destroy_workqueue(i32 %40)
  %42 = load %struct.cx18*, %struct.cx18** %4, align 8
  %43 = call i32 @cx18_streams_cleanup(%struct.cx18* %42, i32 1)
  %44 = load %struct.cx18*, %struct.cx18** %4, align 8
  %45 = call i32 @exit_cx18_i2c(%struct.cx18* %44)
  %46 = load %struct.cx18*, %struct.cx18** %4, align 8
  %47 = getelementptr inbounds %struct.cx18, %struct.cx18* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cx18*, %struct.cx18** %4, align 8
  %52 = bitcast %struct.cx18* %51 to i8*
  %53 = call i32 @free_irq(i32 %50, i8* %52)
  %54 = load %struct.cx18*, %struct.cx18** %4, align 8
  %55 = call i32 @cx18_iounmap(%struct.cx18* %54)
  %56 = load %struct.cx18*, %struct.cx18** %4, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CX18_MEM_SIZE, align 4
  %60 = call i32 @release_mem_region(i32 %58, i32 %59)
  %61 = load %struct.cx18*, %struct.cx18** %4, align 8
  %62 = getelementptr inbounds %struct.cx18, %struct.cx18* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @pci_disable_device(%struct.TYPE_6__* %63)
  %65 = load %struct.cx18*, %struct.cx18** %4, align 8
  %66 = getelementptr inbounds %struct.cx18, %struct.cx18* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.cx18**, %struct.cx18*** %67, align 8
  %69 = getelementptr inbounds %struct.cx18*, %struct.cx18** %68, i64 0
  %70 = load %struct.cx18*, %struct.cx18** %69, align 8
  %71 = icmp ne %struct.cx18* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @CX18_VBI_FRAMES, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.cx18*, %struct.cx18** %4, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.cx18**, %struct.cx18*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cx18*, %struct.cx18** %81, i64 %83
  %85 = load %struct.cx18*, %struct.cx18** %84, align 8
  %86 = call i32 @kfree(%struct.cx18* %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %73

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %21
  %92 = load %struct.cx18*, %struct.cx18** %4, align 8
  %93 = getelementptr inbounds %struct.cx18, %struct.cx18* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @v4l2_ctrl_handler_free(i32* %94)
  %96 = load %struct.cx18*, %struct.cx18** %4, align 8
  %97 = getelementptr inbounds %struct.cx18, %struct.cx18* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CX18_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %101 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %100)
  %102 = load %struct.cx18*, %struct.cx18** %4, align 8
  %103 = call i32 @kfree(%struct.cx18* %102)
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.cx18* @to_cx18(%struct.v4l2_device*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i32 @flush_request_modules(%struct.cx18*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx18_stop_all_captures(%struct.cx18*) #1

declare dso_local i32 @cx18_sw1_irq_disable(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_cancel_in_work_orders(%struct.cx18*) #1

declare dso_local i32 @cx18_cancel_out_work_orders(%struct.cx18*) #1

declare dso_local i32 @cx18_sw2_irq_disable(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_halt_firmware(%struct.cx18*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @cx18_streams_cleanup(%struct.cx18*, i32) #1

declare dso_local i32 @exit_cx18_i2c(%struct.cx18*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @cx18_iounmap(%struct.cx18*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.cx18*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @CX18_INFO(i8*, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
