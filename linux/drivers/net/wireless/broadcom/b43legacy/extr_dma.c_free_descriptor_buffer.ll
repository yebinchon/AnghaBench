; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_free_descriptor_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_free_descriptor_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32 }
%struct.b43legacy_dmadesc_meta = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc_meta*, i32)* @free_descriptor_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_descriptor_buffer(%struct.b43legacy_dmaring* %0, %struct.b43legacy_dmadesc_meta* %1, i32 %2) #0 {
  %4 = alloca %struct.b43legacy_dmaring*, align 8
  %5 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %6 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %4, align 8
  store %struct.b43legacy_dmadesc_meta* %1, %struct.b43legacy_dmadesc_meta** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %5, align 8
  %8 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %5, align 8
  %16 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @dev_kfree_skb_irq(i32* %17)
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %5, align 8
  %21 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @dev_kfree_skb(i32* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %5, align 8
  %26 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
