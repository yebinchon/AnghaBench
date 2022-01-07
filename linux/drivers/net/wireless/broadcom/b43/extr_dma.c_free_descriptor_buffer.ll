; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_free_descriptor_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_free_descriptor_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_dmadesc_meta = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*, %struct.b43_dmadesc_meta*)* @free_descriptor_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_descriptor_buffer(%struct.b43_dmaring* %0, %struct.b43_dmadesc_meta* %1) #0 {
  %3 = alloca %struct.b43_dmaring*, align 8
  %4 = alloca %struct.b43_dmadesc_meta*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %3, align 8
  store %struct.b43_dmadesc_meta* %1, %struct.b43_dmadesc_meta** %4, align 8
  %5 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %4, align 8
  %6 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %11 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %16 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %4, align 8
  %23 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ieee80211_free_txskb(i32 %21, i32* %24)
  br label %31

26:                                               ; preds = %9
  %27 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %4, align 8
  %28 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @dev_kfree_skb_any(i32* %29)
  br label %31

31:                                               ; preds = %26, %14
  %32 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %4, align 8
  %33 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @ieee80211_free_txskb(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
