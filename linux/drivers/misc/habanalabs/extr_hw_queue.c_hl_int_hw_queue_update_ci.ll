; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hl_int_hw_queue_update_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hl_int_hw_queue_update_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cs = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_3__*, %struct.hl_hw_queue*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)* }
%struct.hl_hw_queue = type { i64, i32, i32 }

@HL_MAX_QUEUES = common dso_local global i32 0, align 4
@QUEUE_TYPE_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_int_hw_queue_update_ci(%struct.hl_cs* %0) #0 {
  %2 = alloca %struct.hl_cs*, align 8
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_hw_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_cs* %0, %struct.hl_cs** %2, align 8
  %6 = load %struct.hl_cs*, %struct.hl_cs** %2, align 8
  %7 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  store %struct.hl_device* %10, %struct.hl_device** %3, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %14, align 8
  %16 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %17 = call i32 %15(%struct.hl_device* %16)
  %18 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 1
  %26 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %25, align 8
  %27 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %26, i64 0
  store %struct.hl_hw_queue* %27, %struct.hl_hw_queue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %62, %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HL_MAX_QUEUES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %34 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QUEUE_TYPE_INT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.hl_cs*, %struct.hl_cs** %2, align 8
  %40 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %47 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %53 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %58 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %38, %32
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %66 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %65, i32 1
  store %struct.hl_hw_queue* %66, %struct.hl_hw_queue** %4, align 8
  br label %28

67:                                               ; preds = %28
  br label %68

68:                                               ; preds = %67, %22
  %69 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %70 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %72, align 8
  %74 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %75 = call i32 %73(%struct.hl_device* %74)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
