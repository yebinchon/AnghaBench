; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_clear_tx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_clear_tx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VXGE_HW_VPATH_INTR_TX = common dso_local global i64 0, align 8
@VXGE_HW_VPATH_INTR_RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_device_clear_tx_rx(%struct.__vxge_hw_device* %0) #0 {
  %2 = alloca %struct.__vxge_hw_device*, align 8
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %2, align 8
  %3 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %4 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @VXGE_HW_VPATH_INTR_TX, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %12 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @VXGE_HW_VPATH_INTR_RX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %10, %1
  %19 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %20 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @VXGE_HW_VPATH_INTR_TX, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %26 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @VXGE_HW_VPATH_INTR_RX, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %24, %30
  %32 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %33 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @writeq(i32 %31, i32* %35)
  br label %37

37:                                               ; preds = %18, %10
  %38 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %39 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @VXGE_HW_VPATH_INTR_TX, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %47 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VXGE_HW_VPATH_INTR_RX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %45, %37
  %54 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %55 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VXGE_HW_VPATH_INTR_TX, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %61 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @VXGE_HW_VPATH_INTR_RX, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %59, %65
  %67 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %68 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @__vxge_hw_pio_mem_write32_upper(i32 %66, i32* %70)
  br label %72

72:                                               ; preds = %53, %45
  ret void
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @__vxge_hw_pio_mem_write32_upper(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
