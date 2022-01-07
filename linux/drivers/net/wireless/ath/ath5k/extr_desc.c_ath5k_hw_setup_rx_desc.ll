; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_setup_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_setup_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ath5k_hw_rx_ctl }
%struct.ath5k_hw_rx_ctl = type { i32 }

@AR5K_DESC_RX_CTL1_BUF_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_RXDESC_INTREQ = common dso_local global i32 0, align 4
@AR5K_DESC_RX_CTL1_INTREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_setup_rx_desc(%struct.ath5k_hw* %0, %struct.ath5k_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca %struct.ath5k_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath5k_hw_rx_ctl*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store %struct.ath5k_desc* %1, %struct.ath5k_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ath5k_desc*, %struct.ath5k_desc** %7, align 8
  %12 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ath5k_hw_rx_ctl* %14, %struct.ath5k_hw_rx_ctl** %10, align 8
  %15 = load %struct.ath5k_desc*, %struct.ath5k_desc** %7, align 8
  %16 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i32 4)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @AR5K_DESC_RX_CTL1_BUF_LEN, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @AR5K_DESC_RX_CTL1_BUF_LEN, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.ath5k_hw_rx_ctl*, %struct.ath5k_hw_rx_ctl** %10, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw_rx_ctl, %struct.ath5k_hw_rx_ctl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @AR5K_RXDESC_INTREQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @AR5K_DESC_RX_CTL1_INTREQ, align 4
  %40 = load %struct.ath5k_hw_rx_ctl*, %struct.ath5k_hw_rx_ctl** %10, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw_rx_ctl, %struct.ath5k_hw_rx_ctl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %28
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
