; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_set_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_set_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, i32, i32, i64 }

@DMA_RX_FLOW_ENABLE = common dso_local global i32 0, align 4
@DMA_TX_FLOW_ENABLE = common dso_local global i32 0, align 4
@KS_DMA_RX_CTRL = common dso_local global i64 0, align 8
@KS_DMA_TX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32)* @set_flow_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_flow_ctrl(%struct.ksz_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @DMA_RX_FLOW_ENABLE, align 4
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load i32, i32* @DMA_RX_FLOW_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @DMA_TX_FLOW_ENABLE, align 4
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %46

39:                                               ; preds = %30
  %40 = load i32, i32* @DMA_TX_FLOW_ENABLE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %54 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @KS_DMA_RX_CTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %57, %51
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %78 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KS_DMA_TX_CTRL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  br label %83

83:                                               ; preds = %73, %67
  br label %84

84:                                               ; preds = %83, %46
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
