; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_find_rxpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_find_rxpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }
%struct.rx_ring_info = type { %struct.page** }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.rx_ring_info*, i32, %struct.page***)* @niu_find_rxpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @niu_find_rxpage(%struct.rx_ring_info* %0, i32 %1, %struct.page*** %2) #0 {
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page***, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page**, align 8
  store %struct.rx_ring_info* %0, %struct.rx_ring_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page*** %2, %struct.page**** %6, align 8
  %10 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @niu_hash_rxaddr(%struct.rx_ring_info* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @PAGE_MASK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %17 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %16, i32 0, i32 0
  %18 = load %struct.page**, %struct.page*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 %20
  store %struct.page** %21, %struct.page*** %9, align 8
  br label %22

22:                                               ; preds = %36, %3
  %23 = load %struct.page**, %struct.page*** %9, align 8
  %24 = load %struct.page*, %struct.page** %23, align 8
  store %struct.page* %24, %struct.page** %8, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.page**, %struct.page*** %9, align 8
  %34 = load %struct.page***, %struct.page**** %6, align 8
  store %struct.page** %33, %struct.page*** %34, align 8
  br label %42

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.page**
  store %struct.page** %39, %struct.page*** %9, align 8
  br label %22

40:                                               ; preds = %22
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %32
  %43 = load %struct.page*, %struct.page** %8, align 8
  ret %struct.page* %43
}

declare dso_local i32 @niu_hash_rxaddr(%struct.rx_ring_info*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
