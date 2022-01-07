; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_stats_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_stats_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32, i32, i64, i64, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@BNX2_MAX_MSIX_HW_VEC = common dso_local global i32 0, align 4
@BNX2_SBLK_MSIX_ALIGN_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnx2_alloc_stats_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_stats_blk(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnx2* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2* %8, %struct.bnx2** %6, align 8
  %9 = call i32 @L1_CACHE_ALIGN(i32 4)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @BNX2_MAX_MSIX_HW_VEC, align 4
  %18 = load i32, i32* @BNX2_SBLK_MSIX_ALIGN_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @L1_CACHE_ALIGN(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @dma_alloc_coherent(i32* %31, i32 %34, i64* %36, i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %62

44:                                               ; preds = %21
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %53 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %44, %41
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
