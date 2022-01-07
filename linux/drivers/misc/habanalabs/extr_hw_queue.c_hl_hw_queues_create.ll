; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hl_hw_queues_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hl_hw_queues_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.hl_hw_queue*, i32, %struct.asic_fixed_properties }
%struct.hl_hw_queue = type { i32 }
%struct.asic_fixed_properties = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HL_MAX_QUEUES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Not enough memory for H/W queues\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to initialize queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_hw_queues_create(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca %struct.hl_hw_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 2
  store %struct.asic_fixed_properties* %10, %struct.asic_fixed_properties** %4, align 8
  %11 = load i32, i32* @HL_MAX_QUEUES, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hl_hw_queue* @kcalloc(i32 %11, i32 4, i32 %12)
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 0
  store %struct.hl_hw_queue* %13, %struct.hl_hw_queue** %15, align 8
  %16 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 0
  %18 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %17, align 8
  %19 = icmp ne %struct.hl_hw_queue* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %90

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %28 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %29, align 8
  store %struct.hl_hw_queue* %30, %struct.hl_hw_queue** %5, align 8
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HL_MAX_QUEUES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %37 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %45 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %47 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hw_queue_init(%struct.hl_device* %46, %struct.hl_hw_queue* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %67

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %65 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %64, i32 1
  store %struct.hl_hw_queue* %65, %struct.hl_hw_queue** %5, align 8
  br label %31

66:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %90

67:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  %68 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %69 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %68, i32 0, i32 0
  %70 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %69, align 8
  store %struct.hl_hw_queue* %70, %struct.hl_hw_queue** %5, align 8
  br label %71

71:                                               ; preds = %79, %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %77 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %78 = call i32 @hw_queue_fini(%struct.hl_device* %76, %struct.hl_hw_queue* %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %83 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %82, i32 1
  store %struct.hl_hw_queue* %83, %struct.hl_hw_queue** %5, align 8
  br label %71

84:                                               ; preds = %71
  %85 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %86 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %85, i32 0, i32 0
  %87 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %86, align 8
  %88 = call i32 @kfree(%struct.hl_hw_queue* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %66, %20
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.hl_hw_queue* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hw_queue_init(%struct.hl_device*, %struct.hl_hw_queue*, i32) #1

declare dso_local i32 @hw_queue_fini(%struct.hl_device*, %struct.hl_hw_queue*) #1

declare dso_local i32 @kfree(%struct.hl_hw_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
