; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_start_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_start_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { i32, i32, i32, i32 }
%struct.at76_req_scan = type { i8*, i8*, i8*, i64, i32, i32, i32 }

@SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@CMD_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*)* @at76_start_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_start_monitor(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca %struct.at76_req_scan, align 8
  %4 = alloca i32, align 4
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %5 = call i32 @memset(%struct.at76_req_scan* %3, i32 0, i32 48)
  %6 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @eth_broadcast_addr(i32 %7)
  %9 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %10 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SCAN_TYPE_PASSIVE, align 4
  %14 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %17 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %22 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = call i8* @cpu_to_le16(i32 0)
  %27 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %29 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CMD_SCAN, align 4
  %32 = call i32 @at76_set_card_command(i32 %30, i32 %31, %struct.at76_req_scan* %3, i32 48)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %37 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CMD_SCAN, align 4
  %40 = call i32 @at76_get_cmd_status(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.at76_req_scan*, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @at76_set_card_command(i32, i32, %struct.at76_req_scan*, i32) #1

declare dso_local i32 @at76_get_cmd_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
