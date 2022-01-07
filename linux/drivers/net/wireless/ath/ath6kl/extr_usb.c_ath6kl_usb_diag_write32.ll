; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_diag_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_diag_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.ath6kl_usb* }
%struct.ath6kl_usb = type { i64 }
%struct.ath6kl_usb_ctrl_diag_cmd_write = type { i32, i8*, i8* }

@ATH6KL_USB_CTRL_DIAG_CC_WRITE = common dso_local global i32 0, align 4
@ATH6KL_USB_CONTROL_REQ_DIAG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"diag_write32 failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i32)* @ath6kl_usb_diag_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_diag_write32(%struct.ath6kl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl_usb*, align 8
  %9 = alloca %struct.ath6kl_usb_ctrl_diag_cmd_write*, align 8
  %10 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %12, align 8
  store %struct.ath6kl_usb* %13, %struct.ath6kl_usb** %8, align 8
  %14 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %15 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ath6kl_usb_ctrl_diag_cmd_write*
  store %struct.ath6kl_usb_ctrl_diag_cmd_write* %17, %struct.ath6kl_usb_ctrl_diag_cmd_write** %9, align 8
  %18 = load %struct.ath6kl_usb_ctrl_diag_cmd_write*, %struct.ath6kl_usb_ctrl_diag_cmd_write** %9, align 8
  %19 = call i32 @memset(%struct.ath6kl_usb_ctrl_diag_cmd_write* %18, i32 0, i32 24)
  %20 = load i32, i32* @ATH6KL_USB_CTRL_DIAG_CC_WRITE, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.ath6kl_usb_ctrl_diag_cmd_write*, %struct.ath6kl_usb_ctrl_diag_cmd_write** %9, align 8
  %23 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_write, %struct.ath6kl_usb_ctrl_diag_cmd_write* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.ath6kl_usb_ctrl_diag_cmd_write*, %struct.ath6kl_usb_ctrl_diag_cmd_write** %9, align 8
  %27 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_write, %struct.ath6kl_usb_ctrl_diag_cmd_write* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ath6kl_usb_ctrl_diag_cmd_write*, %struct.ath6kl_usb_ctrl_diag_cmd_write** %9, align 8
  %30 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_write, %struct.ath6kl_usb_ctrl_diag_cmd_write* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %32 = load i32, i32* @ATH6KL_USB_CONTROL_REQ_DIAG_CMD, align 4
  %33 = load %struct.ath6kl_usb_ctrl_diag_cmd_write*, %struct.ath6kl_usb_ctrl_diag_cmd_write** %9, align 8
  %34 = bitcast %struct.ath6kl_usb_ctrl_diag_cmd_write* %33 to i32*
  %35 = call i32 @ath6kl_usb_ctrl_msg_exchange(%struct.ath6kl_usb* %31, i32 %32, i32* %34, i32 24, i32 0, i32* null, i32* null)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.ath6kl_usb_ctrl_diag_cmd_write*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_usb_ctrl_msg_exchange(%struct.ath6kl_usb*, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
