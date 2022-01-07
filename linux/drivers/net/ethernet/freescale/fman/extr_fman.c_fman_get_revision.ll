; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fman_get_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fman_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fman_rev_info = type { i32, i64 }

@FPM_REV1_MAJOR_MASK = common dso_local global i32 0, align 4
@FPM_REV1_MAJOR_SHIFT = common dso_local global i32 0, align 4
@FPM_REV1_MINOR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_get_revision(%struct.fman* %0, %struct.fman_rev_info* %1) #0 {
  %3 = alloca %struct.fman*, align 8
  %4 = alloca %struct.fman_rev_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fman* %0, %struct.fman** %3, align 8
  store %struct.fman_rev_info* %1, %struct.fman_rev_info** %4, align 8
  %6 = load %struct.fman*, %struct.fman** %3, align 8
  %7 = getelementptr inbounds %struct.fman, %struct.fman* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @ioread32be(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FPM_REV1_MAJOR_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @FPM_REV1_MAJOR_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.fman_rev_info*, %struct.fman_rev_info** %4, align 8
  %18 = getelementptr inbounds %struct.fman_rev_info, %struct.fman_rev_info* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FPM_REV1_MINOR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.fman_rev_info*, %struct.fman_rev_info** %4, align 8
  %23 = getelementptr inbounds %struct.fman_rev_info, %struct.fman_rev_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
