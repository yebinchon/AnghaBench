; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_deletekey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_deletekey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_delete_cipher_key_cmd = type { i64 }

@WMI_MAX_KEY_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_DELETE_CIPHER_KEY_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_deletekey_cmd(%struct.wmi* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wmi_delete_cipher_key_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @WMI_MAX_KEY_INDEX, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 8)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.wmi_delete_cipher_key_cmd*
  store %struct.wmi_delete_cipher_key_cmd* %28, %struct.wmi_delete_cipher_key_cmd** %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.wmi_delete_cipher_key_cmd*, %struct.wmi_delete_cipher_key_cmd** %9, align 8
  %31 = getelementptr inbounds %struct.wmi_delete_cipher_key_cmd, %struct.wmi_delete_cipher_key_cmd* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.wmi*, %struct.wmi** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i32, i32* @WMI_DELETE_CIPHER_KEY_CMDID, align 4
  %36 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %37 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %32, i64 %33, %struct.sk_buff* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %24, %21, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
