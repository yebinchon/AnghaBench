; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_startscan_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_startscan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_start_scan_cmd = type { i32, i32, i32*, i8*, i8*, i8*, i8* }

@WMI_LONG_SCAN = common dso_local global i32 0, align 4
@WMI_SHORT_SCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WMI_MAX_CHANNELS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_START_SCAN_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32, i32, i32, i32, i32, i32, i32, i32*)* @ath6kl_wmi_startscan_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_startscan_cmd(%struct.wmi* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.wmi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca %struct.wmi_start_scan_cmd*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 48, i32* %22, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @WMI_LONG_SCAN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %9
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @WMI_SHORT_SCAN, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %117

35:                                               ; preds = %28, %9
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* @WMI_MAX_CHANNELS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %117

42:                                               ; preds = %35
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %18, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %22, align 4
  br label %54

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %22, align 4
  %56 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %20, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %117

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.wmi_start_scan_cmd*
  store %struct.wmi_start_scan_cmd* %66, %struct.wmi_start_scan_cmd** %21, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %69 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %73 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %77 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %81 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %85 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %88 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %23, align 4
  br label %89

89:                                               ; preds = %106, %62
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load i32*, i32** %19, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %21, align 8
  %101 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %93
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %23, align 4
  br label %89

109:                                              ; preds = %89
  %110 = load %struct.wmi*, %struct.wmi** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %113 = load i32, i32* @WMI_START_SCAN_CMDID, align 4
  %114 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %115 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %110, i32 %111, %struct.sk_buff* %112, i32 %113, i32 %114)
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %109, %59, %39, %32
  %118 = load i32, i32* %10, align 4
  ret i32 %118
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
