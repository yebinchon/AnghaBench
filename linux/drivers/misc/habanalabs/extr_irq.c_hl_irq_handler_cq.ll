; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_irq_handler_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_irq_handler_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cq = type { i64, i64, i32, i64, %struct.hl_device* }
%struct.hl_device = type { i32, i64, %struct.hl_hw_queue*, i32 }
%struct.hl_hw_queue = type { i32, %struct.hl_cs_job** }
%struct.hl_cs_job = type { i32 }
%struct.hl_cq_entry = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Device disabled but received IRQ %d for CQ %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CQ_ENTRY_READY_MASK = common dso_local global i32 0, align 4
@CQ_ENTRY_READY_SHIFT = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_VALID_MASK = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_VALID_SHIFT = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_MASK = common dso_local global i32 0, align 4
@CQ_ENTRY_SHADOW_INDEX_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_irq_handler_cq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hl_cq*, align 8
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca %struct.hl_hw_queue*, align 8
  %9 = alloca %struct.hl_cs_job*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hl_cq_entry*, align 8
  %13 = alloca %struct.hl_cq_entry*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.hl_cq*
  store %struct.hl_cq* %16, %struct.hl_cq** %6, align 8
  %17 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %18 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %17, i32 0, i32 4
  %19 = load %struct.hl_device*, %struct.hl_device** %18, align 8
  store %struct.hl_device* %19, %struct.hl_device** %7, align 8
  %20 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %21 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %30 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %31)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %135

34:                                               ; preds = %2
  %35 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %36 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.hl_cq_entry*
  store %struct.hl_cq_entry* %38, %struct.hl_cq_entry** %13, align 8
  br label %39

39:                                               ; preds = %34, %107
  %40 = load %struct.hl_cq_entry*, %struct.hl_cq_entry** %13, align 8
  %41 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %42 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %40, i64 %43
  %45 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load i32, i32* @CQ_ENTRY_READY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CQ_ENTRY_READY_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  br label %133

55:                                               ; preds = %39
  %56 = load %struct.hl_cq_entry*, %struct.hl_cq_entry** %13, align 8
  %57 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %58 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %56, i64 %59
  store %struct.hl_cq_entry* %60, %struct.hl_cq_entry** %12, align 8
  %61 = call i32 (...) @dma_rmb()
  %62 = load %struct.hl_cq_entry*, %struct.hl_cq_entry** %12, align 8
  %63 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_VALID_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_VALID_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.hl_cq_entry*, %struct.hl_cq_entry** %12, align 8
  %71 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @CQ_ENTRY_SHADOW_INDEX_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %11, align 8
  %79 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %80 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %79, i32 0, i32 2
  %81 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %80, align 8
  %82 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %83 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %81, i64 %84
  store %struct.hl_hw_queue* %85, %struct.hl_hw_queue** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %55
  %89 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %90 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %88
  %94 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %8, align 8
  %95 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %94, i32 0, i32 1
  %96 = load %struct.hl_cs_job**, %struct.hl_cs_job*** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @hl_pi_2_offset(i64 %97)
  %99 = getelementptr inbounds %struct.hl_cs_job*, %struct.hl_cs_job** %96, i64 %98
  %100 = load %struct.hl_cs_job*, %struct.hl_cs_job** %99, align 8
  store %struct.hl_cs_job* %100, %struct.hl_cs_job** %9, align 8
  %101 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %102 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.hl_cs_job*, %struct.hl_cs_job** %9, align 8
  %105 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %104, i32 0, i32 0
  %106 = call i32 @queue_work(i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %93, %88, %55
  %108 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %8, align 8
  %109 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @hl_queue_inc_ptr(i32 %110)
  %112 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %8, align 8
  %113 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.hl_cq_entry*, %struct.hl_cq_entry** %12, align 8
  %115 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = load i32, i32* @CQ_ENTRY_READY_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  %121 = call i32 @cpu_to_le32(i32 %120)
  %122 = load %struct.hl_cq_entry*, %struct.hl_cq_entry** %12, align 8
  %123 = getelementptr inbounds %struct.hl_cq_entry, %struct.hl_cq_entry* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %125 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @hl_cq_inc_ptr(i64 %126)
  %128 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %129 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %131 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %130, i32 0, i32 2
  %132 = call i32 @atomic_inc(i32* %131)
  br label %39

133:                                              ; preds = %54
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %24
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @hl_pi_2_offset(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hl_queue_inc_ptr(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @hl_cq_inc_ptr(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
