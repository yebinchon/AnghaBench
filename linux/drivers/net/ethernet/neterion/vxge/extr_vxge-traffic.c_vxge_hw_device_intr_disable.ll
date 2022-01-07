; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VXGE_HW_INTR_MASK_ALL = common dso_local global i32 0, align 4
@VXGE_HW_DEFAULT_32 = common dso_local global i32 0, align 4
@VXGE_HW_MAX_VIRTUAL_PATHS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_device_intr_disable(%struct.__vxge_hw_device* %0) #0 {
  %2 = alloca %struct.__vxge_hw_device*, align 8
  %3 = alloca i64, align 8
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %2, align 8
  %4 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %5 = call i32 @vxge_hw_device_mask_all(%struct.__vxge_hw_device* %4)
  %6 = load i32, i32* @VXGE_HW_INTR_MASK_ALL, align 4
  %7 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %8 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @writeq(i32 %6, i32* %10)
  %12 = load i32, i32* @VXGE_HW_DEFAULT_32, align 4
  %13 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %14 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @__vxge_hw_pio_mem_write32_upper(i32 %12, i32* %16)
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %39, %1
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @VXGE_HW_MAX_VIRTUAL_PATHS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %24 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @vxge_mBIT(i64 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %39

31:                                               ; preds = %22
  %32 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %33 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @VXGE_HW_VIRTUAL_PATH_HANDLE(i32* %36)
  %38 = call i32 @vxge_hw_vpath_intr_disable(i32 %37)
  br label %39

39:                                               ; preds = %31, %30
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %18

42:                                               ; preds = %18
  ret void
}

declare dso_local i32 @vxge_hw_device_mask_all(%struct.__vxge_hw_device*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @__vxge_hw_pio_mem_write32_upper(i32, i32*) #1

declare dso_local i32 @vxge_mBIT(i64) #1

declare dso_local i32 @vxge_hw_vpath_intr_disable(i32) #1

declare dso_local i32 @VXGE_HW_VIRTUAL_PATH_HANDLE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
