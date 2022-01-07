; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @brcms_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcms_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @IRQ_NONE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.brcms_info*
  store %struct.brcms_info* %9, %struct.brcms_info** %5, align 8
  %10 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %11 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %14 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @brcms_c_isr(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %20 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %19, i32 0, i32 1
  %21 = call i32 @tasklet_schedule(i32* %20)
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %25 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @brcms_c_isr(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
