; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_ch_free_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_ch_free_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl* }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_ctl*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx*, %struct.wcn36xx_dxe_ch*)* @wcn36xx_dxe_ch_free_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_dxe_ch_free_skbs(%struct.wcn36xx* %0, %struct.wcn36xx_dxe_ch* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %5 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %6 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.wcn36xx_dxe_ch* %1, %struct.wcn36xx_dxe_ch** %4, align 8
  %7 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %8 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %7, i32 0, i32 1
  %9 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  store %struct.wcn36xx_dxe_ctl* %9, %struct.wcn36xx_dxe_ctl** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %13 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %18 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree_skb(i32 %19)
  %21 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %22 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %21, i32 0, i32 0
  %23 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %22, align 8
  store %struct.wcn36xx_dxe_ctl* %23, %struct.wcn36xx_dxe_ctl** %5, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %10

27:                                               ; preds = %10
  ret void
}

declare dso_local i32 @kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
