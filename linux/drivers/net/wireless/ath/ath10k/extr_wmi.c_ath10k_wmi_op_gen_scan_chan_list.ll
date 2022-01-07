; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_scan_chan_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_scan_chan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_scan_chan_list_arg = type { i32, %struct.wmi_channel_arg* }
%struct.wmi_channel_arg = type { i32 }
%struct.wmi_scan_chan_list_cmd = type { %struct.wmi_channel*, i32 }
%struct.wmi_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_scan_chan_list_arg*)* @ath10k_wmi_op_gen_scan_chan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_scan_chan_list(%struct.ath10k* %0, %struct.wmi_scan_chan_list_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_scan_chan_list_arg*, align 8
  %6 = alloca %struct.wmi_scan_chan_list_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wmi_channel_arg*, align 8
  %9 = alloca %struct.wmi_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_scan_chan_list_arg* %1, %struct.wmi_scan_chan_list_arg** %5, align 8
  %12 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %13 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.sk_buff* @ERR_PTR(i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %3, align 8
  br label %66

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.wmi_scan_chan_list_cmd*
  store %struct.wmi_scan_chan_list_cmd* %32, %struct.wmi_scan_chan_list_cmd** %6, align 8
  %33 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %34 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__cpu_to_le32(i32 %35)
  %37 = load %struct.wmi_scan_chan_list_cmd*, %struct.wmi_scan_chan_list_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.wmi_scan_chan_list_cmd, %struct.wmi_scan_chan_list_cmd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %61, %28
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %42 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %47 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %46, i32 0, i32 1
  %48 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %48, i64 %50
  store %struct.wmi_channel_arg* %51, %struct.wmi_channel_arg** %8, align 8
  %52 = load %struct.wmi_scan_chan_list_cmd*, %struct.wmi_scan_chan_list_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.wmi_scan_chan_list_cmd, %struct.wmi_scan_chan_list_cmd* %52, i32 0, i32 0
  %54 = load %struct.wmi_channel*, %struct.wmi_channel** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.wmi_channel, %struct.wmi_channel* %54, i64 %56
  store %struct.wmi_channel* %57, %struct.wmi_channel** %9, align 8
  %58 = load %struct.wmi_channel*, %struct.wmi_channel** %9, align 8
  %59 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %8, align 8
  %60 = call i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel* %58, %struct.wmi_channel_arg* %59)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %3, align 8
  br label %66

66:                                               ; preds = %64, %24
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %67
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel*, %struct.wmi_channel_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
