; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_send_action_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_send_action_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i64, i32* }
%struct.sk_buff = type { i64 }
%struct.wmi_send_action_cmd = type { i32*, i32, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"send_action_cmd: id=%u freq=%u wait=%u len=%u\0A\00", align 1
@WMI_SEND_ACTION_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32, i64, i64, i64, i32*, i64)* @ath6kl_wmi_send_action_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_send_action_cmd(%struct.wmi* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.wmi_send_action_cmd*, align 8
  %18 = alloca i32*, align 8
  store %struct.wmi* %0, %struct.wmi** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %97

24:                                               ; preds = %7
  %25 = load i64, i64* %15, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kmalloc(i64 %25, i32 %26)
  store i32* %27, i32** %18, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %97

33:                                               ; preds = %24
  %34 = load i64, i64* %15, align 8
  %35 = add i64 40, %34
  %36 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %16, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %97

44:                                               ; preds = %33
  %45 = load %struct.wmi*, %struct.wmi** %9, align 8
  %46 = getelementptr inbounds %struct.wmi, %struct.wmi* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @memcpy(i32* %49, i32* %50, i64 %51)
  %53 = load i32*, i32** %18, align 8
  %54 = load %struct.wmi*, %struct.wmi** %9, align 8
  %55 = getelementptr inbounds %struct.wmi, %struct.wmi* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.wmi*, %struct.wmi** %9, align 8
  %58 = getelementptr inbounds %struct.wmi, %struct.wmi* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @ath6kl_dbg(i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61, i64 %62, i64 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.wmi_send_action_cmd*
  store %struct.wmi_send_action_cmd* %68, %struct.wmi_send_action_cmd** %17, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i8* @cpu_to_le32(i64 %69)
  %71 = load %struct.wmi_send_action_cmd*, %struct.wmi_send_action_cmd** %17, align 8
  %72 = getelementptr inbounds %struct.wmi_send_action_cmd, %struct.wmi_send_action_cmd* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i8* @cpu_to_le32(i64 %73)
  %75 = load %struct.wmi_send_action_cmd*, %struct.wmi_send_action_cmd** %17, align 8
  %76 = getelementptr inbounds %struct.wmi_send_action_cmd, %struct.wmi_send_action_cmd* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i8* @cpu_to_le32(i64 %77)
  %79 = load %struct.wmi_send_action_cmd*, %struct.wmi_send_action_cmd** %17, align 8
  %80 = getelementptr inbounds %struct.wmi_send_action_cmd, %struct.wmi_send_action_cmd* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @cpu_to_le16(i64 %81)
  %83 = load %struct.wmi_send_action_cmd*, %struct.wmi_send_action_cmd** %17, align 8
  %84 = getelementptr inbounds %struct.wmi_send_action_cmd, %struct.wmi_send_action_cmd* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.wmi_send_action_cmd*, %struct.wmi_send_action_cmd** %17, align 8
  %86 = getelementptr inbounds %struct.wmi_send_action_cmd, %struct.wmi_send_action_cmd* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @memcpy(i32* %87, i32* %88, i64 %89)
  %91 = load %struct.wmi*, %struct.wmi** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %94 = load i32, i32* @WMI_SEND_ACTION_CMDID, align 4
  %95 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %96 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %91, i32 %92, %struct.sk_buff* %93, i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %44, %39, %30, %21
  %98 = load i32, i32* %8, align 4
  ret i32 %98
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
