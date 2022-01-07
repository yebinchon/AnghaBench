; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_x100.c_mic_x100_send_sbox_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_x100.c_mic_x100_send_sbox_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_mw = type { i32 }

@MIC_X100_SBOX_APICICR0 = common dso_local global i64 0, align 8
@MIC_X100_SBOX_BASE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_mw*, i32)* @mic_x100_send_sbox_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_x100_send_sbox_intr(%struct.mic_mw* %0, i32 %1) #0 {
  %3 = alloca %struct.mic_mw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mic_mw* %0, %struct.mic_mw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @MIC_X100_SBOX_APICICR0, align 8
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 8
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.mic_mw*, %struct.mic_mw** %3, align 8
  %13 = load i64, i64* @MIC_X100_SBOX_BASE_ADDRESS, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @mic_mmio_read(%struct.mic_mw* %12, i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 8192
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @wmb()
  %20 = load %struct.mic_mw*, %struct.mic_mw** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* @MIC_X100_SBOX_BASE_ADDRESS, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mic_mmio_write(%struct.mic_mw* %20, i32 %21, i64 %24)
  ret void
}

declare dso_local i32 @mic_mmio_read(%struct.mic_mw*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mic_mmio_write(%struct.mic_mw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
