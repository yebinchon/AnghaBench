; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_get_rxpages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_get_rxpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.aq_ring_buff_s = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@AQ_CFG_RX_FRAME_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_ring_s*, %struct.aq_ring_buff_s*, i32)* @aq_get_rxpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_get_rxpages(%struct.aq_ring_s* %0, %struct.aq_ring_buff_s* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca %struct.aq_ring_buff_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %5, align 8
  store %struct.aq_ring_buff_s* %1, %struct.aq_ring_buff_s** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %10 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %3
  %15 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %16 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @page_ref_count(i64 %18)
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %60

21:                                               ; preds = %14
  %22 = load i32, i32* @AQ_CFG_RX_FRAME_MAX, align 4
  %23 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %24 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %29 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AQ_CFG_RX_FRAME_MAX, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %34, %35
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %21
  %39 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %40 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %59

45:                                               ; preds = %21
  %46 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %47 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %46, i32 0, i32 0
  %48 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %49 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @aq_nic_get_dev(i32 %50)
  %52 = call i32 @aq_free_rxpage(%struct.TYPE_7__* %47, i32 %51)
  %53 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %54 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %45, %38
  br label %70

60:                                               ; preds = %14
  %61 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %62 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %65 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %60, %59
  br label %71

71:                                               ; preds = %70, %3
  %72 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %73 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %6, align 8
  %79 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %82 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @aq_nic_get_dev(i32 %83)
  %85 = call i32 @aq_get_rxpage(%struct.TYPE_7__* %79, i32 %80, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @page_ref_count(i64) #1

declare dso_local i32 @aq_free_rxpage(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @aq_nic_get_dev(i32) #1

declare dso_local i32 @aq_get_rxpage(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
