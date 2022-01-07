; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_cmd_hdr = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.sk_buff*, i32, i32)* @ath9k_wmi_cmd_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_wmi_cmd_issue(%struct.wmi* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_cmd_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.wmi_cmd_hdr* @skb_push(%struct.sk_buff* %11, i32 16)
  store %struct.wmi_cmd_hdr* %12, %struct.wmi_cmd_hdr** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @cpu_to_be16(i32 %13)
  %15 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %9, align 8
  %16 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.wmi*, %struct.wmi** %5, align 8
  %18 = getelementptr inbounds %struct.wmi, %struct.wmi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = call i8* @cpu_to_be16(i32 %20)
  %22 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %9, align 8
  %23 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.wmi*, %struct.wmi** %5, align 8
  %25 = getelementptr inbounds %struct.wmi, %struct.wmi* %24, i32 0, i32 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.wmi*, %struct.wmi** %5, align 8
  %29 = getelementptr inbounds %struct.wmi, %struct.wmi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wmi*, %struct.wmi** %5, align 8
  %32 = getelementptr inbounds %struct.wmi, %struct.wmi* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wmi*, %struct.wmi** %5, align 8
  %34 = getelementptr inbounds %struct.wmi, %struct.wmi* %33, i32 0, i32 4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.wmi*, %struct.wmi** %5, align 8
  %38 = getelementptr inbounds %struct.wmi, %struct.wmi* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.wmi*, %struct.wmi** %5, align 8
  %42 = getelementptr inbounds %struct.wmi, %struct.wmi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htc_send_epid(i32 %39, %struct.sk_buff* %40, i32 %43)
  ret i32 %44
}

declare dso_local %struct.wmi_cmd_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @htc_send_epid(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
