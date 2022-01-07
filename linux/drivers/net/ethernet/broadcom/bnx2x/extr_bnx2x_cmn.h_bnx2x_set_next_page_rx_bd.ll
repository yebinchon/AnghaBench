; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_set_next_page_rx_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_set_next_page_rx_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, %struct.eth_rx_bd* }
%struct.eth_rx_bd = type { i8*, i8* }

@NUM_RX_RINGS = common dso_local global i32 0, align 4
@RX_DESC_CNT = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*)* @bnx2x_set_next_page_rx_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_next_page_rx_bd(%struct.bnx2x_fastpath* %0) #0 {
  %2 = alloca %struct.bnx2x_fastpath*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.eth_rx_bd*, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_RX_RINGS, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %10, i32 0, i32 1
  %12 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %11, align 8
  %13 = load i32, i32* @RX_DESC_CNT, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sub nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %12, i64 %17
  store %struct.eth_rx_bd* %18, %struct.eth_rx_bd** %4, align 8
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NUM_RX_RINGS, align 4
  %25 = srem i32 %23, %24
  %26 = mul nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %21, %27
  %29 = call i32 @U64_HI(i64 %28)
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %4, align 8
  %32 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @NUM_RX_RINGS, align 4
  %39 = srem i32 %37, %38
  %40 = mul nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %35, %41
  %43 = call i32 @U64_LO(i64 %42)
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %4, align 8
  %46 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %9
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %5

50:                                               ; preds = %5
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
