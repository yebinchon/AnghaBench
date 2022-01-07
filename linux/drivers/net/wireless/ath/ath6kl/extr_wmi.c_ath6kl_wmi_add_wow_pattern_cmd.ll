; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_add_wow_pattern_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_add_wow_pattern_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_add_wow_pattern_cmd = type { i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_ADD_WOW_PATTERN_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_add_wow_pattern_cmd(%struct.wmi* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.wmi_add_wow_pattern_cmd*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* %12, align 4
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = add i64 24, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %16, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %70

33:                                               ; preds = %7
  %34 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.wmi_add_wow_pattern_cmd*
  store %struct.wmi_add_wow_pattern_cmd* %37, %struct.wmi_add_wow_pattern_cmd** %17, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.wmi_add_wow_pattern_cmd*, %struct.wmi_add_wow_pattern_cmd** %17, align 8
  %40 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, %struct.wmi_add_wow_pattern_cmd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.wmi_add_wow_pattern_cmd*, %struct.wmi_add_wow_pattern_cmd** %17, align 8
  %43 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, %struct.wmi_add_wow_pattern_cmd* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.wmi_add_wow_pattern_cmd*, %struct.wmi_add_wow_pattern_cmd** %17, align 8
  %46 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, %struct.wmi_add_wow_pattern_cmd* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.wmi_add_wow_pattern_cmd*, %struct.wmi_add_wow_pattern_cmd** %17, align 8
  %48 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, %struct.wmi_add_wow_pattern_cmd* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @memcpy(i32* %49, i32* %50, i32 %51)
  %53 = load %struct.wmi_add_wow_pattern_cmd*, %struct.wmi_add_wow_pattern_cmd** %17, align 8
  %54 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, %struct.wmi_add_wow_pattern_cmd* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %19, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load %struct.wmi*, %struct.wmi** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %66 = load i32, i32* @WMI_ADD_WOW_PATTERN_CMDID, align 4
  %67 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %68 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %63, i32 %64, %struct.sk_buff* %65, i32 %66, i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %33, %30
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
