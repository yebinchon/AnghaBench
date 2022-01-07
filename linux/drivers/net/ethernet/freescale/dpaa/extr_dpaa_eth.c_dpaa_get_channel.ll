; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rx_pool_channel_init = common dso_local global i32 0, align 4
@rx_pool_channel = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dpaa_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_get_channel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @spin_lock(i32* @rx_pool_channel_init)
  %5 = load i32, i32* @rx_pool_channel, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = call i32 @qman_alloc_pool(i32* %2)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* @rx_pool_channel, align 4
  br label %13

13:                                               ; preds = %11, %7
  br label %14

14:                                               ; preds = %13, %0
  %15 = call i32 @spin_unlock(i32* @rx_pool_channel_init)
  %16 = load i32, i32* @rx_pool_channel, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @rx_pool_channel, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qman_alloc_pool(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
