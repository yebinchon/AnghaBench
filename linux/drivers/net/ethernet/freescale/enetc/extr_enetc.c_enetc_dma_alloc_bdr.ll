; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_dma_alloc_bdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_dma_alloc_bdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_bdr*, i64)* @enetc_dma_alloc_bdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_dma_alloc_bdr(%struct.enetc_bdr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_bdr*, align 8
  %5 = alloca i64, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %7 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %10 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = mul i64 %11, %12
  %14 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %15 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @dma_alloc_coherent(i32 %8, i64 %13, i32* %15, i32 %16)
  %18 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %19 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %21 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %29 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IS_ALIGNED(i32 %30, i32 128)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %35 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %38 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = mul i64 %39, %40
  %42 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %43 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %46 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32 %36, i64 %41, i32 %44, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %33, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
