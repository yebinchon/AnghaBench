; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_hfi_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_hfi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32, i32*, %struct.venus_hfi_device* }
%struct.venus_hfi_device = type { i32, %struct.venus_core*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@venus_hfi_ops = common dso_local global i32 0, align 4
@ENC_ROTATION_CAPABILITY = common dso_local global i32 0, align 4
@ENC_SCALING_CAPABILITY = common dso_local global i32 0, align 4
@ENC_DEINTERLACE_CAPABILITY = common dso_local global i32 0, align 4
@DEC_MULTI_STREAM_CAPABILITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_hfi_create(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.venus_hfi_device* @kzalloc(i32 24, i32 %6)
  store %struct.venus_hfi_device* %7, %struct.venus_hfi_device** %4, align 8
  %8 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %9 = icmp ne %struct.venus_hfi_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %15 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %18 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %19 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %18, i32 0, i32 1
  store %struct.venus_core* %17, %struct.venus_core** %19, align 8
  %20 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %21 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %23 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %24 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %23, i32 0, i32 2
  store %struct.venus_hfi_device* %22, %struct.venus_hfi_device** %24, align 8
  %25 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %26 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %25, i32 0, i32 1
  store i32* @venus_hfi_ops, i32** %26, align 8
  %27 = load i32, i32* @ENC_ROTATION_CAPABILITY, align 4
  %28 = load i32, i32* @ENC_SCALING_CAPABILITY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ENC_DEINTERLACE_CAPABILITY, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DEC_MULTI_STREAM_CAPABILITY, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %35 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %37 = call i32 @venus_interface_queues_init(%struct.venus_hfi_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %13
  br label %42

41:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %50

42:                                               ; preds = %40
  %43 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %44 = call i32 @kfree(%struct.venus_hfi_device* %43)
  %45 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %46 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %45, i32 0, i32 2
  store %struct.venus_hfi_device* null, %struct.venus_hfi_device** %46, align 8
  %47 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %48 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %41, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.venus_hfi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @venus_interface_queues_init(%struct.venus_hfi_device*) #1

declare dso_local i32 @kfree(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
