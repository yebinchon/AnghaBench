; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_ext_queue_sanity_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_ext_queue_sanity_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hl_hw_queue = type { i64 }

@HL_QUEUE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Queue %d doesn't have room for %d CBs\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No space for %d on CQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_hw_queue*, i32, i32)* @ext_queue_sanity_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_queue_sanity_checks(%struct.hl_device* %0, %struct.hl_hw_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_hw_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store %struct.hl_hw_queue* %1, %struct.hl_hw_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %7, align 8
  %16 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %19, i32** %10, align 8
  %20 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %7, align 8
  %21 = load i32, i32* @HL_QUEUE_LENGTH, align 4
  %22 = call i32 @queue_free_slots(%struct.hl_hw_queue* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %7, align 8
  %31 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, -1
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @atomic_add_negative(i32 %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %49 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %7, align 8
  %53 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @atomic_add(i32 %57, i32* %58)
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62, %38
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %47, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @queue_free_slots(%struct.hl_hw_queue*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @atomic_add_negative(i32, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
