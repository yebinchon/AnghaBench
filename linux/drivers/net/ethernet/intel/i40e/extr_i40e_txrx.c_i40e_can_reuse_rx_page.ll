; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_can_reuse_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_can_reuse_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_rx_buffer = type { i32, i64, %struct.page* }
%struct.page = type { i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@I40E_LAST_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_rx_buffer*)* @i40e_can_reuse_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_can_reuse_rx_page(%struct.i40e_rx_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_rx_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.i40e_rx_buffer* %0, %struct.i40e_rx_buffer** %3, align 8
  %6 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %9, i32 0, i32 2
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %5, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i32 @i40e_page_is_reusable(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i32 @page_count(%struct.page* %21)
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %22, %23
  %25 = icmp ugt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %45

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = load i32, i32* @USHRT_MAX, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @page_ref_add(%struct.page* %37, i32 %39)
  %41 = load i32, i32* @USHRT_MAX, align 4
  %42 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %30
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %29, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i40e_page_is_reusable(%struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
