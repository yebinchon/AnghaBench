; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_tx_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_tx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, %struct.TYPE_2__*, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_tx_ring_info }
%struct.bnx2_tx_ring_info = type { i32, i32, i32 }

@SW_TXBD_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TXBD_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_alloc_tx_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_tx_mem(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2_napi*, align 8
  %6 = alloca %struct.bnx2_tx_ring_info*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %7
  %14 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 2
  %16 = load %struct.bnx2_napi*, %struct.bnx2_napi** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %16, i64 %18
  store %struct.bnx2_napi* %19, %struct.bnx2_napi** %5, align 8
  %20 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %20, i32 0, i32 0
  store %struct.bnx2_tx_ring_info* %21, %struct.bnx2_tx_ring_info** %6, align 8
  %22 = load i32, i32* @SW_TXBD_RING_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %13
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %13
  %35 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @TXBD_RING_SIZE, align 4
  %40 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @dma_alloc_coherent(i32* %38, i32 %39, i32* %41, i32 %42)
  %44 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %7

57:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %50, %31
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
