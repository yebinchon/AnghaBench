; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_apply_rel_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_apply_rel_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.request = type { i32 }

@EXT_CSD_WR_REL_PARAM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_blk_request*, %struct.mmc_card*, %struct.request*)* @mmc_apply_rel_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_apply_rel_rw(%struct.mmc_blk_request* %0, %struct.mmc_card* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.mmc_blk_request*, align 8
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.mmc_blk_request* %0, %struct.mmc_blk_request** %4, align 8
  store %struct.mmc_card* %1, %struct.mmc_card** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EXT_CSD_WR_REL_PARAM_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %3
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = call i32 @blk_rq_pos(%struct.request* %15)
  %17 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_ALIGNED(i32 %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %14
  %28 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %60

45:                                               ; preds = %27
  %46 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
