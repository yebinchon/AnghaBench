; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32 }

@PTP_CMD_CTL = common dso_local global i32 0, align 4
@PTP_CMD_CTL_PTP_CLOCK_READ_ = common dso_local global i32 0, align 4
@PTP_CLOCK_SEC = common dso_local global i32 0, align 4
@PTP_CLOCK_NS = common dso_local global i32 0, align 4
@PTP_CLOCK_SUBNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*, i32*, i32*, i32*)* @lan743x_ptp_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_clock_get(%struct.lan743x_adapter* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.lan743x_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lan743x_ptp*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %10, i32 0, i32 0
  store %struct.lan743x_ptp* %11, %struct.lan743x_ptp** %9, align 8
  %12 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %13 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %16 = load i32, i32* @PTP_CMD_CTL, align 4
  %17 = load i32, i32* @PTP_CMD_CTL_PTP_CLOCK_READ_, align 4
  %18 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %15, i32 %16, i32 %17)
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %20 = load i32, i32* @PTP_CMD_CTL_PTP_CLOCK_READ_, align 4
  %21 = call i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter* %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %26 = load i32, i32* @PTP_CLOCK_SEC, align 4
  %27 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %34 = load i32, i32* @PTP_CLOCK_NS, align 4
  %35 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %42 = load i32, i32* @PTP_CLOCK_SUBNS, align 4
  %43 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %41, i32 %42)
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %47 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
