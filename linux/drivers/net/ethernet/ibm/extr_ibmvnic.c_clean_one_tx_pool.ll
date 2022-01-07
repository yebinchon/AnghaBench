; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_clean_one_tx_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_clean_one_tx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32 }
%struct.ibmvnic_tx_pool = type { i32, %struct.ibmvnic_tx_buff* }
%struct.ibmvnic_tx_buff = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, %struct.ibmvnic_tx_pool*)* @clean_one_tx_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_one_tx_pool(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_tx_pool* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_tx_pool*, align 8
  %5 = alloca %struct.ibmvnic_tx_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.ibmvnic_tx_pool* %1, %struct.ibmvnic_tx_pool** %4, align 8
  %8 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %4, align 8
  %9 = icmp ne %struct.ibmvnic_tx_pool* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %11, i32 0, i32 1
  %13 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %12, align 8
  %14 = icmp ne %struct.ibmvnic_tx_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %49

16:                                               ; preds = %10
  %17 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %46, %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %4, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %25, i32 0, i32 1
  %27 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %27, i64 %29
  store %struct.ibmvnic_tx_buff* %30, %struct.ibmvnic_tx_buff** %5, align 8
  %31 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %5, align 8
  %32 = icmp ne %struct.ibmvnic_tx_buff* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %5, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @dev_kfree_skb_any(i32* %41)
  %43 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %5, align 8
  %44 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %33, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %20

49:                                               ; preds = %15, %20
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
