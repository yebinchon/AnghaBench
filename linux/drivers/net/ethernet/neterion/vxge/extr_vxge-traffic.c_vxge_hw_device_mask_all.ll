; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_mask_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_mask_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VXGE_HW_TITAN_MASK_ALL_INT_ALARM = common dso_local global i32 0, align 4
@VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_device_mask_all(%struct.__vxge_hw_device* %0) #0 {
  %2 = alloca %struct.__vxge_hw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %2, align 8
  %4 = load i32, i32* @VXGE_HW_TITAN_MASK_ALL_INT_ALARM, align 4
  %5 = load i32, i32* @VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @vxge_bVALn(i32 %7, i32 0, i32 32)
  %9 = trunc i64 %8 to i32
  %10 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %2, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @__vxge_hw_pio_mem_write32_upper(i32 %9, i32* %13)
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
