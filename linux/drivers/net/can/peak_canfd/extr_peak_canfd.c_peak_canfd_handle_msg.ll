; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_handle_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_handle_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32 }
%struct.pucan_rx_msg = type { i32, i32 }
%struct.pucan_error_msg = type { i32 }
%struct.pucan_status_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peak_canfd_handle_msg(%struct.peak_canfd_priv* %0, %struct.pucan_rx_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_canfd_priv*, align 8
  %5 = alloca %struct.pucan_rx_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %4, align 8
  store %struct.pucan_rx_msg* %1, %struct.pucan_rx_msg** %5, align 8
  %9 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %10 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %14 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  br label %49

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %42 [
    i32 130, label %25
    i32 129, label %29
    i32 128, label %34
    i32 131, label %39
  ]

25:                                               ; preds = %23
  %26 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %27 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %28 = call i32 @pucan_handle_can_rx(%struct.peak_canfd_priv* %26, %struct.pucan_rx_msg* %27)
  store i32 %28, i32* %8, align 4
  br label %43

29:                                               ; preds = %23
  %30 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %31 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %32 = bitcast %struct.pucan_rx_msg* %31 to %struct.pucan_error_msg*
  %33 = call i32 @pucan_handle_error(%struct.peak_canfd_priv* %30, %struct.pucan_error_msg* %32)
  store i32 %33, i32* %8, align 4
  br label %43

34:                                               ; preds = %23
  %35 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %36 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %37 = bitcast %struct.pucan_rx_msg* %36 to %struct.pucan_status_msg*
  %38 = call i32 @pucan_handle_status(%struct.peak_canfd_priv* %35, %struct.pucan_status_msg* %37)
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %23
  %40 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %41 = call i32 @pucan_handle_cache_critical(%struct.peak_canfd_priv* %40)
  store i32 %41, i32* %8, align 4
  br label %43

42:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39, %34, %29, %25
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pucan_handle_can_rx(%struct.peak_canfd_priv*, %struct.pucan_rx_msg*) #1

declare dso_local i32 @pucan_handle_error(%struct.peak_canfd_priv*, %struct.pucan_error_msg*) #1

declare dso_local i32 @pucan_handle_status(%struct.peak_canfd_priv*, %struct.pucan_status_msg*) #1

declare dso_local i32 @pucan_handle_cache_critical(%struct.peak_canfd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
