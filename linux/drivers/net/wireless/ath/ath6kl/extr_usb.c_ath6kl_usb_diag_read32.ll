; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_diag_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_diag_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.ath6kl_usb* }
%struct.ath6kl_usb = type { i64, i64 }
%struct.ath6kl_usb_ctrl_diag_resp_read = type { i32 }
%struct.ath6kl_usb_ctrl_diag_cmd_read = type { i32, i32 }

@ATH6KL_USB_CTRL_DIAG_CC_READ = common dso_local global i32 0, align 4
@ATH6KL_USB_CONTROL_REQ_DIAG_CMD = common dso_local global i32 0, align 4
@ATH6KL_USB_CONTROL_REQ_DIAG_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"diag read32 failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i32*)* @ath6kl_usb_diag_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_diag_read32(%struct.ath6kl* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath6kl_usb*, align 8
  %9 = alloca %struct.ath6kl_usb_ctrl_diag_resp_read*, align 8
  %10 = alloca %struct.ath6kl_usb_ctrl_diag_cmd_read*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %14 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %13, i32 0, i32 0
  %15 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %14, align 8
  store %struct.ath6kl_usb* %15, %struct.ath6kl_usb** %8, align 8
  %16 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %17 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ath6kl_usb_ctrl_diag_cmd_read*
  store %struct.ath6kl_usb_ctrl_diag_cmd_read* %19, %struct.ath6kl_usb_ctrl_diag_cmd_read** %10, align 8
  %20 = load %struct.ath6kl_usb_ctrl_diag_cmd_read*, %struct.ath6kl_usb_ctrl_diag_cmd_read** %10, align 8
  %21 = call i32 @memset(%struct.ath6kl_usb_ctrl_diag_cmd_read* %20, i32 0, i32 8)
  %22 = load i32, i32* @ATH6KL_USB_CTRL_DIAG_CC_READ, align 4
  %23 = load %struct.ath6kl_usb_ctrl_diag_cmd_read*, %struct.ath6kl_usb_ctrl_diag_cmd_read** %10, align 8
  %24 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_read, %struct.ath6kl_usb_ctrl_diag_cmd_read* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.ath6kl_usb_ctrl_diag_cmd_read*, %struct.ath6kl_usb_ctrl_diag_cmd_read** %10, align 8
  %28 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_read, %struct.ath6kl_usb_ctrl_diag_cmd_read* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 4, i32* %11, align 4
  %29 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %30 = load i32, i32* @ATH6KL_USB_CONTROL_REQ_DIAG_CMD, align 4
  %31 = load %struct.ath6kl_usb_ctrl_diag_cmd_read*, %struct.ath6kl_usb_ctrl_diag_cmd_read** %10, align 8
  %32 = bitcast %struct.ath6kl_usb_ctrl_diag_cmd_read* %31 to i32*
  %33 = load i32, i32* @ATH6KL_USB_CONTROL_REQ_DIAG_RESP, align 4
  %34 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %35 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ath6kl_usb_ctrl_msg_exchange(%struct.ath6kl_usb* %29, i32 %30, i32* %32, i32 4, i32 %33, i64 %36, i32* %11)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %3
  %45 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %46 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ath6kl_usb_ctrl_diag_resp_read*
  store %struct.ath6kl_usb_ctrl_diag_resp_read* %48, %struct.ath6kl_usb_ctrl_diag_resp_read** %9, align 8
  %49 = load %struct.ath6kl_usb_ctrl_diag_resp_read*, %struct.ath6kl_usb_ctrl_diag_resp_read** %9, align 8
  %50 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_resp_read, %struct.ath6kl_usb_ctrl_diag_resp_read* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %40
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @memset(%struct.ath6kl_usb_ctrl_diag_cmd_read*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_usb_ctrl_msg_exchange(%struct.ath6kl_usb*, i32, i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
