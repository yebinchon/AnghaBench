; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_wait_desc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_wait_desc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { i64 }

@SD_EMMC_STATUS = common dso_local global i64 0, align 8
@STATUS_BUSY = common dso_local global i32 0, align 4
@STATUS_DESC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_host*)* @meson_mmc_wait_desc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mmc_wait_desc_stop(%struct.meson_host* %0) #0 {
  %2 = alloca %struct.meson_host*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_host* %0, %struct.meson_host** %2, align 8
  %4 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %5 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SD_EMMC_STATUS, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @STATUS_BUSY, align 4
  %12 = load i32, i32* @STATUS_DESC_BUSY, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @readl_poll_timeout(i64 %8, i32 %9, i32 %17, i32 100, i32 5000)
  ret i32 %18
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
