; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wcn36xx_dxe_deinit(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %3 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %4 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %7 = call i32 @free_irq(i32 %5, %struct.wcn36xx* %6)
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %9 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.wcn36xx* %11)
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %22 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ieee80211_tx_status_irqsafe(i32 %20, i32* %23)
  %25 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %26 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %30 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %29, i32 0, i32 1
  %31 = call i32 @wcn36xx_dxe_ch_free_skbs(%struct.wcn36xx* %28, i32* %30)
  %32 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %33 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %34 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %33, i32 0, i32 0
  %35 = call i32 @wcn36xx_dxe_ch_free_skbs(%struct.wcn36xx* %32, i32* %34)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.wcn36xx*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, i32*) #1

declare dso_local i32 @wcn36xx_dxe_ch_free_skbs(%struct.wcn36xx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
