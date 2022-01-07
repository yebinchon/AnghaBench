; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_get_broad_storm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_get_broad_storm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@KS8842_SWITCH_CTRL_3_OFFSET = common dso_local global i64 0, align 8
@BROADCAST_STORM_RATE_HI = common dso_local global i32 0, align 4
@BROADCAST_STORM_RATE_LO = common dso_local global i32 0, align 4
@BROADCAST_STORM_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i64*)* @sw_get_broad_storm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_get_broad_storm(%struct.ksz_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KS8842_SWITCH_CTRL_3_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readw(i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BROADCAST_STORM_RATE_HI, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BROADCAST_STORM_RATE_LO, align 4
  %20 = and i32 %18, %19
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 100
  %26 = load i32, i32* @BROADCAST_STORM_VALUE, align 4
  %27 = call i32 @DIV_ROUND_CLOSEST(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** %4, align 8
  store i64 %29, i64* %30, align 8
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
