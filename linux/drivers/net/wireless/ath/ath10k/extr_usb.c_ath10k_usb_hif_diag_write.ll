; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_diag_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_diag_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb = type { i64 }
%struct.ath10k_usb_ctrl_diag_cmd_write = type { i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ATH10K_USB_CTRL_DIAG_CC_WRITE = common dso_local global i32 0, align 4
@ATH10K_USB_CONTROL_REQ_DIAG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i8*, i32)* @ath10k_usb_hif_diag_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_hif_diag_write(%struct.ath10k* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_usb*, align 8
  %11 = alloca %struct.ath10k_usb_ctrl_diag_cmd_write*, align 8
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %14 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %13)
  store %struct.ath10k_usb* %14, %struct.ath10k_usb** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %4
  %22 = load %struct.ath10k_usb*, %struct.ath10k_usb** %10, align 8
  %23 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ath10k_usb_ctrl_diag_cmd_write*
  store %struct.ath10k_usb_ctrl_diag_cmd_write* %25, %struct.ath10k_usb_ctrl_diag_cmd_write** %11, align 8
  %26 = load %struct.ath10k_usb_ctrl_diag_cmd_write*, %struct.ath10k_usb_ctrl_diag_cmd_write** %11, align 8
  %27 = call i32 @memset(%struct.ath10k_usb_ctrl_diag_cmd_write* %26, i32 0, i32 24)
  %28 = load i32, i32* @ATH10K_USB_CTRL_DIAG_CC_WRITE, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.ath10k_usb_ctrl_diag_cmd_write*, %struct.ath10k_usb_ctrl_diag_cmd_write** %11, align 8
  %31 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_write, %struct.ath10k_usb_ctrl_diag_cmd_write* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.ath10k_usb_ctrl_diag_cmd_write*, %struct.ath10k_usb_ctrl_diag_cmd_write** %11, align 8
  %35 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_write, %struct.ath10k_usb_ctrl_diag_cmd_write* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ath10k_usb_ctrl_diag_cmd_write*, %struct.ath10k_usb_ctrl_diag_cmd_write** %11, align 8
  %37 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_write, %struct.ath10k_usb_ctrl_diag_cmd_write* %36, i32 0, i32 0
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memcpy(i32* %37, i8* %38, i32 %39)
  %41 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %42 = load i32, i32* @ATH10K_USB_CONTROL_REQ_DIAG_CMD, align 4
  %43 = load %struct.ath10k_usb_ctrl_diag_cmd_write*, %struct.ath10k_usb_ctrl_diag_cmd_write** %11, align 8
  %44 = bitcast %struct.ath10k_usb_ctrl_diag_cmd_write* %43 to i32*
  %45 = call i32 @ath10k_usb_ctrl_msg_exchange(%struct.ath10k* %41, i32 %42, i32* %44, i32 24, i32 0, i32* null, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %21
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %48, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local i32 @memset(%struct.ath10k_usb_ctrl_diag_cmd_write*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @ath10k_usb_ctrl_msg_exchange(%struct.ath10k*, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
