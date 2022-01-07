; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_ie_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_ie_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_set_ie_cmd = type { i32, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"set_ie_cmd: ie_id=%u ie_ie_field=%u ie_len=%u\0A\00", align 1
@WMI_SET_IE_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_ie_cmd(%struct.wmi* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.wmi_set_ie_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = add i64 32, %16
  %18 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %14, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %62

24:                                               ; preds = %6
  %25 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @ath6kl_dbg(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27, i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.wmi_set_ie_cmd*
  store %struct.wmi_set_ie_cmd* %33, %struct.wmi_set_ie_cmd** %15, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.wmi_set_ie_cmd*, %struct.wmi_set_ie_cmd** %15, align 8
  %36 = getelementptr inbounds %struct.wmi_set_ie_cmd, %struct.wmi_set_ie_cmd* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.wmi_set_ie_cmd*, %struct.wmi_set_ie_cmd** %15, align 8
  %39 = getelementptr inbounds %struct.wmi_set_ie_cmd, %struct.wmi_set_ie_cmd* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.wmi_set_ie_cmd*, %struct.wmi_set_ie_cmd** %15, align 8
  %42 = getelementptr inbounds %struct.wmi_set_ie_cmd, %struct.wmi_set_ie_cmd* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %24
  %46 = load i64, i64* %13, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.wmi_set_ie_cmd*, %struct.wmi_set_ie_cmd** %15, align 8
  %50 = getelementptr inbounds %struct.wmi_set_ie_cmd, %struct.wmi_set_ie_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @memcpy(i32 %51, i64* %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %45, %24
  %56 = load %struct.wmi*, %struct.wmi** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %59 = load i32, i32* @WMI_SET_IE_CMDID, align 4
  %60 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %61 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %56, i64 %57, %struct.sk_buff* %58, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %55, %21
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
