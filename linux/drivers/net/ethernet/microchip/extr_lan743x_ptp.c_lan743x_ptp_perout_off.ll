; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_perout_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_perout_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32, i32 }

@PTP_GENERAL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*)* @lan743x_ptp_perout_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_perout_off(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_ptp*, align 8
  %4 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %5 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %5, i32 0, i32 0
  store %struct.lan743x_ptp* %6, %struct.lan743x_ptp** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %8 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %13 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %14 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lan743x_gpio_release(%struct.lan743x_adapter* %12, i32 %15)
  %17 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %18 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %21 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %26 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %27 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PTP_CLOCK_TARGET_SEC_X(i32 %28)
  %30 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %25, i32 %29, i32 -65536)
  %31 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %32 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %33 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTP_CLOCK_TARGET_NS_X(i32 %34)
  %36 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %31, i32 %35, i32 0)
  %37 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %38 = load i32, i32* @PTP_GENERAL_CONFIG, align 4
  %39 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %41 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTP_GENERAL_CONFIG_RELOAD_ADD_X_(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %47 = load i32, i32* @PTP_GENERAL_CONFIG, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %46, i32 %47, i32 %48)
  %50 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %51 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %52 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lan743x_ptp_release_event_ch(%struct.lan743x_adapter* %50, i32 %53)
  %55 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %56 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @lan743x_gpio_release(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @PTP_CLOCK_TARGET_SEC_X(i32) #1

declare dso_local i32 @PTP_CLOCK_TARGET_NS_X(i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @PTP_GENERAL_CONFIG_RELOAD_ADD_X_(i32) #1

declare dso_local i32 @lan743x_ptp_release_event_ch(%struct.lan743x_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
