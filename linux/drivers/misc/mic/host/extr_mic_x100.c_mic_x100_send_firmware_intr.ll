; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_x100.c_mic_x100_send_firmware_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_x100.c_mic_x100_send_firmware_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.mic_mw }
%struct.mic_mw = type { i32 }

@MIC_X100_SBOX_APICICR7 = common dso_local global i64 0, align 8
@MIC_X100_BSP_INTERRUPT_VECTOR = common dso_local global i32 0, align 4
@MIC_X100_SBOX_BASE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_device*)* @mic_x100_send_firmware_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_x100_send_firmware_intr(%struct.mic_device* %0) #0 {
  %2 = alloca %struct.mic_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mic_mw*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %2, align 8
  %7 = load i64, i64* @MIC_X100_SBOX_APICICR7, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* @MIC_X100_BSP_INTERRUPT_VECTOR, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %10 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %9, i32 0, i32 0
  store %struct.mic_mw* %10, %struct.mic_mw** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, 8192
  store i32 %12, i32* %3, align 4
  %13 = load %struct.mic_mw*, %struct.mic_mw** %6, align 8
  %14 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %15 = call i32 @mic_x100_get_apic_id(%struct.mic_device* %14)
  %16 = load i64, i64* @MIC_X100_SBOX_BASE_ADDRESS, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %16, %17
  %19 = add nsw i64 %18, 4
  %20 = call i32 @mic_mmio_write(%struct.mic_mw* %13, i32 %15, i64 %19)
  %21 = call i32 (...) @wmb()
  %22 = load %struct.mic_mw*, %struct.mic_mw** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* @MIC_X100_SBOX_BASE_ADDRESS, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @mic_mmio_write(%struct.mic_mw* %22, i32 %23, i64 %26)
  ret void
}

declare dso_local i32 @mic_mmio_write(%struct.mic_mw*, i32, i64) #1

declare dso_local i32 @mic_x100_get_apic_id(%struct.mic_device*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
