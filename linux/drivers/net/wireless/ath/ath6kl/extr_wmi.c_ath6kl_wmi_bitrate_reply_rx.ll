; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_bitrate_reply_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_bitrate_reply_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.wmi_bit_rate_reply = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rateindex %d\0A\00", align 1
@RATE_AUTO = common dso_local global i64 0, align 8
@RATE_MCS_7_40 = common dso_local global i32 0, align 4
@wmi_rate_tbl = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32)* @ath6kl_wmi_bitrate_reply_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_bitrate_reply_rx(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_bit_rate_reply*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %71

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.wmi_bit_rate_reply*
  store %struct.wmi_bit_rate_reply* %20, %struct.wmi_bit_rate_reply** %8, align 8
  %21 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %22 = load %struct.wmi_bit_rate_reply*, %struct.wmi_bit_rate_reply** %8, align 8
  %23 = getelementptr inbounds %struct.wmi_bit_rate_reply, %struct.wmi_bit_rate_reply* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ath6kl_dbg(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.wmi_bit_rate_reply*, %struct.wmi_bit_rate_reply** %8, align 8
  %27 = getelementptr inbounds %struct.wmi_bit_rate_reply, %struct.wmi_bit_rate_reply* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @RATE_AUTO, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i64, i64* @RATE_AUTO, align 8
  store i64 %33, i64* %9, align 8
  br label %66

34:                                               ; preds = %18
  %35 = load %struct.wmi_bit_rate_reply*, %struct.wmi_bit_rate_reply** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_bit_rate_reply, %struct.wmi_bit_rate_reply* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 127
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @RATE_MCS_7_40, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp sgt i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %71

49:                                               ; preds = %34
  %50 = load %struct.wmi_bit_rate_reply*, %struct.wmi_bit_rate_reply** %8, align 8
  %51 = getelementptr inbounds %struct.wmi_bit_rate_reply, %struct.wmi_bit_rate_reply* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %10, align 4
  %57 = load i64**, i64*** @wmi_rate_tbl, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %49, %32
  %67 = load %struct.wmi*, %struct.wmi** %5, align 8
  %68 = getelementptr inbounds %struct.wmi, %struct.wmi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ath6kl_wakeup_event(i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %46, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ath6kl_wakeup_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
