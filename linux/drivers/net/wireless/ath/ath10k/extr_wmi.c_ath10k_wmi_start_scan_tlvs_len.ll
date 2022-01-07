; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_start_scan_tlvs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_start_scan_tlvs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_start_scan_arg = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wmi_start_scan_arg*)* @ath10k_wmi_start_scan_tlvs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath10k_wmi_start_scan_tlvs_len(%struct.wmi_start_scan_arg* %0) #0 {
  %2 = alloca %struct.wmi_start_scan_arg*, align 8
  %3 = alloca i32, align 4
  store %struct.wmi_start_scan_arg* %0, %struct.wmi_start_scan_arg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %5 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %14 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @roundup(i64 %15, i32 4)
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %23 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %32 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %26, %21
  %41 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %42 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  %50 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %51 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %40
  %60 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %61 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  %69 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %2, align 8
  %70 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %64, %59
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  ret i64 %80
}

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
