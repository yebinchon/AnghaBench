; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_unmask_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_unmask_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@VXGE_HW_INTR_MODE_IRQLINE = common dso_local global i64 0, align 8
@VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_device_unmask_all(%struct.__vxge_hw_device* %0) #0 {
  %2 = alloca %struct.__vxge_hw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %5 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VXGE_HW_INTR_MODE_IRQLINE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @vxge_bVALn(i32 %13, i32 0, i32 32)
  %15 = trunc i64 %14 to i32
  %16 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %17 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @__vxge_hw_pio_mem_write32_upper(i32 %15, i32* %19)
  ret void
}

declare dso_local i32 @__vxge_hw_pio_mem_write32_upper(i32, i32*) #1

declare dso_local i64 @vxge_bVALn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
