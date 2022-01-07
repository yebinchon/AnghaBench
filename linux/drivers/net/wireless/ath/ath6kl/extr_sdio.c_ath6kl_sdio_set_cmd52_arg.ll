; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_set_cmd52_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_set_cmd52_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i8)* @ath6kl_sdio_set_cmd52_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_sdio_set_cmd52_arg(i32* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 %4, i8* %10, align 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 1
  %14 = shl i32 %13, 31
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 1
  %17 = shl i32 %16, 27
  %18 = or i32 %14, %17
  %19 = or i32 %18, 67108864
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 131071
  %22 = shl i32 %21, 9
  %23 = or i32 %19, %22
  %24 = or i32 %23, 256
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 255
  %28 = or i32 %24, %27
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
