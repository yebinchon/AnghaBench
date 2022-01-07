; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_dev = type { i32 }

@fdp1_diff_adj = common dso_local global i32 0, align 4
@FD1_LUT_DIF_ADJ = common dso_local global i32 0, align 4
@fdp1_sad_adj = common dso_local global i32 0, align 4
@FD1_LUT_SAD_ADJ = common dso_local global i32 0, align 4
@fdp1_bld_gain = common dso_local global i32 0, align 4
@FD1_LUT_BLD_GAIN = common dso_local global i32 0, align 4
@fdp1_dif_gain = common dso_local global i32 0, align 4
@FD1_LUT_DIF_GAIN = common dso_local global i32 0, align 4
@fdp1_mdet = common dso_local global i32 0, align 4
@FD1_LUT_MDET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_dev*)* @fdp1_set_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_set_lut(%struct.fdp1_dev* %0) #0 {
  %2 = alloca %struct.fdp1_dev*, align 8
  store %struct.fdp1_dev* %0, %struct.fdp1_dev** %2, align 8
  %3 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %4 = load i32, i32* @fdp1_diff_adj, align 4
  %5 = load i32, i32* @fdp1_diff_adj, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = load i32, i32* @FD1_LUT_DIF_ADJ, align 4
  %8 = call i32 @fdp1_write_lut(%struct.fdp1_dev* %3, i32 %4, i32 %6, i32 %7)
  %9 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %10 = load i32, i32* @fdp1_sad_adj, align 4
  %11 = load i32, i32* @fdp1_sad_adj, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load i32, i32* @FD1_LUT_SAD_ADJ, align 4
  %14 = call i32 @fdp1_write_lut(%struct.fdp1_dev* %9, i32 %10, i32 %12, i32 %13)
  %15 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %16 = load i32, i32* @fdp1_bld_gain, align 4
  %17 = load i32, i32* @fdp1_bld_gain, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load i32, i32* @FD1_LUT_BLD_GAIN, align 4
  %20 = call i32 @fdp1_write_lut(%struct.fdp1_dev* %15, i32 %16, i32 %18, i32 %19)
  %21 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %22 = load i32, i32* @fdp1_dif_gain, align 4
  %23 = load i32, i32* @fdp1_dif_gain, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load i32, i32* @FD1_LUT_DIF_GAIN, align 4
  %26 = call i32 @fdp1_write_lut(%struct.fdp1_dev* %21, i32 %22, i32 %24, i32 %25)
  %27 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %28 = load i32, i32* @fdp1_mdet, align 4
  %29 = load i32, i32* @fdp1_mdet, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load i32, i32* @FD1_LUT_MDET, align 4
  %32 = call i32 @fdp1_write_lut(%struct.fdp1_dev* %27, i32 %28, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @fdp1_write_lut(%struct.fdp1_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
