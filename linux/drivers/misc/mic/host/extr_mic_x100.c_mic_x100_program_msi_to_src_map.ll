; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_x100.c_mic_x100_program_msi_to_src_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_x100.c_mic_x100_program_msi_to_src_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.mic_mw }
%struct.mic_mw = type { i32 }

@MIC_X100_SBOX_BASE_ADDRESS = common dso_local global i64 0, align 8
@MIC_X100_SBOX_MXAR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_device*, i32, i32, i32)* @mic_x100_program_msi_to_src_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_x100_program_msi_to_src_map(%struct.mic_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mic_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mic_mw*, align 8
  %11 = alloca i64, align 8
  store %struct.mic_device* %0, %struct.mic_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %13 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %12, i32 0, i32 0
  store %struct.mic_mw* %13, %struct.mic_mw** %10, align 8
  %14 = load i64, i64* @MIC_X100_SBOX_BASE_ADDRESS, align 8
  %15 = load i64, i64* @MIC_X100_SBOX_MXAR0, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %11, align 8
  %21 = load %struct.mic_mw*, %struct.mic_mw** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @mic_mmio_read(%struct.mic_mw* %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__set_bit(i32 %27, i64* %9)
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @__clear_bit(i32 %30, i64* %9)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.mic_mw*, %struct.mic_mw** %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @mic_mmio_write(%struct.mic_mw* %33, i64 %34, i64 %35)
  ret void
}

declare dso_local i64 @mic_mmio_read(%struct.mic_mw*, i64) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @mic_mmio_write(%struct.mic_mw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
