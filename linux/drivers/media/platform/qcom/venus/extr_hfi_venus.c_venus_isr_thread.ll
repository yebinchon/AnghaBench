; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_hfi_device = type { i32, i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.venus_resources* }
%struct.venus_resources = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@WRAPPER_INTR_STATUS_A2HWD_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*)* @venus_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_isr_thread(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca %struct.venus_resources*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %8 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %9 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %8)
  store %struct.venus_hfi_device* %9, %struct.venus_hfi_device** %4, align 8
  %10 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %11 = icmp ne %struct.venus_hfi_device* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %16 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.venus_resources*, %struct.venus_resources** %18, align 8
  store %struct.venus_resources* %19, %struct.venus_resources** %5, align 8
  %20 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %21 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %24 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WRAPPER_INTR_STATUS_A2HWD_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %31 = call i32 @venus_sfr_print(%struct.venus_hfi_device* %30)
  %32 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %33 = call i32 @hfi_process_watchdog_timeout(%struct.venus_core* %32)
  br label %34

34:                                               ; preds = %29, %14
  br label %35

35:                                               ; preds = %72, %34
  %36 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @venus_iface_msgq_read(%struct.venus_hfi_device* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %73

41:                                               ; preds = %35
  %42 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @hfi_process_msg_packet(%struct.venus_core* %42, i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %71 [
    i32 131, label %46
    i32 130, label %50
    i32 128, label %63
    i32 129, label %67
  ]

46:                                               ; preds = %41
  %47 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @venus_process_msg_sys_error(%struct.venus_hfi_device* %47, i8* %48)
  br label %72

50:                                               ; preds = %41
  %51 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %52 = load %struct.venus_resources*, %struct.venus_resources** %5, align 8
  %53 = getelementptr inbounds %struct.venus_resources, %struct.venus_resources* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.venus_resources*, %struct.venus_resources** %5, align 8
  %56 = getelementptr inbounds %struct.venus_resources, %struct.venus_resources* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.venus_resources*, %struct.venus_resources** %5, align 8
  %59 = getelementptr inbounds %struct.venus_resources, %struct.venus_resources* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %62 = call i32 @venus_hfi_core_set_resource(%struct.venus_core* %51, i32 %54, i32 %57, i32 %60, %struct.venus_hfi_device* %61)
  br label %72

63:                                               ; preds = %41
  %64 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %65 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %64, i32 0, i32 2
  %66 = call i32 @complete(i32* %65)
  br label %72

67:                                               ; preds = %41
  %68 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %69 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %68, i32 0, i32 1
  %70 = call i32 @complete(i32* %69)
  br label %72

71:                                               ; preds = %41
  br label %72

72:                                               ; preds = %71, %67, %63, %50, %46
  br label %35

73:                                               ; preds = %35
  %74 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %75 = call i32 @venus_flush_debug_queue(%struct.venus_hfi_device* %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

declare dso_local i32 @venus_sfr_print(%struct.venus_hfi_device*) #1

declare dso_local i32 @hfi_process_watchdog_timeout(%struct.venus_core*) #1

declare dso_local i32 @venus_iface_msgq_read(%struct.venus_hfi_device*, i8*) #1

declare dso_local i32 @hfi_process_msg_packet(%struct.venus_core*, i8*) #1

declare dso_local i32 @venus_process_msg_sys_error(%struct.venus_hfi_device*, i8*) #1

declare dso_local i32 @venus_hfi_core_set_resource(%struct.venus_core*, i32, i32, i32, %struct.venus_hfi_device*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @venus_flush_debug_queue(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
