; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_one_sub_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_one_sub_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ibmvnic_sub_crq_queue = type { i32, i32, i32, i64, i32, i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*)* @reset_one_sub_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_one_sub_crq_queue(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_sub_crq_queue* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.ibmvnic_sub_crq_queue* %1, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %6 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %15 = call i32 @free_irq(i64 %13, %struct.ibmvnic_sub_crq_queue* %14)
  %16 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %17 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @irq_dispose_mapping(i64 %18)
  %20 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 4, %26
  %28 = call i32 @memset(i32 %25, i32 0, i32 %27)
  %29 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %29, i32 0, i32 4
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %33 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = mul nsw i32 4, %42
  %44 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %44, i32 0, i32 1
  %46 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %46, i32 0, i32 0
  %48 = call i32 @h_reg_sub_crq(i32 %38, i32 %41, i32 %43, i32* %45, i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @free_irq(i64, %struct.ibmvnic_sub_crq_queue*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @h_reg_sub_crq(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
