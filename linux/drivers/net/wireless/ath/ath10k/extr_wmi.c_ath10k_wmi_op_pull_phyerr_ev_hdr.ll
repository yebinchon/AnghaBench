; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_phyerr_ev_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_phyerr_ev_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_phyerr_hdr_arg = type { i32, i32, i8*, i8*, i8* }
%struct.wmi_phyerr_event = type { i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_phyerr_hdr_arg*)* @ath10k_wmi_op_pull_phyerr_ev_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_op_pull_phyerr_ev_hdr(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_phyerr_hdr_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_phyerr_hdr_arg*, align 8
  %8 = alloca %struct.wmi_phyerr_event*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_phyerr_hdr_arg* %2, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.wmi_phyerr_event*
  store %struct.wmi_phyerr_event* %13, %struct.wmi_phyerr_event** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.wmi_phyerr_event*, %struct.wmi_phyerr_event** %8, align 8
  %24 = getelementptr inbounds %struct.wmi_phyerr_event, %struct.wmi_phyerr_event* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @__le32_to_cpu(i32 %25)
  %27 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %28 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.wmi_phyerr_event*, %struct.wmi_phyerr_event** %8, align 8
  %30 = getelementptr inbounds %struct.wmi_phyerr_event, %struct.wmi_phyerr_event* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @__le32_to_cpu(i32 %31)
  %33 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %34 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_phyerr_event*, %struct.wmi_phyerr_event** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_phyerr_event, %struct.wmi_phyerr_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__le32_to_cpu(i32 %37)
  %39 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %40 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 16
  %46 = trunc i64 %45 to i32
  %47 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %48 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wmi_phyerr_event*, %struct.wmi_phyerr_event** %8, align 8
  %50 = getelementptr inbounds %struct.wmi_phyerr_event, %struct.wmi_phyerr_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %53 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %22, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i8* @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
