; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, i32, i32, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32 }
%struct.mei_cl_cb = type { i32, i32 }

@MEI_WRITE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_cl_complete(%struct.mei_cl* %0, %struct.mei_cl_cb* %1) #0 {
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_cl_cb*, align 8
  %5 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  store %struct.mei_cl_cb* %1, %struct.mei_cl_cb** %4, align 8
  %6 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %7 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %6, i32 0, i32 6
  %8 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  store %struct.mei_device* %8, %struct.mei_device** %5, align 8
  %9 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %10 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %83 [
    i32 128, label %12
    i32 129, label %36
    i32 134, label %68
    i32 133, label %68
    i32 130, label %68
    i32 131, label %68
    i32 132, label %78
  ]

12:                                               ; preds = %2
  %13 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %14 = call i32 @mei_tx_cb_dequeue(%struct.mei_cl_cb* %13)
  %15 = load i32, i32* @MEI_WRITE_COMPLETE, align 4
  %16 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %17 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %19 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %18, i32 0, i32 4
  %20 = call i32 @waitqueue_active(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %24 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %23, i32 0, i32 4
  %25 = call i32 @wake_up_interruptible(i32* %24)
  br label %35

26:                                               ; preds = %12
  %27 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_mark_last_busy(i32 %29)
  %31 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_request_autosuspend(i32 %33)
  br label %35

35:                                               ; preds = %26, %22
  br label %85

36:                                               ; preds = %2
  %37 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %38 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %37, i32 0, i32 1
  %39 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %40 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %39, i32 0, i32 3
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %43 = call i32 @mei_cl_is_fixed_address(%struct.mei_cl* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %36
  %46 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %47 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %56 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %54, %45, %36
  %60 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %61 = call i32 @mei_cl_bus_rx_event(%struct.mei_cl* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %65 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %64, i32 0, i32 1
  %66 = call i32 @wake_up_interruptible(i32* %65)
  br label %67

67:                                               ; preds = %63, %59
  br label %85

68:                                               ; preds = %2, %2, %2, %2
  %69 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %70 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %69, i32 0, i32 0
  %71 = call i32 @waitqueue_active(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %75 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %74, i32 0, i32 0
  %76 = call i32 @wake_up(i32* %75)
  br label %77

77:                                               ; preds = %73, %68
  br label %85

78:                                               ; preds = %2
  %79 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %80 = call i32 @mei_io_cb_free(%struct.mei_cl_cb* %79)
  %81 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %82 = call i32 @mei_cl_set_disconnected(%struct.mei_cl* %81)
  br label %85

83:                                               ; preds = %2
  %84 = call i32 @BUG_ON(i32 0)
  br label %85

85:                                               ; preds = %83, %78, %77, %67, %35
  ret void
}

declare dso_local i32 @mei_tx_cb_dequeue(%struct.mei_cl_cb*) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_request_autosuspend(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mei_cl_is_fixed_address(%struct.mei_cl*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mei_cl_bus_rx_event(%struct.mei_cl*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mei_io_cb_free(%struct.mei_cl_cb*) #1

declare dso_local i32 @mei_cl_set_disconnected(%struct.mei_cl*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
