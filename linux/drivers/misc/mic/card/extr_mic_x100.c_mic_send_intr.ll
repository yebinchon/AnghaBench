; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_x100.c_mic_send_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_x100.c_mic_send_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.mic_mw }
%struct.mic_mw = type { i32 }

@MIC_X100_MAX_DOORBELL_IDX = common dso_local global i32 0, align 4
@MIC_X100_SBOX_SDBIC0_DBREQ_BIT = common dso_local global i32 0, align 4
@MIC_X100_SBOX_BASE_ADDRESS = common dso_local global i64 0, align 8
@MIC_X100_SBOX_SDBIC0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic_send_intr(%struct.mic_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mic_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mic_mw*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %7 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %6, i32 0, i32 0
  store %struct.mic_mw* %7, %struct.mic_mw** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MIC_X100_MAX_DOORBELL_IDX, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %24

12:                                               ; preds = %2
  %13 = call i32 (...) @wmb()
  %14 = load %struct.mic_mw*, %struct.mic_mw** %5, align 8
  %15 = load i32, i32* @MIC_X100_SBOX_SDBIC0_DBREQ_BIT, align 4
  %16 = load i64, i64* @MIC_X100_SBOX_BASE_ADDRESS, align 8
  %17 = load i64, i64* @MIC_X100_SBOX_SDBIC0, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 4, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = add nsw i64 %16, %21
  %23 = call i32 @mic_mmio_write(%struct.mic_mw* %14, i32 %15, i64 %22)
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mic_mmio_write(%struct.mic_mw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
