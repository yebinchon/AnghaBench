; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_can_reuse_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_can_reuse_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_rx_buffer = type { i32, i64, %struct.page* }
%struct.page = type { i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@IGC_LAST_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_rx_buffer*)* @igc_can_reuse_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_can_reuse_rx_page(%struct.igc_rx_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igc_rx_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.igc_rx_buffer* %0, %struct.igc_rx_buffer** %3, align 8
  %6 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %9, i32 0, i32 2
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %5, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i32 @igc_page_is_reserved(%struct.page* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @page_ref_count(%struct.page* %18)
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 %19, %20
  %22 = icmp ugt i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %42

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = load i32, i32* @USHRT_MAX, align 4
  %37 = call i32 @page_ref_add(%struct.page* %35, i32 %36)
  %38 = load i32, i32* @USHRT_MAX, align 4
  %39 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %26, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @igc_page_is_reserved(%struct.page*) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
