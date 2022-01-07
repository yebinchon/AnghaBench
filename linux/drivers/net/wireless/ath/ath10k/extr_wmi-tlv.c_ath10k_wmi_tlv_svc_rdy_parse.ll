; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_svc_rdy_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_svc_rdy_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_tlv_svc_rdy_parse = type { i32, i32, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, i8*, i8*)* @ath10k_wmi_tlv_svc_rdy_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_svc_rdy_parse(%struct.ath10k* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wmi_tlv_svc_rdy_parse*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.wmi_tlv_svc_rdy_parse*
  store %struct.wmi_tlv_svc_rdy_parse* %13, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %48 [
    i32 128, label %15
    i32 129, label %19
    i32 131, label %23
    i32 130, label %27
  ]

15:                                               ; preds = %5
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %18 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  br label %49

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %22 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  br label %49

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %26 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %49

27:                                               ; preds = %5
  %28 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %29 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %37 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %40 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.wmi_tlv_svc_rdy_parse*, %struct.wmi_tlv_svc_rdy_parse** %11, align 8
  %45 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %32
  br label %49

48:                                               ; preds = %5
  br label %49

49:                                               ; preds = %48, %47, %23, %19, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
