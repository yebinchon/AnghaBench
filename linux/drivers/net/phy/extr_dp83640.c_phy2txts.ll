; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_phy2txts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_phy2txts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_txts = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_txts*)* @phy2txts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy2txts(%struct.phy_txts* %0) #0 {
  %2 = alloca %struct.phy_txts*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_txts* %0, %struct.phy_txts** %2, align 8
  %5 = load %struct.phy_txts*, %struct.phy_txts** %2, align 8
  %6 = getelementptr inbounds %struct.phy_txts, %struct.phy_txts* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.phy_txts*, %struct.phy_txts** %2, align 8
  %9 = getelementptr inbounds %struct.phy_txts, %struct.phy_txts* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.phy_txts*, %struct.phy_txts** %2, align 8
  %15 = getelementptr inbounds %struct.phy_txts, %struct.phy_txts* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.phy_txts*, %struct.phy_txts** %2, align 8
  %18 = getelementptr inbounds %struct.phy_txts, %struct.phy_txts* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 16383
  %21 = shl i32 %20, 16
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1000000000
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
