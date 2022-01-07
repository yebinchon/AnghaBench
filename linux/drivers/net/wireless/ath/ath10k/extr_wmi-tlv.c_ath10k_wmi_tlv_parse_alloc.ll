; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_parse_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_parse_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@WMI_TLV_TAG_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.ath10k*, i8*, i64, i32)* @ath10k_wmi_tlv_parse_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @WMI_TLV_TAG_MAX, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i8** @kcalloc(i32 %12, i32 8, i32 %13)
  store i8** %14, i8*** %10, align 8
  %15 = load i8**, i8*** %10, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8** @ERR_PTR(i32 %19)
  store i8** %20, i8*** %5, align 8
  br label %36

21:                                               ; preds = %4
  %22 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @ath10k_wmi_tlv_parse(%struct.ath10k* %22, i8** %23, i8* %24, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8**, i8*** %10, align 8
  %31 = call i32 @kfree(i8** %30)
  %32 = load i32, i32* %11, align 4
  %33 = call i8** @ERR_PTR(i32 %32)
  store i8** %33, i8*** %5, align 8
  br label %36

34:                                               ; preds = %21
  %35 = load i8**, i8*** %10, align 8
  store i8** %35, i8*** %5, align 8
  br label %36

36:                                               ; preds = %34, %29, %17
  %37 = load i8**, i8*** %5, align 8
  ret i8** %37
}

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i8** @ERR_PTR(i32) #1

declare dso_local i32 @ath10k_wmi_tlv_parse(%struct.ath10k*, i8**, i8*, i64) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
