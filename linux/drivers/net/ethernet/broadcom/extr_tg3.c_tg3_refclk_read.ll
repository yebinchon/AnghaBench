; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_refclk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_refclk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }
%struct.ptp_system_timestamp = type { i32 }

@TG3_EAV_REF_CLCK_LSB = common dso_local global i32 0, align 4
@TG3_EAV_REF_CLCK_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.ptp_system_timestamp*)* @tg3_refclk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_refclk_read(%struct.tg3* %0, %struct.ptp_system_timestamp* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.ptp_system_timestamp*, align 8
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store %struct.ptp_system_timestamp* %1, %struct.ptp_system_timestamp** %4, align 8
  %6 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %7 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %6)
  %8 = load i32, i32* @TG3_EAV_REF_CLCK_LSB, align 4
  %9 = call i32 @tr32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %11 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %10)
  %12 = load i32, i32* @TG3_EAV_REF_CLCK_MSB, align 4
  %13 = call i32 @tr32(i32 %12)
  %14 = shl i32 %13, 32
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @ptp_read_system_prets(%struct.ptp_system_timestamp*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @ptp_read_system_postts(%struct.ptp_system_timestamp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
