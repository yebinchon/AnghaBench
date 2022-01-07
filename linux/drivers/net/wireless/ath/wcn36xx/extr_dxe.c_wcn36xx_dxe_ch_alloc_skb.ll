; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_ch_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_ch_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl* }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_ctl* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.wcn36xx_dxe_ch*)* @wcn36xx_dxe_ch_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_dxe_ch_alloc_skb(%struct.wcn36xx* %0, %struct.wcn36xx_dxe_ch* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.wcn36xx_dxe_ch* %1, %struct.wcn36xx_dxe_ch** %4, align 8
  store %struct.wcn36xx_dxe_ctl* null, %struct.wcn36xx_dxe_ctl** %6, align 8
  %7 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %8 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %7, i32 0, i32 1
  %9 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  store %struct.wcn36xx_dxe_ctl* %9, %struct.wcn36xx_dxe_ctl** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %13 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %18 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @wcn36xx_dxe_fill_skb(i32 %19, %struct.wcn36xx_dxe_ctl* %20, i32 %21)
  %23 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %6, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %23, i32 0, i32 0
  %25 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %24, align 8
  store %struct.wcn36xx_dxe_ctl* %25, %struct.wcn36xx_dxe_ctl** %6, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @wcn36xx_dxe_fill_skb(i32, %struct.wcn36xx_dxe_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
