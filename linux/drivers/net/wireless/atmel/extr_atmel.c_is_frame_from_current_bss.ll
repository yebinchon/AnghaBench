; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_is_frame_from_current_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_is_frame_from_current_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }

@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_private*, %struct.ieee80211_hdr*)* @is_frame_from_current_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_frame_from_current_bss(%struct.atmel_private* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_private*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  %6 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  %10 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @memcmp(i32 %16, i32 %19, i32 6)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @memcmp(i32 %26, i32 %29, i32 6)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
