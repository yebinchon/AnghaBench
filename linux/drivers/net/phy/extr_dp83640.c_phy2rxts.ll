; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_phy2rxts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_phy2rxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_rxts = type { i32, i32, i32, i32, i32, i32 }
%struct.rxts = type { i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@SKB_TIMESTAMP_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_rxts*, %struct.rxts*)* @phy2rxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy2rxts(%struct.phy_rxts* %0, %struct.rxts* %1) #0 {
  %3 = alloca %struct.phy_rxts*, align 8
  %4 = alloca %struct.rxts*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_rxts* %0, %struct.phy_rxts** %3, align 8
  store %struct.rxts* %1, %struct.rxts** %4, align 8
  %6 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %7 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %10 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %16 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rxts*, %struct.rxts** %4, align 8
  %19 = getelementptr inbounds %struct.rxts, %struct.rxts* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %21 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 16383
  %24 = shl i32 %23, 16
  %25 = load %struct.rxts*, %struct.rxts** %4, align 8
  %26 = getelementptr inbounds %struct.rxts, %struct.rxts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 1000000000
  %32 = load %struct.rxts*, %struct.rxts** %4, align 8
  %33 = getelementptr inbounds %struct.rxts, %struct.rxts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %39 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rxts*, %struct.rxts** %4, align 8
  %42 = getelementptr inbounds %struct.rxts, %struct.rxts* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %44 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 12
  %47 = and i32 %46, 15
  %48 = load %struct.rxts*, %struct.rxts** %4, align 8
  %49 = getelementptr inbounds %struct.rxts, %struct.rxts* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.phy_rxts*, %struct.phy_rxts** %3, align 8
  %51 = getelementptr inbounds %struct.phy_rxts, %struct.phy_rxts* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 4095
  %54 = load %struct.rxts*, %struct.rxts** %4, align 8
  %55 = getelementptr inbounds %struct.rxts, %struct.rxts* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* @SKB_TIMESTAMP_TIMEOUT, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.rxts*, %struct.rxts** %4, align 8
  %60 = getelementptr inbounds %struct.rxts, %struct.rxts* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
