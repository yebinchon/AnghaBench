; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_appie_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_appie_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_set_appie_cmd = type { i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"set_appie_cmd: mgmt_frm_type=%u ie_len=%u\0A\00", align 1
@WMI_SET_APPIE_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_appie_cmd(%struct.wmi* %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.wmi_set_appie_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = add i64 24, %14
  %16 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %56

22:                                               ; preds = %5
  %23 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @ath6kl_dbg(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.wmi_set_appie_cmd*
  store %struct.wmi_set_appie_cmd* %30, %struct.wmi_set_appie_cmd** %13, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %13, align 8
  %33 = getelementptr inbounds %struct.wmi_set_appie_cmd, %struct.wmi_set_appie_cmd* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %13, align 8
  %36 = getelementptr inbounds %struct.wmi_set_appie_cmd, %struct.wmi_set_appie_cmd* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %22
  %40 = load i64, i64* %11, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %13, align 8
  %44 = getelementptr inbounds %struct.wmi_set_appie_cmd, %struct.wmi_set_appie_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @memcpy(i32 %45, i64* %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %39, %22
  %50 = load %struct.wmi*, %struct.wmi** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = load i32, i32* @WMI_SET_APPIE_CMDID, align 4
  %54 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %55 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %50, i64 %51, %struct.sk_buff* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %19
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
