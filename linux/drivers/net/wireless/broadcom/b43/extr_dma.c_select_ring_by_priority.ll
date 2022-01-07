; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_select_ring_by_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_select_ring_by_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32 }
%struct.b43_wldev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.b43_dmaring*, %struct.b43_dmaring*, %struct.b43_dmaring*, %struct.b43_dmaring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_dmaring* (%struct.b43_wldev*, i32)* @select_ring_by_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_dmaring* @select_ring_by_priority(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_dmaring*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %12 [
    i32 0, label %14
    i32 1, label %19
    i32 2, label %24
    i32 3, label %29
  ]

12:                                               ; preds = %10
  %13 = call i32 @B43_WARN_ON(i32 1)
  br label %14

14:                                               ; preds = %10, %12
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load %struct.b43_dmaring*, %struct.b43_dmaring** %17, align 8
  store %struct.b43_dmaring* %18, %struct.b43_dmaring** %5, align 8
  br label %34

19:                                               ; preds = %10
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.b43_dmaring*, %struct.b43_dmaring** %22, align 8
  store %struct.b43_dmaring* %23, %struct.b43_dmaring** %5, align 8
  br label %34

24:                                               ; preds = %10
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.b43_dmaring*, %struct.b43_dmaring** %27, align 8
  store %struct.b43_dmaring* %28, %struct.b43_dmaring** %5, align 8
  br label %34

29:                                               ; preds = %10
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.b43_dmaring*, %struct.b43_dmaring** %32, align 8
  store %struct.b43_dmaring* %33, %struct.b43_dmaring** %5, align 8
  br label %34

34:                                               ; preds = %29, %24, %19, %14
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.b43_dmaring*, %struct.b43_dmaring** %38, align 8
  store %struct.b43_dmaring* %39, %struct.b43_dmaring** %5, align 8
  br label %40

40:                                               ; preds = %35, %34
  %41 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  ret %struct.b43_dmaring* %41
}

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
