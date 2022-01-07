; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_module.c_ibmasm_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_module.c_ibmasm_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.service_processor = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unregistering UART\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Sending OS down message\0A\00", align 1
@SYSTEM_STATE_OS_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to get response to 'Send OS State' command\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Disabling heartbeats\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Disabling interrupts\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Freeing SP irq\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Cleaning up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ibmasm_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmasm_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.service_processor*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.service_processor* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.service_processor* %5, %struct.service_processor** %3, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %8 = call i32 @ibmasm_unregister_uart(%struct.service_processor* %7)
  %9 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %11 = load i32, i32* @SYSTEM_STATE_OS_DOWN, align 4
  %12 = call i64 @ibmasm_send_os_state(%struct.service_processor* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %18 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %19 = call i32 @ibmasm_heartbeat_exit(%struct.service_processor* %18)
  %20 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %21 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %22 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @disable_sp_interrupts(i32 %23)
  %25 = call i32 @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %26 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %27 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %30 = bitcast %struct.service_processor* %29 to i8*
  %31 = call i32 @free_irq(i32 %28, i8* %30)
  %32 = call i32 @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %34 = call i32 @ibmasm_free_remote_input_dev(%struct.service_processor* %33)
  %35 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %36 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iounmap(i32 %37)
  %39 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %40 = call i32 @ibmasm_event_buffer_exit(%struct.service_processor* %39)
  %41 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %42 = call i32 @kfree(%struct.service_processor* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_release_regions(%struct.pci_dev* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_disable_device(%struct.pci_dev* %45)
  ret void
}

declare dso_local %struct.service_processor* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @ibmasm_unregister_uart(%struct.service_processor*) #1

declare dso_local i64 @ibmasm_send_os_state(%struct.service_processor*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @ibmasm_heartbeat_exit(%struct.service_processor*) #1

declare dso_local i32 @disable_sp_interrupts(i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @ibmasm_free_remote_input_dev(%struct.service_processor*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @ibmasm_event_buffer_exit(%struct.service_processor*) #1

declare dso_local i32 @kfree(%struct.service_processor*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
