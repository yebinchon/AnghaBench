; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32, i64, i32, i32, %struct.aq_nic_s* }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AQ_CFG_RX_FRAME_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aq_ring_s* @aq_ring_rx_alloc(%struct.aq_ring_s* %0, %struct.aq_nic_s* %1, i32 %2, %struct.aq_nic_cfg_s* %3) #0 {
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aq_nic_cfg_s*, align 8
  %9 = alloca i32, align 4
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %5, align 8
  store %struct.aq_nic_s* %1, %struct.aq_nic_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.aq_nic_cfg_s* %3, %struct.aq_nic_cfg_s** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %11 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %12 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %11, i32 0, i32 4
  store %struct.aq_nic_s* %10, %struct.aq_nic_s** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %15 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %17 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %20 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %22 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @AQ_CFG_RX_FRAME_MAX, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32, i32* @AQ_CFG_RX_FRAME_MAX, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = srem i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = add nsw i32 %30, %36
  %38 = call i64 @fls(i32 %37)
  %39 = sub nsw i64 %38, 1
  %40 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %41 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %43 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %46 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %4
  %50 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %51 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %54 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %4
  %56 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %57 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %58 = call %struct.aq_ring_s* @aq_ring_alloc(%struct.aq_ring_s* %56, %struct.aq_nic_s* %57)
  store %struct.aq_ring_s* %58, %struct.aq_ring_s** %5, align 8
  %59 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %60 = icmp ne %struct.aq_ring_s* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %70 = call i32 @aq_ring_free(%struct.aq_ring_s* %69)
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %5, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  ret %struct.aq_ring_s* %72
}

declare dso_local i64 @fls(i32) #1

declare dso_local %struct.aq_ring_s* @aq_ring_alloc(%struct.aq_ring_s*, %struct.aq_nic_s*) #1

declare dso_local i32 @aq_ring_free(%struct.aq_ring_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
