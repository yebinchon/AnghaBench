; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_get_timeout_msecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_get_timeout_msecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i32 }

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@SD_EMMC_CMD_TIMEOUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_data*)* @meson_mmc_get_timeout_msecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mmc_get_timeout_msecs(%struct.mmc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_data* %0, %struct.mmc_data** %3, align 8
  %5 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NSEC_PER_MSEC, align 4
  %9 = udiv i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @SD_EMMC_CMD_TIMEOUT_DATA, align 4
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @roundup_pow_of_two(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @min(i32 %17, i32 32768)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
