; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_int_hw_queue_schedule_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_int_hw_queue_schedule_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cs_job = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_6__*, %struct.hl_hw_queue* }
%struct.TYPE_6__ = type { i32 (%struct.hl_device*, i32, i32)*, i32 (%struct.hl_device*, i32*, %struct.hl_bd*)* }
%struct.hl_bd = type { i32, i32, i64 }
%struct.hl_hw_queue = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_cs_job*)* @int_hw_queue_schedule_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_hw_queue_schedule_job(%struct.hl_cs_job* %0) #0 {
  %2 = alloca %struct.hl_cs_job*, align 8
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_hw_queue*, align 8
  %5 = alloca %struct.hl_bd, align 8
  %6 = alloca i32*, align 8
  store %struct.hl_cs_job* %0, %struct.hl_cs_job** %2, align 8
  %7 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %8 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  store %struct.hl_device* %13, %struct.hl_device** %3, align 8
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 1
  %16 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %15, align 8
  %17 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %18 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %16, i64 %19
  store %struct.hl_hw_queue* %20, %struct.hl_hw_queue** %4, align 8
  %21 = getelementptr inbounds %struct.hl_bd, %struct.hl_bd* %5, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %23 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.hl_bd, %struct.hl_bd* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %28 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @cpu_to_le64(i32 %30)
  %32 = getelementptr inbounds %struct.hl_bd, %struct.hl_bd* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %34 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %37 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %40 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %38, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 16
  %46 = add i64 %35, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %6, align 8
  %48 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %49 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %53 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %58 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %62 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32 (%struct.hl_device*, i32*, %struct.hl_bd*)*, i32 (%struct.hl_device*, i32*, %struct.hl_bd*)** %64, align 8
  %66 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 %65(%struct.hl_device* %66, i32* %67, %struct.hl_bd* %5)
  %69 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %70 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.hl_device*, i32, i32)*, i32 (%struct.hl_device*, i32, i32)** %72, align 8
  %74 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %75 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %76 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %79 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %73(%struct.hl_device* %74, i32 %77, i32 %80)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
