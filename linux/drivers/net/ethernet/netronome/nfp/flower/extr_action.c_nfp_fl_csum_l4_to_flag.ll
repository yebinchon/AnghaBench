; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_csum_l4_to_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_csum_l4_to_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCA_CSUM_UPDATE_FLAG_TCP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfp_fl_csum_l4_to_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_csum_l4_to_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 0, label %5
    i32 129, label %9
    i32 128, label %11
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_TCP, align 4
  %7 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_UDP, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_TCP, align 4
  store i32 %10, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_UDP, align 4
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %11, %9, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
