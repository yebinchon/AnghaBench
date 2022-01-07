; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_mpi_read_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_mpi_read_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hw_atl_utils_mbox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@REVISION_A0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_atl_utils_mpi_read_stats(%struct.aq_hw_s* %0, %struct.hw_atl_utils_mbox* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.hw_atl_utils_mbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.hw_atl_utils_mbox* %1, %struct.hw_atl_utils_mbox** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %9 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %12 = bitcast %struct.hw_atl_utils_mbox* %11 to i8*
  %13 = bitcast i8* %12 to i32*
  %14 = call i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s* %7, i32 %10, i32* %13, i32 5)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  %19 = load i32, i32* @REVISION_A0, align 4
  %20 = call i64 @IS_CHIP_FEATURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %24 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %29 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 1514, %33 ]
  store i32 %35, i32* %6, align 4
  %36 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %37 = getelementptr inbounds %struct.hw_atl_utils_mbox, %struct.hw_atl_utils_mbox* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %39, %40
  %42 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %43 = getelementptr inbounds %struct.hw_atl_utils_mbox, %struct.hw_atl_utils_mbox* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %46 = getelementptr inbounds %struct.hw_atl_utils_mbox, %struct.hw_atl_utils_mbox* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul i32 %48, %49
  %51 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %52 = getelementptr inbounds %struct.hw_atl_utils_mbox, %struct.hw_atl_utils_mbox* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %55 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %54, i32 0, i32 0
  %56 = call i32 @atomic_read(i32* %55)
  %57 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %58 = getelementptr inbounds %struct.hw_atl_utils_mbox, %struct.hw_atl_utils_mbox* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  br label %66

60:                                               ; preds = %18
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %62 = call i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(%struct.aq_hw_s* %61)
  %63 = load %struct.hw_atl_utils_mbox*, %struct.hw_atl_utils_mbox** %4, align 8
  %64 = getelementptr inbounds %struct.hw_atl_utils_mbox, %struct.hw_atl_utils_mbox* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %34
  br label %67

67:                                               ; preds = %66, %17
  ret void
}

declare dso_local i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s*, i32, i32*, i32) #1

declare dso_local i64 @IS_CHIP_FEATURE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
