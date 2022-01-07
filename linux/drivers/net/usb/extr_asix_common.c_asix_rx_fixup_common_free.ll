; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_rx_fixup_common_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_rx_fixup_common_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asix_common_private = type { %struct.asix_rx_fixup_info }
%struct.asix_rx_fixup_info = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asix_rx_fixup_common_free(%struct.asix_common_private* %0) #0 {
  %2 = alloca %struct.asix_common_private*, align 8
  %3 = alloca %struct.asix_rx_fixup_info*, align 8
  store %struct.asix_common_private* %0, %struct.asix_common_private** %2, align 8
  %4 = load %struct.asix_common_private*, %struct.asix_common_private** %2, align 8
  %5 = icmp ne %struct.asix_common_private* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.asix_common_private*, %struct.asix_common_private** %2, align 8
  %9 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %8, i32 0, i32 0
  store %struct.asix_rx_fixup_info* %9, %struct.asix_rx_fixup_info** %3, align 8
  %10 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %3, align 8
  %11 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %3, align 8
  %16 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree_skb(i32* %17)
  %19 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %3, align 8
  %20 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %6, %14, %7
  ret void
}

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
