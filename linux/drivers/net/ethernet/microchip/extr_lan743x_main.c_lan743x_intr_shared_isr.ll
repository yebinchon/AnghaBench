; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_shared_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_shared_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32*, i32* }

@INT_BIT_ALL_RX_ = common dso_local global i32 0, align 4
@LAN743X_USED_RX_CHANNELS = common dso_local global i32 0, align 4
@INT_BIT_ALL_TX_ = common dso_local global i32 0, align 4
@LAN743X_USED_TX_CHANNELS = common dso_local global i32 0, align 4
@INT_BIT_ALL_OTHER_ = common dso_local global i32 0, align 4
@INT_BIT_SW_GP_ = common dso_local global i32 0, align 4
@INT_BIT_1588_ = common dso_local global i32 0, align 4
@INT_EN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @lan743x_intr_shared_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_intr_shared_isr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan743x_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.lan743x_adapter*
  store %struct.lan743x_adapter* %12, %struct.lan743x_adapter** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @INT_BIT_ALL_RX_, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @INT_BIT_DMA_RX_(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lan743x_rx_isr(i32* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %29, %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %18

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @INT_BIT_ALL_TX_, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @INT_BIT_DMA_TX_(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @lan743x_tx_isr(i32* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %65, %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %54

83:                                               ; preds = %54
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @INT_BIT_ALL_OTHER_, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %96 = call i32 @lan743x_intr_software_isr(%struct.lan743x_adapter* %95)
  %97 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @INT_BIT_1588_, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %108 = call i32 @lan743x_ptp_isr(%struct.lan743x_adapter* %107)
  %109 = load i32, i32* @INT_BIT_1588_, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %106, %101
  br label %114

114:                                              ; preds = %113, %84
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %119 = load i32, i32* @INT_EN_CLR, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %114
  ret void
}

declare dso_local i32 @INT_BIT_DMA_RX_(i32) #1

declare dso_local i32 @lan743x_rx_isr(i32*, i32, i32) #1

declare dso_local i32 @INT_BIT_DMA_TX_(i32) #1

declare dso_local i32 @lan743x_tx_isr(i32*, i32, i32) #1

declare dso_local i32 @lan743x_intr_software_isr(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_ptp_isr(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
