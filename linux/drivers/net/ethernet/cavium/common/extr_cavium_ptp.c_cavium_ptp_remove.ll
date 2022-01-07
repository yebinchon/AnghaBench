; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/common/extr_cavium_ptp.c_cavium_ptp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/common/extr_cavium_ptp.c_cavium_ptp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cavium_ptp = type { i64, i32 }

@PTP_CLOCK_CFG = common dso_local global i64 0, align 8
@PTP_CLOCK_CFG_PTP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cavium_ptp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cavium_ptp_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cavium_ptp*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.cavium_ptp* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.cavium_ptp* %6, %struct.cavium_ptp** %3, align 8
  %7 = load %struct.cavium_ptp*, %struct.cavium_ptp** %3, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.cavium_ptp* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.cavium_ptp*, %struct.cavium_ptp** %3, align 8
  %13 = getelementptr inbounds %struct.cavium_ptp, %struct.cavium_ptp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ptp_clock_unregister(i32 %14)
  %16 = load %struct.cavium_ptp*, %struct.cavium_ptp** %3, align 8
  %17 = getelementptr inbounds %struct.cavium_ptp, %struct.cavium_ptp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PTP_CLOCK_CFG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readq(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @PTP_CLOCK_CFG_PTP_EN, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cavium_ptp*, %struct.cavium_ptp** %3, align 8
  %28 = getelementptr inbounds %struct.cavium_ptp, %struct.cavium_ptp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PTP_CLOCK_CFG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeq(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.cavium_ptp* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.cavium_ptp*) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
