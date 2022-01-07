; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_lpreamble_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_lpreamble_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_set_lpreamble_cmd = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_SET_LPREAMBLE_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_lpreamble_cmd(%struct.wmi* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_set_lpreamble_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 16)
  store %struct.sk_buff* %13, %struct.sk_buff** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.wmi_set_lpreamble_cmd*
  store %struct.wmi_set_lpreamble_cmd* %23, %struct.wmi_set_lpreamble_cmd** %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.wmi_set_lpreamble_cmd*, %struct.wmi_set_lpreamble_cmd** %11, align 8
  %26 = getelementptr inbounds %struct.wmi_set_lpreamble_cmd, %struct.wmi_set_lpreamble_cmd* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.wmi_set_lpreamble_cmd*, %struct.wmi_set_lpreamble_cmd** %11, align 8
  %29 = getelementptr inbounds %struct.wmi_set_lpreamble_cmd, %struct.wmi_set_lpreamble_cmd* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wmi*, %struct.wmi** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = load i32, i32* @WMI_SET_LPREAMBLE_CMDID, align 4
  %34 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %35 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %30, i8* %31, %struct.sk_buff* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %19, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i8*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
