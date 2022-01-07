; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i32*, i32 }

@PRE_DELAY = common dso_local global i64 0, align 8
@PULSE = common dso_local global i64 0, align 8
@POST_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_phy_reset(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  %3 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %4 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @reset_control_deassert(i32 %5)
  %7 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %8 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @PRE_DELAY, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hix5hd2_sleep_us(i32 %12)
  %14 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @reset_control_assert(i32 %16)
  %18 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %19 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @PULSE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hix5hd2_sleep_us(i32 %23)
  %25 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %26 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reset_control_deassert(i32 %27)
  %29 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %30 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @POST_DELAY, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hix5hd2_sleep_us(i32 %34)
  ret void
}

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @hix5hd2_sleep_us(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
