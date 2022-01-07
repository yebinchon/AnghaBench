; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.h_aq_ring_avail_dx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.h_aq_ring_avail_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_ring_s*)* @aq_ring_avail_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ring_avail_dx(%struct.aq_ring_s* %0) #0 {
  %2 = alloca %struct.aq_ring_s*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %2, align 8
  %3 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %4 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %7 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %12 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %17 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %21 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %26 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %29 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = sub nsw i64 %31, 1
  br label %33

33:                                               ; preds = %24, %10
  %34 = phi i64 [ %23, %10 ], [ %32, %24 ]
  %35 = trunc i64 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
