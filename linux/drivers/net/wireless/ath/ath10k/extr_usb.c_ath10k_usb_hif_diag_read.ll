; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_diag_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_diag_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb = type { i32, i64 }
%struct.ath10k_usb_ctrl_diag_cmd_read = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH10K_USB_CTRL_DIAG_CC_READ = common dso_local global i32 0, align 4
@ATH10K_USB_CONTROL_REQ_DIAG_CMD = common dso_local global i32 0, align 4
@ATH10K_USB_CONTROL_REQ_DIAG_RESP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i8*, i64)* @ath10k_usb_hif_diag_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_hif_diag_read(%struct.ath10k* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ath10k_usb*, align 8
  %11 = alloca %struct.ath10k_usb_ctrl_diag_cmd_read*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %14)
  store %struct.ath10k_usb* %15, %struct.ath10k_usb** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load %struct.ath10k_usb*, %struct.ath10k_usb** %10, align 8
  %23 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ath10k_usb_ctrl_diag_cmd_read*
  store %struct.ath10k_usb_ctrl_diag_cmd_read* %25, %struct.ath10k_usb_ctrl_diag_cmd_read** %11, align 8
  %26 = load %struct.ath10k_usb_ctrl_diag_cmd_read*, %struct.ath10k_usb_ctrl_diag_cmd_read** %11, align 8
  %27 = call i32 @memset(%struct.ath10k_usb_ctrl_diag_cmd_read* %26, i32 0, i32 8)
  %28 = load i32, i32* @ATH10K_USB_CTRL_DIAG_CC_READ, align 4
  %29 = load %struct.ath10k_usb_ctrl_diag_cmd_read*, %struct.ath10k_usb_ctrl_diag_cmd_read** %11, align 8
  %30 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_read, %struct.ath10k_usb_ctrl_diag_cmd_read* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load %struct.ath10k_usb_ctrl_diag_cmd_read*, %struct.ath10k_usb_ctrl_diag_cmd_read** %11, align 8
  %34 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_read, %struct.ath10k_usb_ctrl_diag_cmd_read* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 4, i32* %12, align 4
  %35 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %36 = load i32, i32* @ATH10K_USB_CONTROL_REQ_DIAG_CMD, align 4
  %37 = load %struct.ath10k_usb_ctrl_diag_cmd_read*, %struct.ath10k_usb_ctrl_diag_cmd_read** %11, align 8
  %38 = bitcast %struct.ath10k_usb_ctrl_diag_cmd_read* %37 to i32*
  %39 = load i32, i32* @ATH10K_USB_CONTROL_REQ_DIAG_RESP, align 4
  %40 = load %struct.ath10k_usb*, %struct.ath10k_usb** %10, align 8
  %41 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ath10k_usb_ctrl_msg_exchange(%struct.ath10k* %35, i32 %36, i32* %38, i32 8, i32 %39, i32 %42, i32* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %61

48:                                               ; preds = %21
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %61

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.ath10k_usb*, %struct.ath10k_usb** %10, align 8
  %58 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memcpy(i8* %56, i32 %59, i32 4)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %52, %46, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local i32 @memset(%struct.ath10k_usb_ctrl_diag_cmd_read*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_usb_ctrl_msg_exchange(%struct.ath10k*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
