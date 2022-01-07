; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_tx_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_tx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis190_private = type { i64, i64, %struct.TYPE_4__*, %struct.sk_buff**, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis190_private*)* @sis190_tx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis190_tx_clear(%struct.sis190_private* %0) #0 {
  %2 = alloca %struct.sis190_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sis190_private* %0, %struct.sis190_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_TX_DESC, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %11 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %10, i32 0, i32 3
  %12 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %12, i64 %14
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %47

20:                                               ; preds = %9
  %21 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %22 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %26 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @sis190_unmap_tx_skb(i32 %23, %struct.sk_buff* %24, i64 %30)
  %32 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %33 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %32, i32 0, i32 3
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  store %struct.sk_buff* null, %struct.sk_buff** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @dev_kfree_skb(%struct.sk_buff* %38)
  %40 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %41 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %20, %19
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %5

50:                                               ; preds = %5
  %51 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %52 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.sis190_private*, %struct.sis190_private** %2, align 8
  %54 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @sis190_unmap_tx_skb(i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
