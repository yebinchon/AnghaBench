; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_handle_msgs_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_handle_msgs_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32 }
%struct.pucan_rx_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peak_canfd_handle_msgs_list(%struct.peak_canfd_priv* %0, %struct.pucan_rx_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.peak_canfd_priv*, align 8
  %6 = alloca %struct.pucan_rx_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %5, align 8
  store %struct.pucan_rx_msg* %1, %struct.pucan_rx_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %12 = bitcast %struct.pucan_rx_msg* %11 to i8*
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %5, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @peak_canfd_handle_msg(%struct.peak_canfd_priv* %18, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @ALIGN(i32 %25, i32 4)
  %27 = load i8*, i8** %8, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %13

33:                                               ; preds = %23, %13
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @peak_canfd_handle_msg(%struct.peak_canfd_priv*, i8*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
