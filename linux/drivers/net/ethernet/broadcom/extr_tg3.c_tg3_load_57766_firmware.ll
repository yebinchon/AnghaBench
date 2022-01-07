; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_load_57766_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_load_57766_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tg3_firmware_hdr = type { i32 }

@NO_NVRAM = common dso_local global i32 0, align 4
@TG3_57766_FW_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_load_57766_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_load_57766_firmware(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca %struct.tg3_firmware_hdr*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = load i32, i32* @NO_NVRAM, align 4
  %6 = call i32 @tg3_flag(%struct.tg3* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.tg3*, %struct.tg3** %2, align 8
  %11 = call i64 @tg3_validate_rxcpu_state(%struct.tg3* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %46

14:                                               ; preds = %9
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %46

20:                                               ; preds = %14
  %21 = load %struct.tg3*, %struct.tg3** %2, align 8
  %22 = getelementptr inbounds %struct.tg3, %struct.tg3* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.tg3_firmware_hdr*
  store %struct.tg3_firmware_hdr* %26, %struct.tg3_firmware_hdr** %3, align 8
  %27 = load %struct.tg3_firmware_hdr*, %struct.tg3_firmware_hdr** %3, align 8
  %28 = getelementptr inbounds %struct.tg3_firmware_hdr, %struct.tg3_firmware_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = load i64, i64* @TG3_57766_FW_BASE_ADDR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %46

34:                                               ; preds = %20
  %35 = load %struct.tg3*, %struct.tg3** %2, align 8
  %36 = call i64 @tg3_rxcpu_pause(%struct.tg3* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %46

39:                                               ; preds = %34
  %40 = load %struct.tg3*, %struct.tg3** %2, align 8
  %41 = load i64, i64* @TG3_57766_FW_BASE_ADDR, align 8
  %42 = load %struct.tg3_firmware_hdr*, %struct.tg3_firmware_hdr** %3, align 8
  %43 = call i32 @tg3_load_firmware_cpu(%struct.tg3* %40, i32 0, i64 %41, i32 0, %struct.tg3_firmware_hdr* %42)
  %44 = load %struct.tg3*, %struct.tg3** %2, align 8
  %45 = call i32 @tg3_rxcpu_resume(%struct.tg3* %44)
  br label %46

46:                                               ; preds = %39, %38, %33, %19, %13, %8
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_validate_rxcpu_state(%struct.tg3*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @tg3_rxcpu_pause(%struct.tg3*) #1

declare dso_local i32 @tg3_load_firmware_cpu(%struct.tg3*, i32, i64, i32, %struct.tg3_firmware_hdr*) #1

declare dso_local i32 @tg3_rxcpu_resume(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
