; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_swba_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_swba_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_tlv_swba_parse = type { i32, i32, i8* }

@ath10k_wmi_tlv_swba_tim_parse = common dso_local global i32 0, align 4
@ath10k_wmi_tlv_swba_noa_parse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, i8*, i8*)* @ath10k_wmi_tlv_swba_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_swba_parse(%struct.ath10k* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wmi_tlv_swba_parse*, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.wmi_tlv_swba_parse*
  store %struct.wmi_tlv_swba_parse* %15, %struct.wmi_tlv_swba_parse** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %61 [
    i32 128, label %17
    i32 129, label %21
  ]

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %20 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %62

21:                                               ; preds = %5
  %22 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %23 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %28 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ath10k_wmi_tlv_swba_tim_parse, align 4
  %33 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %34 = call i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %29, i8* %30, i32 %31, i32 %32, %struct.wmi_tlv_swba_parse* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %26
  br label %60

40:                                               ; preds = %21
  %41 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %42 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40
  %46 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %47 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ath10k_wmi_tlv_swba_noa_parse, align 4
  %52 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %53 = call i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %48, i8* %49, i32 %50, i32 %51, %struct.wmi_tlv_swba_parse* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %63

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %39
  br label %62

61:                                               ; preds = %5
  br label %62

62:                                               ; preds = %61, %60, %17
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %56, %37
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @ath10k_wmi_tlv_iter(%struct.ath10k*, i8*, i32, i32, %struct.wmi_tlv_swba_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
