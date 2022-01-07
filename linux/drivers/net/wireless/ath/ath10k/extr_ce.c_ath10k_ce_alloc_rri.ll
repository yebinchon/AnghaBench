; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_rri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_rri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ath10k_ce = type { i32, i32 }

@CE_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CE_DESC_ADDR_HI_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_ce_alloc_rri(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_ce*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %9 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %8)
  store %struct.ath10k_ce* %9, %struct.ath10k_ce** %7, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CE_COUNT, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %18 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %17, i32 0, i32 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @dma_alloc_coherent(i32 %12, i32 %16, i32* %18, i32 %19)
  %21 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %22 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %24 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %100

28:                                               ; preds = %1
  %29 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %30 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %36 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 @ath10k_ce_write32(%struct.ath10k* %29, i32 %34, i32 %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %41 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %47 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @upper_32_bits(i32 %48)
  %50 = load i32, i32* @CE_DESC_ADDR_HI_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @ath10k_ce_write32(%struct.ath10k* %40, i32 %45, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %88, %28
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @CE_COUNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  %65 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ath10k_ce_base_address(%struct.ath10k* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @ath10k_ce_read32(%struct.ath10k* %68, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @ath10k_ce_write32(%struct.ath10k* %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %53

91:                                               ; preds = %53
  %92 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %93 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CE_COUNT, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(i32 %94, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %91, %27
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ath10k_ce_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ath10k_ce_base_address(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
