; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_replenish_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_replenish_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @replenish_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replenish_pools(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %4 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  %16 = icmp slt i32 %9, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %8
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %29 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = call i32 @replenish_rx_pool(%struct.ibmvnic_adapter* %28, %struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %27, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %8
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @replenish_rx_pool(%struct.ibmvnic_adapter*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
