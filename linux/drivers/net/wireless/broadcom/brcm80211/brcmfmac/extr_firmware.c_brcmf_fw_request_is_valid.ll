; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_request_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_request_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_fw_request = type { i32, %struct.brcmf_fw_item* }
%struct.brcmf_fw_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_fw_request*)* @brcmf_fw_request_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_fw_request_is_valid(%struct.brcmf_fw_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_fw_request*, align 8
  %4 = alloca %struct.brcmf_fw_item*, align 8
  %5 = alloca i32, align 4
  store %struct.brcmf_fw_request* %0, %struct.brcmf_fw_request** %3, align 8
  %6 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %12 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %12, i32 0, i32 1
  %14 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %13, align 8
  %15 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %14, i64 0
  store %struct.brcmf_fw_item* %15, %struct.brcmf_fw_item** %4, align 8
  br label %16

16:                                               ; preds = %29, %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %4, align 8
  %24 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %32, i32 1
  store %struct.brcmf_fw_item* %33, %struct.brcmf_fw_item** %4, align 8
  br label %16

34:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
