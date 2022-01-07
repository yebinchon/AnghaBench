; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_start_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_start_scan_arg = type { i32 }
%struct.wmi_start_scan_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wmi start scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_start_scan_arg*)* @ath10k_wmi_op_gen_start_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_start_scan(%struct.ath10k* %0, %struct.wmi_start_scan_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_start_scan_arg*, align 8
  %6 = alloca %struct.wmi_start_scan_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_start_scan_arg* %1, %struct.wmi_start_scan_arg** %5, align 8
  %10 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %5, align 8
  %11 = call i32 @ath10k_wmi_start_scan_verify(%struct.wmi_start_scan_arg* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.sk_buff* @ERR_PTR(i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %5, align 8
  %19 = call i32 @ath10k_wmi_start_scan_tlvs_len(%struct.wmi_start_scan_arg* %18)
  %20 = sext i32 %19 to i64
  %21 = add i64 12, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %22, i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.sk_buff* @ERR_PTR(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %3, align 8
  br label %51

31:                                               ; preds = %17
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.wmi_start_scan_cmd*
  store %struct.wmi_start_scan_cmd* %35, %struct.wmi_start_scan_cmd** %6, align 8
  %36 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %36, i32 0, i32 2
  %38 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %5, align 8
  %39 = call i32 @ath10k_wmi_put_start_scan_common(i32* %37, %struct.wmi_start_scan_arg* %38)
  %40 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %40, i32 0, i32 1
  %42 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %5, align 8
  %43 = call i32 @ath10k_wmi_put_start_scan_tlvs(i32* %41, %struct.wmi_start_scan_arg* %42)
  %44 = call i32 @__cpu_to_le32(i32 0)
  %45 = load %struct.wmi_start_scan_cmd*, %struct.wmi_start_scan_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.wmi_start_scan_cmd, %struct.wmi_start_scan_cmd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %49 = call i32 @ath10k_dbg(%struct.ath10k* %47, i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %3, align 8
  br label %51

51:                                               ; preds = %31, %27, %14
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %52
}

declare dso_local i32 @ath10k_wmi_start_scan_verify(%struct.wmi_start_scan_arg*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @ath10k_wmi_start_scan_tlvs_len(%struct.wmi_start_scan_arg*) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_wmi_put_start_scan_common(i32*, %struct.wmi_start_scan_arg*) #1

declare dso_local i32 @ath10k_wmi_put_start_scan_tlvs(i32*, %struct.wmi_start_scan_arg*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
