; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_relinquish_implicit_pstream_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_relinquish_implicit_pstream_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32, i32* }

@WMM_NUM_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi*)* @ath6kl_wmi_relinquish_implicit_pstream_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_wmi_relinquish_implicit_pstream_credits(%struct.wmi* %0) #0 {
  %2 = alloca %struct.wmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %2, align 8
  %6 = load %struct.wmi*, %struct.wmi** %2, align 8
  %7 = getelementptr inbounds %struct.wmi, %struct.wmi* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.wmi*, %struct.wmi** %2, align 8
  %10 = getelementptr inbounds %struct.wmi, %struct.wmi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.wmi*, %struct.wmi** %2, align 8
  %13 = getelementptr inbounds %struct.wmi, %struct.wmi* %12, i32 0, i32 1
  %14 = call i32 @spin_unlock_bh(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %54, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WMM_NUM_AC, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %struct.wmi*, %struct.wmi** %2, align 8
  %27 = getelementptr inbounds %struct.wmi, %struct.wmi* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.wmi*, %struct.wmi** %2, align 8
  %30 = getelementptr inbounds %struct.wmi, %struct.wmi* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load %struct.wmi*, %struct.wmi** %2, align 8
  %37 = getelementptr inbounds %struct.wmi, %struct.wmi* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.wmi*, %struct.wmi** %2, align 8
  %48 = getelementptr inbounds %struct.wmi, %struct.wmi* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ath6kl_indicate_tx_activity(i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %41, %25
  br label %53

53:                                               ; preds = %52, %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load %struct.wmi*, %struct.wmi** %2, align 8
  %59 = getelementptr inbounds %struct.wmi, %struct.wmi* %58, i32 0, i32 1
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.wmi*, %struct.wmi** %2, align 8
  %63 = getelementptr inbounds %struct.wmi, %struct.wmi* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.wmi*, %struct.wmi** %2, align 8
  %65 = getelementptr inbounds %struct.wmi, %struct.wmi* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_bh(i32* %65)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_indicate_tx_activity(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
