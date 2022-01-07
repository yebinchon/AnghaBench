; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_free_ctl_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_free_ctl_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl* }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_ctl* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx_dxe_ch*)* @wcn36xx_dxe_free_ctl_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_dxe_free_ctl_block(%struct.wcn36xx_dxe_ch* %0) #0 {
  %2 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %3 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %4 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %5 = alloca i32, align 4
  store %struct.wcn36xx_dxe_ch* %0, %struct.wcn36xx_dxe_ch** %2, align 8
  %6 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %2, align 8
  %7 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %6, i32 0, i32 1
  %8 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %7, align 8
  store %struct.wcn36xx_dxe_ctl* %8, %struct.wcn36xx_dxe_ctl** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %2, align 8
  %12 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %3, align 8
  %17 = icmp ne %struct.wcn36xx_dxe_ctl* %16, null
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i1 [ false, %9 ], [ %17, %15 ]
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %3, align 8
  %22 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %21, i32 0, i32 0
  %23 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %22, align 8
  store %struct.wcn36xx_dxe_ctl* %23, %struct.wcn36xx_dxe_ctl** %4, align 8
  %24 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %3, align 8
  %25 = call i32 @kfree(%struct.wcn36xx_dxe_ctl* %24)
  %26 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %4, align 8
  store %struct.wcn36xx_dxe_ctl* %26, %struct.wcn36xx_dxe_ctl** %3, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %18
  ret void
}

declare dso_local i32 @kfree(%struct.wcn36xx_dxe_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
