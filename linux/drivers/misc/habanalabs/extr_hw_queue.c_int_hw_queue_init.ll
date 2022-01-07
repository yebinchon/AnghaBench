; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_int_hw_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_int_hw_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.hl_device*, i32, i32*, i32*)* }
%struct.hl_hw_queue = type { i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Failed to get base address for internal queue %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_hw_queue*)* @int_hw_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_hw_queue_init(%struct.hl_device* %0, %struct.hl_hw_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_hw_queue*, align 8
  %6 = alloca i8*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_hw_queue* %1, %struct.hl_hw_queue** %5, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8* (%struct.hl_device*, i32, i32*, i32*)*, i8* (%struct.hl_device*, i32, i32*, i32*)** %10, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %13 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %14 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %17 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %16, i32 0, i32 5
  %18 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %19 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %18, i32 0, i32 4
  %20 = call i8* %11(%struct.hl_device* %12, i32 %15, i32* %17, i32* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %2
  %24 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %28 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %37 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %39 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %41 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
