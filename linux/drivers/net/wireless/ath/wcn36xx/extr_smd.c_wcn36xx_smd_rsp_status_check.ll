; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_rsp_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_rsp_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_fw_msg_status_rsp = type { i64 }

@EIO = common dso_local global i32 0, align 4
@WCN36XX_FW_MSG_RESULT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @wcn36xx_smd_rsp_status_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_rsp_status_check(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wcn36xx_fw_msg_status_rsp*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ult i64 %7, 12
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to %struct.wcn36xx_fw_msg_status_rsp*
  store %struct.wcn36xx_fw_msg_status_rsp* %15, %struct.wcn36xx_fw_msg_status_rsp** %6, align 8
  %16 = load i64, i64* @WCN36XX_FW_MSG_RESULT_SUCCESS, align 8
  %17 = load %struct.wcn36xx_fw_msg_status_rsp*, %struct.wcn36xx_fw_msg_status_rsp** %6, align 8
  %18 = getelementptr inbounds %struct.wcn36xx_fw_msg_status_rsp, %struct.wcn36xx_fw_msg_status_rsp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.wcn36xx_fw_msg_status_rsp*, %struct.wcn36xx_fw_msg_status_rsp** %6, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_fw_msg_status_rsp, %struct.wcn36xx_fw_msg_status_rsp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %21, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
