; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.ibmvnic_crq_queue }
%struct.ibmvnic_crq_queue = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ibmvnic_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_tasklet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_crq_queue*, align 8
  %5 = alloca %union.ibmvnic_crq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ibmvnic_adapter*
  store %struct.ibmvnic_adapter* %9, %struct.ibmvnic_adapter** %3, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 2
  store %struct.ibmvnic_crq_queue* %11, %struct.ibmvnic_crq_queue** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %38, %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %25, %20
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %23 = call %union.ibmvnic_crq* @ibmvnic_next_crq(%struct.ibmvnic_adapter* %22)
  store %union.ibmvnic_crq* %23, %union.ibmvnic_crq** %5, align 8
  %24 = icmp ne %union.ibmvnic_crq* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %5, align 8
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %28 = call i32 @ibmvnic_handle_crq(%union.ibmvnic_crq* %26, %struct.ibmvnic_adapter* %27)
  %29 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %5, align 8
  %30 = bitcast %union.ibmvnic_crq* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %40, i32 0, i32 1
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %49 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %union.ibmvnic_crq* @ibmvnic_next_crq(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_handle_crq(%union.ibmvnic_crq*, %struct.ibmvnic_adapter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
