; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_set_slot_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_set_slot_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i64)* @b43legacy_set_slot_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_set_slot_time(%struct.b43legacy_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 510, %14
  %16 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %13, i32 1668, i64 %15)
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %18 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %17, i32 %18, i32 16, i64 %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i64) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
