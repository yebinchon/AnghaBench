; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_interrupt_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_interrupt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_sub_crq_queue = type { i64, %struct.ibmvnic_adapter* }
%struct.ibmvnic_adapter = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VNIC_OPEN = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ibmvnic_interrupt_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_interrupt_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %7 = alloca %struct.ibmvnic_adapter*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ibmvnic_sub_crq_queue*
  store %struct.ibmvnic_sub_crq_queue* %9, %struct.ibmvnic_sub_crq_queue** %6, align 8
  %10 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %6, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %10, i32 0, i32 1
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %11, align 8
  store %struct.ibmvnic_adapter* %12, %struct.ibmvnic_adapter** %7, align 8
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VNIC_OPEN, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %6, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %6, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i64 @napi_schedule_prep(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %23
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %45 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %6, align 8
  %46 = call i32 @disable_scrq_irq(%struct.ibmvnic_adapter* %44, %struct.ibmvnic_sub_crq_queue* %45)
  %47 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %6, align 8
  %51 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i32 @__napi_schedule(i32* %53)
  br label %55

55:                                               ; preds = %43, %23
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @disable_scrq_irq(%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
