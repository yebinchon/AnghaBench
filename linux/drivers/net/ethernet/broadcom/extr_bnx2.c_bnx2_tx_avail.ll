; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_tx_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_tx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_tx_ring_info = type { i32, i32 }

@BNX2_TX_DESC_CNT = common dso_local global i32 0, align 4
@BNX2_MAX_TX_DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_tx_ring_info*)* @bnx2_tx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_tx_avail(%struct.bnx2* %0, %struct.bnx2_tx_ring_info* %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca %struct.bnx2_tx_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store %struct.bnx2_tx_ring_info* %1, %struct.bnx2_tx_ring_info** %4, align 8
  %6 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @READ_ONCE(i32 %8)
  %10 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  %14 = sub nsw i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BNX2_TX_DESC_CNT, align 4
  %17 = icmp sge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BNX2_TX_DESC_CNT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @BNX2_MAX_TX_DESC_CNT, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  ret i32 %35
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
