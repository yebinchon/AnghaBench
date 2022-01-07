; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_mgmt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_mgmt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i64, i64 }
%struct.wl3501_scan_req = type { i32, i32, i32, i32, i32, i32 }

@WL3501_SCAN_TYPE_ACTIVE = common dso_local global i32 0, align 4
@WL3501_SIG_SCAN_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*, i32)* @wl3501_mgmt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_mgmt_scan(%struct.wl3501_card* %0, i32 %1) #0 {
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl3501_scan_req, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.wl3501_scan_req, %struct.wl3501_scan_req* %5, i32 0, i32 0
  store i32 16, i32* %6, align 4
  %7 = getelementptr inbounds %struct.wl3501_scan_req, %struct.wl3501_scan_req* %5, i32 0, i32 1
  %8 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %9 = call i32 @wl3501_fw_bss_type(%struct.wl3501_card* %8)
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.wl3501_scan_req, %struct.wl3501_scan_req* %5, i32 0, i32 2
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.wl3501_scan_req, %struct.wl3501_scan_req* %5, i32 0, i32 3
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.wl3501_scan_req, %struct.wl3501_scan_req* %5, i32 0, i32 4
  %15 = load i32, i32* @WL3501_SCAN_TYPE_ACTIVE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.wl3501_scan_req, %struct.wl3501_scan_req* %5, i32 0, i32 5
  %17 = load i32, i32* @WL3501_SIG_SCAN_REQ, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %19 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %21 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %23 = call i32 @wl3501_esbq_exec(%struct.wl3501_card* %22, %struct.wl3501_scan_req* %5, i32 24)
  ret i32 %23
}

declare dso_local i32 @wl3501_fw_bss_type(%struct.wl3501_card*) #1

declare dso_local i32 @wl3501_esbq_exec(%struct.wl3501_card*, %struct.wl3501_scan_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
