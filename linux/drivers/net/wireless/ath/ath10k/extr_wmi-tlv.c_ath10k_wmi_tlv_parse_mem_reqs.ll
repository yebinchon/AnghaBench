; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_parse_mem_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_parse_mem_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_svc_rdy_ev_arg = type { i8** }

@WMI_TLV_TAG_STRUCT_WLAN_HOST_MEM_REQ = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i64, i64, i8*, i8*)* @ath10k_wmi_tlv_parse_mem_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_parse_mem_reqs(%struct.ath10k* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wmi_svc_rdy_ev_arg*, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.wmi_svc_rdy_ev_arg*
  store %struct.wmi_svc_rdy_ev_arg* %15, %struct.wmi_svc_rdy_ev_arg** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @WMI_TLV_TAG_STRUCT_WLAN_HOST_MEM_REQ, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %54

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %12, align 8
  %26 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i8** %27)
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %23
  %31 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %12, align 8
  %32 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %12, align 8
  %42 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  store i32 0, i32* %6, align 4
  br label %54

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %39, %19
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
