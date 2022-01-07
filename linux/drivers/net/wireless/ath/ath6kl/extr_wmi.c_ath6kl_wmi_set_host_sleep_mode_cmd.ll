; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_host_sleep_mode_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_host_sleep_mode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_set_host_sleep_mode_cmd = type { i8*, i8* }

@ATH6KL_HOST_MODE_ASLEEP = common dso_local global i32 0, align 4
@ATH6KL_HOST_MODE_AWAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid host sleep mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_SET_HOST_SLEEP_MODE_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_host_sleep_mode_cmd(%struct.wmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wmi_set_host_sleep_mode_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ATH6KL_HOST_MODE_ASLEEP, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ATH6KL_HOST_MODE_AWAKE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ath6kl_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %14, %3
  %24 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 16)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.wmi_set_host_sleep_mode_cmd*
  store %struct.wmi_set_host_sleep_mode_cmd* %34, %struct.wmi_set_host_sleep_mode_cmd** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ATH6KL_HOST_MODE_ASLEEP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.wmi*, %struct.wmi** %5, align 8
  %40 = call i32 @ath6kl_wmi_relinquish_implicit_pstream_credits(%struct.wmi* %39)
  %41 = call i8* @cpu_to_le32(i32 1)
  %42 = load %struct.wmi_set_host_sleep_mode_cmd*, %struct.wmi_set_host_sleep_mode_cmd** %9, align 8
  %43 = getelementptr inbounds %struct.wmi_set_host_sleep_mode_cmd, %struct.wmi_set_host_sleep_mode_cmd* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %30
  %45 = call i8* @cpu_to_le32(i32 1)
  %46 = load %struct.wmi_set_host_sleep_mode_cmd*, %struct.wmi_set_host_sleep_mode_cmd** %9, align 8
  %47 = getelementptr inbounds %struct.wmi_set_host_sleep_mode_cmd, %struct.wmi_set_host_sleep_mode_cmd* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.wmi*, %struct.wmi** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* @WMI_SET_HOST_SLEEP_MODE_CMDID, align 4
  %53 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %54 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %49, i32 %50, %struct.sk_buff* %51, i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %27, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_wmi_relinquish_implicit_pstream_credits(%struct.wmi*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
