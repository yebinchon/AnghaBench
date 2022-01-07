; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { i32, i32*, i64*, %struct.TYPE_4__*, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@VXGE_HW_MAX_VIRTUAL_PATHS = common dso_local global i64 0, align 8
@VXGE_HW_INTR_MODE_IRQLINE = common dso_local global i64 0, align 8
@VXGE_HW_VPATH_INTR_TX = common dso_local global i64 0, align 8
@VXGE_HW_VPATH_INTR_RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_device_intr_enable(%struct.__vxge_hw_device* %0) #0 {
  %2 = alloca %struct.__vxge_hw_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %2, align 8
  %6 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %7 = call i32 @vxge_hw_device_mask_all(%struct.__vxge_hw_device* %6)
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @VXGE_HW_MAX_VIRTUAL_PATHS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %14 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @vxge_mBIT(i64 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %29

21:                                               ; preds = %12
  %22 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @VXGE_HW_VIRTUAL_PATH_HANDLE(i32* %26)
  %28 = call i32 @vxge_hw_vpath_intr_enable(i32 %27)
  br label %29

29:                                               ; preds = %21, %20
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %34 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VXGE_HW_INTR_MODE_IRQLINE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %32
  %40 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %41 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @VXGE_HW_VPATH_INTR_TX, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %47 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VXGE_HW_VPATH_INTR_RX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %45, %51
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %58 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = call i32 @writeq(i32 %56, i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %65 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = call i32 @writeq(i32 %63, i32* %67)
  br label %69

69:                                               ; preds = %55, %39
  %70 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %71 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @VXGE_HW_VPATH_INTR_TX, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %77 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @VXGE_HW_VPATH_INTR_RX, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %75, %81
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %69
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %88 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = call i32 @__vxge_hw_pio_mem_write32_upper(i64 %86, i32* %90)
  %92 = load i64, i64* %5, align 8
  %93 = xor i64 %92, -1
  %94 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %95 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = call i32 @__vxge_hw_pio_mem_write32_upper(i64 %93, i32* %97)
  br label %99

99:                                               ; preds = %85, %69
  br label %100

100:                                              ; preds = %99, %32
  %101 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %102 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @readq(i32* %104)
  store i32 %105, i32* %4, align 4
  %106 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %107 = call i32 @vxge_hw_device_unmask_all(%struct.__vxge_hw_device* %106)
  ret void
}

declare dso_local i32 @vxge_hw_device_mask_all(%struct.__vxge_hw_device*) #1

declare dso_local i32 @vxge_mBIT(i64) #1

declare dso_local i32 @vxge_hw_vpath_intr_enable(i32) #1

declare dso_local i32 @VXGE_HW_VIRTUAL_PATH_HANDLE(i32*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @__vxge_hw_pio_mem_write32_upper(i64, i32*) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @vxge_hw_device_unmask_all(%struct.__vxge_hw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
