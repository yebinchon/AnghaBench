; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_destroy_maps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_destroy_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_nor_mtd = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EXP_TIMING_CS0 = common dso_local global i64 0, align 8
@TIMING_WR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_nor_mtd*)* @vr_nor_destroy_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_nor_destroy_maps(%struct.vr_nor_mtd* %0) #0 {
  %2 = alloca %struct.vr_nor_mtd*, align 8
  %3 = alloca i32, align 4
  store %struct.vr_nor_mtd* %0, %struct.vr_nor_mtd** %2, align 8
  %4 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %2, align 8
  %5 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EXP_TIMING_CS0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @TIMING_WR_EN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %2, align 8
  %16 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EXP_TIMING_CS0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %2, align 8
  %22 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @iounmap(i64 %24)
  %26 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %2, align 8
  %27 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @iounmap(i64 %28)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
