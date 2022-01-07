; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_ext_hw_queue_schedule_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_ext_hw_queue_schedule_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cs_job = type { i64, i32, %struct.hl_cb*, %struct.TYPE_5__* }
%struct.hl_cb = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_6__*, %struct.hl_cq*, %struct.hl_hw_queue* }
%struct.TYPE_6__ = type { i32 (%struct.hl_device*, i32, i32, i64, i32, i64)* }
%struct.hl_cq = type { i32, i64 }
%struct.hl_hw_queue = type { i32, i64, %struct.hl_cs_job** }
%struct.hl_cq_entry = type { i32 }

@BD_CTL_SHADOW_INDEX_SHIFT = common dso_local global i32 0, align 4
@BD_CTL_SHADOW_INDEX_MASK = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_SHIFT = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_MASK = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_VALID_SHIFT = common dso_local global i32 0, align 4
@CQ_ENTRY_READY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_cs_job*)* @ext_hw_queue_schedule_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_hw_queue_schedule_job(%struct.hl_cs_job* %0) #0 {
  %2 = alloca %struct.hl_cs_job*, align 8
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_hw_queue*, align 8
  %5 = alloca %struct.hl_cq_entry, align 4
  %6 = alloca %struct.hl_cq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hl_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.hl_cs_job* %0, %struct.hl_cs_job** %2, align 8
  %12 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %13 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.hl_device*, %struct.hl_device** %17, align 8
  store %struct.hl_device* %18, %struct.hl_device** %3, align 8
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 2
  %21 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %20, align 8
  %22 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %23 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %21, i64 %24
  store %struct.hl_hw_queue* %25, %struct.hl_hw_queue** %4, align 8
  %26 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %27 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BD_CTL_SHADOW_INDEX_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @BD_CTL_SHADOW_INDEX_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %34 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %33, i32 0, i32 2
  %35 = load %struct.hl_cb*, %struct.hl_cb** %34, align 8
  store %struct.hl_cb* %35, %struct.hl_cb** %8, align 8
  %36 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %37 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %40 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %43 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_VALID_SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @CQ_ENTRY_READY_SHIFT, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = call i32 @cpu_to_le32(i32 %54)
  %56 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %5, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 1
  %59 = load %struct.hl_cq*, %struct.hl_cq** %58, align 8
  %60 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %61 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %59, i64 %62
  store %struct.hl_cq* %63, %struct.hl_cq** %6, align 8
  %64 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %65 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %68 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = add i64 %66, %71
  store i64 %72, i64* %7, align 8
  %73 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.hl_device*, i32, i32, i64, i32, i64)*, i32 (%struct.hl_device*, i32, i32, i64, i32, i64)** %76, align 8
  %78 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %79 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %80 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %88 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 %77(%struct.hl_device* %78, i32 %81, i32 %82, i64 %83, i32 %86, i64 %89)
  %91 = load %struct.hl_cs_job*, %struct.hl_cs_job** %2, align 8
  %92 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %93 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %92, i32 0, i32 2
  %94 = load %struct.hl_cs_job**, %struct.hl_cs_job*** %93, align 8
  %95 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %96 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @hl_pi_2_offset(i32 %97)
  %99 = getelementptr inbounds %struct.hl_cs_job*, %struct.hl_cs_job** %94, i64 %98
  store %struct.hl_cs_job* %91, %struct.hl_cs_job** %99, align 8
  %100 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %101 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @hl_cq_inc_ptr(i32 %102)
  %104 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %105 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %107 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @ext_queue_submit_bd(%struct.hl_device* %106, %struct.hl_hw_queue* %107, i32 %108, i32 %109, i64 %110)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @hl_pi_2_offset(i32) #1

declare dso_local i32 @hl_cq_inc_ptr(i32) #1

declare dso_local i32 @ext_queue_submit_bd(%struct.hl_device*, %struct.hl_hw_queue*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
