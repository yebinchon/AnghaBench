; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_wait_for_brwe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_wait_for_brwe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32 }

@USDHI6_SD_INFO1_ACCESS_END = common dso_local global i32 0, align 4
@USDHI6_SD_INFO1_CARD_CD = common dso_local global i32 0, align 4
@USDHI6_SD_INFO2_ERR = common dso_local global i32 0, align 4
@USDHI6_SD_INFO2_BRE = common dso_local global i32 0, align 4
@USDHI6_SD_INFO2_BWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usdhi6_host*, i32)* @usdhi6_wait_for_brwe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_wait_for_brwe(%struct.usdhi6_host* %0, i32 %1) #0 {
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca i32, align 4
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %6 = load i32, i32* @USDHI6_SD_INFO1_ACCESS_END, align 4
  %7 = load i32, i32* @USDHI6_SD_INFO1_CARD_CD, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @USDHI6_SD_INFO2_ERR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @USDHI6_SD_INFO2_BRE, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @USDHI6_SD_INFO2_BWE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = or i32 %9, %17
  %19 = call i32 @usdhi6_irq_enable(%struct.usdhi6_host* %5, i32 %8, i32 %18)
  ret void
}

declare dso_local i32 @usdhi6_irq_enable(%struct.usdhi6_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
