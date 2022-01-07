; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_tx_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_tx_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, %struct.ioc3_etxd* }
%struct.ioc3_etxd = type { i32, i32, i32, i32 }

@ETXD_B1V = common dso_local global i32 0, align 4
@ETXD_B1CNT_MASK = common dso_local global i32 0, align 4
@ETXD_B1CNT_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ETXD_B2V = common dso_local global i32 0, align 4
@ETXD_B2CNT_MASK = common dso_local global i32 0, align 4
@ETXD_B2CNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*, i32)* @ioc3_tx_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_tx_unmap(%struct.ioc3_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioc3_etxd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %10 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %9, i32 0, i32 1
  %11 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ioc3_etxd, %struct.ioc3_etxd* %11, i64 %13
  store %struct.ioc3_etxd* %14, %struct.ioc3_etxd** %5, align 8
  %15 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %5, align 8
  %16 = getelementptr inbounds %struct.ioc3_etxd, %struct.ioc3_etxd* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %5, align 8
  %20 = getelementptr inbounds %struct.ioc3_etxd, %struct.ioc3_etxd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ETXD_B1V, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ETXD_B1CNT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @ETXD_B1CNT_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %34 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %5, align 8
  %37 = getelementptr inbounds %struct.ioc3_etxd, %struct.ioc3_etxd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_unmap_single(i32 %35, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %27, %2
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ETXD_B2V, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ETXD_B2CNT_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ETXD_B2CNT_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %55 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %5, align 8
  %58 = getelementptr inbounds %struct.ioc3_etxd, %struct.ioc3_etxd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be64_to_cpu(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @dma_unmap_single(i32 %56, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
