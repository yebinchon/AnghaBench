; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_rx_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_rx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

@NUM_RX_DESC = common dso_local global i32 0, align 4
@R8169_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8169_rx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_rx_clear(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %57, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NUM_RX_DESC, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi i1 [ false, %4 ], [ %16, %8 ]
  br i1 %18, label %19, label %60

19:                                               ; preds = %17
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = call i32 @tp_to_dev(%struct.rtl8169_private* %20)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le64_to_cpu(i32 %29)
  %31 = load i32, i32* @R8169_RX_BUF_SIZE, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_unmap_page(i32 %21, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @R8169_RX_BUF_SIZE, align 4
  %42 = call i32 @get_order(i32 %41)
  %43 = call i32 @__free_pages(i32* %40, i32 %42)
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* null, i32** %49, align 8
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = call i32 @rtl8169_make_unusable_by_asic(%struct.TYPE_2__* %55)
  br label %57

57:                                               ; preds = %19
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %4

60:                                               ; preds = %17
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @rtl8169_make_unusable_by_asic(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
