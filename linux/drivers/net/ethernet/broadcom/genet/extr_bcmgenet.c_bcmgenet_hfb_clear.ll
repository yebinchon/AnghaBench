; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_hfb_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_hfb_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HFB_CTRL = common dso_local global i64 0, align 8
@HFB_FLT_ENABLE_V3PLUS = common dso_local global i64 0, align 8
@DMA_INDEX2RING_0 = common dso_local global i32 0, align 4
@DMA_INDEX2RING_7 = common dso_local global i32 0, align 4
@HFB_FLT_LEN_V3PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_hfb_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_hfb_clear(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  %4 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %5 = load i64, i64* @HFB_CTRL, align 8
  %6 = call i32 @bcmgenet_hfb_reg_writel(%struct.bcmgenet_priv* %4, i32 0, i64 %5)
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %8 = load i64, i64* @HFB_FLT_ENABLE_V3PLUS, align 8
  %9 = call i32 @bcmgenet_hfb_reg_writel(%struct.bcmgenet_priv* %7, i32 0, i64 %8)
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %11 = load i64, i64* @HFB_FLT_ENABLE_V3PLUS, align 8
  %12 = add nsw i64 %11, 4
  %13 = call i32 @bcmgenet_hfb_reg_writel(%struct.bcmgenet_priv* %10, i32 0, i64 %12)
  %14 = load i32, i32* @DMA_INDEX2RING_0, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %23, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DMA_INDEX2RING_7, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %15

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 4
  %35 = icmp slt i32 %28, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %38 = load i64, i64* @HFB_FLT_LEN_V3PLUS, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = add i64 %38, %41
  %43 = call i32 @bcmgenet_hfb_reg_writel(%struct.bcmgenet_priv* %37, i32 0, i64 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %27

47:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %51 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %56 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = icmp slt i32 %49, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %48
  %63 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @bcmgenet_hfb_writel(%struct.bcmgenet_priv* %63, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %48

72:                                               ; preds = %48
  ret void
}

declare dso_local i32 @bcmgenet_hfb_reg_writel(%struct.bcmgenet_priv*, i32, i64) #1

declare dso_local i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_hfb_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
