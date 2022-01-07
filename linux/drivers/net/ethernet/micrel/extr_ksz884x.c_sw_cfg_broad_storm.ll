; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_cfg_broad_storm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_cfg_broad_storm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@BROADCAST_STORM_VALUE = common dso_local global i64 0, align 8
@BROADCAST_STORM_RATE = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_3_OFFSET = common dso_local global i64 0, align 8
@BROADCAST_STORM_RATE_LO = common dso_local global i32 0, align 4
@BROADCAST_STORM_RATE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i64)* @sw_cfg_broad_storm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_cfg_broad_storm(%struct.ksz_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @BROADCAST_STORM_VALUE, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = mul nsw i32 %8, %10
  %12 = sdiv i32 %11, 100
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BROADCAST_STORM_RATE, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @BROADCAST_STORM_RATE, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KS8842_SWITCH_CTRL_3_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readw(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @BROADCAST_STORM_RATE_LO, align 4
  %26 = load i32, i32* @BROADCAST_STORM_RATE_HI, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 65280
  %36 = ashr i32 %35, 8
  %37 = or i32 %33, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KS8842_SWITCH_CTRL_3_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writew(i32 %40, i64 %45)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
