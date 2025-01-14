; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_alloc_cbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_alloc_cbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.enetc_cbdr = type { i32, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.enetc_cbdr*)* @enetc_alloc_cbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_alloc_cbdr(%struct.device* %0, %struct.enetc_cbdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.enetc_cbdr*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.enetc_cbdr* %1, %struct.enetc_cbdr** %5, align 8
  %7 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %8 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %16 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %15, i32 0, i32 3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @dma_alloc_coherent(%struct.device* %13, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %20 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %22 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %30 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IS_ALIGNED(i32 %31, i32 128)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %38 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %41 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(%struct.device* %35, i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %28
  %47 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %48 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %5, align 8
  %50 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %34, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
