; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_cfg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_cfg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { i64 }

@CFG_RESP_TIMEOUT_MASK = common dso_local global i32 0, align 4
@SD_EMMC_CFG_RESP_TIMEOUT = common dso_local global i32 0, align 4
@CFG_RC_CC_MASK = common dso_local global i32 0, align 4
@SD_EMMC_CFG_CMD_GAP = common dso_local global i32 0, align 4
@CFG_BLK_LEN_MASK = common dso_local global i32 0, align 4
@SD_EMMC_CFG_BLK_SIZE = common dso_local global i32 0, align 4
@CFG_ERR_ABORT = common dso_local global i32 0, align 4
@SD_EMMC_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_host*)* @meson_mmc_cfg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_cfg_init(%struct.meson_host* %0) #0 {
  %2 = alloca %struct.meson_host*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_host* %0, %struct.meson_host** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @CFG_RESP_TIMEOUT_MASK, align 4
  %5 = load i32, i32* @SD_EMMC_CFG_RESP_TIMEOUT, align 4
  %6 = call i32 @ilog2(i32 %5)
  %7 = call i32 @FIELD_PREP(i32 %4, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CFG_RC_CC_MASK, align 4
  %11 = load i32, i32* @SD_EMMC_CFG_CMD_GAP, align 4
  %12 = call i32 @ilog2(i32 %11)
  %13 = call i32 @FIELD_PREP(i32 %10, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CFG_BLK_LEN_MASK, align 4
  %17 = load i32, i32* @SD_EMMC_CFG_BLK_SIZE, align 4
  %18 = call i32 @ilog2(i32 %17)
  %19 = call i32 @FIELD_PREP(i32 %16, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @CFG_ERR_ABORT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %27 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SD_EMMC_CFG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
