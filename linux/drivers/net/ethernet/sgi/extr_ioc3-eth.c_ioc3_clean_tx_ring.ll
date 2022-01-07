; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i64, i64, %struct.TYPE_2__*, %struct.sk_buff** }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@TX_RING_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_clean_tx_ring(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TX_RING_ENTRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 3
  %12 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %12, i64 %14
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %9
  %20 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ioc3_tx_unmap(%struct.ioc3_private* %20, i32 %21)
  %23 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %24 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %23, i32 0, i32 3
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %27
  store %struct.sk_buff* null, %struct.sk_buff** %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  br label %31

31:                                               ; preds = %19, %9
  %32 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %33 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  %43 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %44 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %46 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local i32 @ioc3_tx_unmap(%struct.ioc3_private*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
