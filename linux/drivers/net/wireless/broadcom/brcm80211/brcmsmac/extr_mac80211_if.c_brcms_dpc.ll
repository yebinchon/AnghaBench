; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_dpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_dpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_dpc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.brcms_info*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.brcms_info*
  store %struct.brcms_info* %6, %struct.brcms_info** %3, align 8
  %7 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %23 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %22, i32 0, i32 6
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @brcms_c_intrsupd(i32 %28)
  %30 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %30, i32 0, i32 6
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %21, %16
  %35 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @brcms_c_dpc(i32 %37, i32 1)
  %39 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %43 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %62

49:                                               ; preds = %41
  %50 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %51 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %56 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %55, i32 0, i32 2
  %57 = call i32 @tasklet_schedule(i32* %56)
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %60 = call i32 @brcms_intrson(%struct.brcms_info* %59)
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %64 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %67 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %66, i32 0, i32 0
  %68 = call i32 @wake_up(i32* %67)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @brcms_c_intrsupd(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @brcms_c_dpc(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @brcms_intrson(%struct.brcms_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
