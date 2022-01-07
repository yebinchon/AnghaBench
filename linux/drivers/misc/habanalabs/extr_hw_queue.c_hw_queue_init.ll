; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hw_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hw_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_hw_queue = type { i32, i32, i32 }

@HL_QUEUE_SIZE_IN_BYTES = common dso_local global i64 0, align 8
@HL_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"wrong queue type %d during init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_hw_queue*, i32)* @hw_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_queue_init(%struct.hl_device* %0, %struct.hl_hw_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_hw_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_hw_queue* %1, %struct.hl_hw_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @HL_QUEUE_SIZE_IN_BYTES, align 8
  %10 = load i64, i64* @HL_PAGE_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %16 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %18 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 130, label %20
    i32 129, label %24
    i32 131, label %28
    i32 128, label %32
  ]

20:                                               ; preds = %3
  %21 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %22 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %23 = call i32 @ext_hw_queue_init(%struct.hl_device* %21, %struct.hl_hw_queue* %22)
  store i32 %23, i32* %8, align 4
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %26 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %27 = call i32 @int_hw_queue_init(%struct.hl_device* %25, %struct.hl_hw_queue* %26)
  store i32 %27, i32* %8, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %30 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %31 = call i32 @cpu_hw_queue_init(%struct.hl_device* %29, %struct.hl_hw_queue* %30)
  store i32 %31, i32* %8, align 4
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %34 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %40 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_crit(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %35, %28, %24, %20
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %45
  %51 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %6, align 8
  %52 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %48, %32
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ext_hw_queue_init(%struct.hl_device*, %struct.hl_hw_queue*) #1

declare dso_local i32 @int_hw_queue_init(%struct.hl_device*, %struct.hl_hw_queue*) #1

declare dso_local i32 @cpu_hw_queue_init(%struct.hl_device*, %struct.hl_hw_queue*) #1

declare dso_local i32 @dev_crit(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
