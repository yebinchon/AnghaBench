; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c___ath6kl_wmi_send_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c___ath6kl_wmi_send_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i64, i32* }
%struct.sk_buff = type { i64 }
%struct.wmi_send_mgmt_cmd = type { i32*, i32, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"send_action_cmd: id=%u freq=%u wait=%u len=%u\0A\00", align 1
@WMI_SEND_MGMT_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32, i64, i64, i64, i32*, i64, i64)* @__ath6kl_wmi_send_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath6kl_wmi_send_mgmt_cmd(%struct.wmi* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.wmi_send_mgmt_cmd*, align 8
  %20 = alloca i32*, align 8
  store %struct.wmi* %0, %struct.wmi** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %103

26:                                               ; preds = %8
  %27 = load i64, i64* %16, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i64 %27, i32 %28)
  store i32* %29, i32** %20, align 8
  %30 = load i32*, i32** %20, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %103

35:                                               ; preds = %26
  %36 = load i64, i64* %16, align 8
  %37 = add i64 48, %36
  %38 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %18, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %20, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %103

46:                                               ; preds = %35
  %47 = load %struct.wmi*, %struct.wmi** %10, align 8
  %48 = getelementptr inbounds %struct.wmi, %struct.wmi* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load i32*, i32** %20, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @memcpy(i32* %51, i32* %52, i64 %53)
  %55 = load i32*, i32** %20, align 8
  %56 = load %struct.wmi*, %struct.wmi** %10, align 8
  %57 = getelementptr inbounds %struct.wmi, %struct.wmi* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load %struct.wmi*, %struct.wmi** %10, align 8
  %60 = getelementptr inbounds %struct.wmi, %struct.wmi* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @ath6kl_dbg(i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.wmi_send_mgmt_cmd*
  store %struct.wmi_send_mgmt_cmd* %70, %struct.wmi_send_mgmt_cmd** %19, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i8* @cpu_to_le32(i64 %71)
  %73 = load %struct.wmi_send_mgmt_cmd*, %struct.wmi_send_mgmt_cmd** %19, align 8
  %74 = getelementptr inbounds %struct.wmi_send_mgmt_cmd, %struct.wmi_send_mgmt_cmd* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i8* @cpu_to_le32(i64 %75)
  %77 = load %struct.wmi_send_mgmt_cmd*, %struct.wmi_send_mgmt_cmd** %19, align 8
  %78 = getelementptr inbounds %struct.wmi_send_mgmt_cmd, %struct.wmi_send_mgmt_cmd* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = load %struct.wmi_send_mgmt_cmd*, %struct.wmi_send_mgmt_cmd** %19, align 8
  %82 = getelementptr inbounds %struct.wmi_send_mgmt_cmd, %struct.wmi_send_mgmt_cmd* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i8* @cpu_to_le32(i64 %83)
  %85 = load %struct.wmi_send_mgmt_cmd*, %struct.wmi_send_mgmt_cmd** %19, align 8
  %86 = getelementptr inbounds %struct.wmi_send_mgmt_cmd, %struct.wmi_send_mgmt_cmd* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @cpu_to_le16(i64 %87)
  %89 = load %struct.wmi_send_mgmt_cmd*, %struct.wmi_send_mgmt_cmd** %19, align 8
  %90 = getelementptr inbounds %struct.wmi_send_mgmt_cmd, %struct.wmi_send_mgmt_cmd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.wmi_send_mgmt_cmd*, %struct.wmi_send_mgmt_cmd** %19, align 8
  %92 = getelementptr inbounds %struct.wmi_send_mgmt_cmd, %struct.wmi_send_mgmt_cmd* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @memcpy(i32* %93, i32* %94, i64 %95)
  %97 = load %struct.wmi*, %struct.wmi** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %100 = load i32, i32* @WMI_SEND_MGMT_CMDID, align 4
  %101 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %102 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %97, i32 %98, %struct.sk_buff* %99, i32 %100, i32 %101)
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %46, %41, %32, %23
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
