; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_tlv_tx_bundle_compl_parse = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, i8*, i8*)* @ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse(%struct.ath10k* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wmi_tlv_tx_bundle_compl_parse*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.wmi_tlv_tx_bundle_compl_parse*
  store %struct.wmi_tlv_tx_bundle_compl_parse* %13, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %67 [
    i32 128, label %15
    i32 129, label %19
  ]

15:                                               ; preds = %5
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %18 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  br label %68

19:                                               ; preds = %5
  %20 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %21 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %26 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %29 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  br label %66

30:                                               ; preds = %19
  %31 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %32 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %37 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %40 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  br label %65

41:                                               ; preds = %30
  %42 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %43 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %48 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  br label %64

52:                                               ; preds = %41
  %53 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %54 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %59 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.wmi_tlv_tx_bundle_compl_parse*, %struct.wmi_tlv_tx_bundle_compl_parse** %11, align 8
  %62 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %24
  br label %68

67:                                               ; preds = %5
  br label %68

68:                                               ; preds = %67, %66, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
