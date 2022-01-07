; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_phyerr_ev_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_phyerr_ev_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_phyerr_hdr_arg = type { i8*, i8*, i8*, i8*, i8* }
%struct.wmi_tlv_phyerr_ev = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_COMB_PHYERR_RX_HDR = common dso_local global i64 0, align 8
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_phyerr_hdr_arg*)* @ath10k_wmi_tlv_op_pull_phyerr_ev_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_phyerr_ev_hdr(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_phyerr_hdr_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_phyerr_hdr_arg*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.wmi_tlv_phyerr_ev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_phyerr_hdr_arg* %2, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %12, i32 %15, i32 %18, i32 %19)
  store i8** %20, i8*** %8, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = call i64 @IS_ERR(i8** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i8**, i8*** %8, align 8
  %26 = call i32 @PTR_ERR(i8** %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load i8**, i8*** %8, align 8
  %33 = load i64, i64* @WMI_TLV_TAG_STRUCT_COMB_PHYERR_RX_HDR, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.wmi_tlv_phyerr_ev*
  store %struct.wmi_tlv_phyerr_ev* %36, %struct.wmi_tlv_phyerr_ev** %9, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i64, i64* @WMI_TLV_TAG_ARRAY_BYTE, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load %struct.wmi_tlv_phyerr_ev*, %struct.wmi_tlv_phyerr_ev** %9, align 8
  %42 = icmp ne %struct.wmi_tlv_phyerr_ev* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43, %31
  %47 = load i8**, i8*** %8, align 8
  %48 = call i32 @kfree(i8** %47)
  %49 = load i32, i32* @EPROTO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %43
  %52 = load %struct.wmi_tlv_phyerr_ev*, %struct.wmi_tlv_phyerr_ev** %9, align 8
  %53 = getelementptr inbounds %struct.wmi_tlv_phyerr_ev, %struct.wmi_tlv_phyerr_ev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @__le32_to_cpu(i32 %54)
  %56 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %57 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wmi_tlv_phyerr_ev*, %struct.wmi_tlv_phyerr_ev** %9, align 8
  %59 = getelementptr inbounds %struct.wmi_tlv_phyerr_ev, %struct.wmi_tlv_phyerr_ev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @__le32_to_cpu(i32 %60)
  %62 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %63 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.wmi_tlv_phyerr_ev*, %struct.wmi_tlv_phyerr_ev** %9, align 8
  %65 = getelementptr inbounds %struct.wmi_tlv_phyerr_ev, %struct.wmi_tlv_phyerr_ev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @__le32_to_cpu(i32 %66)
  %68 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %69 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.wmi_tlv_phyerr_ev*, %struct.wmi_tlv_phyerr_ev** %9, align 8
  %71 = getelementptr inbounds %struct.wmi_tlv_phyerr_ev, %struct.wmi_tlv_phyerr_ev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @__le32_to_cpu(i32 %72)
  %74 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %75 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.wmi_phyerr_hdr_arg*, %struct.wmi_phyerr_hdr_arg** %7, align 8
  %78 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i8**, i8*** %8, align 8
  %80 = call i32 @kfree(i8** %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %51, %46, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
