; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_tdr_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_tdr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.timespec64 = type { i32, i32 }

@PAGE4 = common dso_local global i32 0, align 4
@PTP_TDR = common dso_local global i32 0, align 4
@PTP_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.phy_device*, %struct.timespec64*, i32)* @tdr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdr_write(i32 %0, %struct.phy_device* %1, %struct.timespec64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.phy_device* %1, %struct.phy_device** %6, align 8
  store %struct.timespec64* %2, %struct.timespec64** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %11 = load i32, i32* @PAGE4, align 4
  %12 = load i32, i32* @PTP_TDR, align 4
  %13 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %14 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 65535
  %17 = call i32 @ext_write(i32 %9, %struct.phy_device* %10, i32 %11, i32 %12, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %20 = load i32, i32* @PAGE4, align 4
  %21 = load i32, i32* @PTP_TDR, align 4
  %22 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %23 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  %26 = call i32 @ext_write(i32 %18, %struct.phy_device* %19, i32 %20, i32 %21, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %29 = load i32, i32* @PAGE4, align 4
  %30 = load i32, i32* @PTP_TDR, align 4
  %31 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 65535
  %35 = call i32 @ext_write(i32 %27, %struct.phy_device* %28, i32 %29, i32 %30, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %38 = load i32, i32* @PAGE4, align 4
  %39 = load i32, i32* @PTP_TDR, align 4
  %40 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %41 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = call i32 @ext_write(i32 %36, %struct.phy_device* %37, i32 %38, i32 %39, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %47 = load i32, i32* @PAGE4, align 4
  %48 = load i32, i32* @PTP_CTL, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ext_write(i32 %45, %struct.phy_device* %46, i32 %47, i32 %48, i32 %49)
  ret i32 0
}

declare dso_local i32 @ext_write(i32, %struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
