; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_ow_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_ow_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.pcm_int_data* }
%struct.pcm_int_data = type { i64, i32 }

@LPDDR2_MODE_REG_CFG = common dso_local global i64 0, align 8
@LPDDR2_MODE_REG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*)* @ow_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ow_enable(%struct.map_info* %0) #0 {
  %2 = alloca %struct.map_info*, align 8
  %3 = alloca %struct.pcm_int_data*, align 8
  store %struct.map_info* %0, %struct.map_info** %2, align 8
  %4 = load %struct.map_info*, %struct.map_info** %2, align 8
  %5 = getelementptr inbounds %struct.map_info, %struct.map_info* %4, i32 0, i32 0
  %6 = load %struct.pcm_int_data*, %struct.pcm_int_data** %5, align 8
  store %struct.pcm_int_data* %6, %struct.pcm_int_data** %3, align 8
  %7 = load %struct.pcm_int_data*, %struct.pcm_int_data** %3, align 8
  %8 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @build_mr_cfgmask(i32 %9)
  %11 = or i32 %10, 24
  %12 = load %struct.pcm_int_data*, %struct.pcm_int_data** %3, align 8
  %13 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LPDDR2_MODE_REG_CFG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel_relaxed(i32 %11, i64 %16)
  %18 = load %struct.pcm_int_data*, %struct.pcm_int_data** %3, align 8
  %19 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPDDR2_MODE_REG_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 1, i64 %22)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @build_mr_cfgmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
