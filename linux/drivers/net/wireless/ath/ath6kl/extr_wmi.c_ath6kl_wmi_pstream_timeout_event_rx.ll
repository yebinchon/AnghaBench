; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_pstream_timeout_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_pstream_timeout_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32, i64* }
%struct.wmi_pstream_timeout_event = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@WMM_NUM_AC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid traffic class: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32)* @ath6kl_wmi_pstream_timeout_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_pstream_timeout_event_rx(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_pstream_timeout_event*, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %62

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.wmi_pstream_timeout_event*
  store %struct.wmi_pstream_timeout_event* %17, %struct.wmi_pstream_timeout_event** %8, align 8
  %18 = load %struct.wmi_pstream_timeout_event*, %struct.wmi_pstream_timeout_event** %8, align 8
  %19 = getelementptr inbounds %struct.wmi_pstream_timeout_event, %struct.wmi_pstream_timeout_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WMM_NUM_AC, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.wmi_pstream_timeout_event*, %struct.wmi_pstream_timeout_event** %8, align 8
  %25 = getelementptr inbounds %struct.wmi_pstream_timeout_event, %struct.wmi_pstream_timeout_event* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ath6kl_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %15
  %31 = load %struct.wmi*, %struct.wmi** %5, align 8
  %32 = getelementptr inbounds %struct.wmi, %struct.wmi* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.wmi*, %struct.wmi** %5, align 8
  %35 = getelementptr inbounds %struct.wmi, %struct.wmi* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.wmi_pstream_timeout_event*, %struct.wmi_pstream_timeout_event** %8, align 8
  %38 = getelementptr inbounds %struct.wmi_pstream_timeout_event, %struct.wmi_pstream_timeout_event* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load %struct.wmi_pstream_timeout_event*, %struct.wmi_pstream_timeout_event** %8, align 8
  %42 = getelementptr inbounds %struct.wmi_pstream_timeout_event, %struct.wmi_pstream_timeout_event* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.wmi*, %struct.wmi** %5, align 8
  %48 = getelementptr inbounds %struct.wmi, %struct.wmi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.wmi*, %struct.wmi** %5, align 8
  %52 = getelementptr inbounds %struct.wmi, %struct.wmi* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.wmi*, %struct.wmi** %5, align 8
  %55 = getelementptr inbounds %struct.wmi, %struct.wmi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wmi_pstream_timeout_event*, %struct.wmi_pstream_timeout_event** %8, align 8
  %58 = getelementptr inbounds %struct.wmi_pstream_timeout_event, %struct.wmi_pstream_timeout_event* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ath6kl_indicate_tx_activity(i32 %56, i32 %60, i32 0)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %30, %23, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ath6kl_err(i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_indicate_tx_activity(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
