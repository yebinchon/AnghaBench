; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_rxframe_search_exist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_rxframe_search_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { %struct.fjes_hw }
%struct.fjes_hw = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EP_PARTNER_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fjes_adapter*, i32)* @fjes_rxframe_search_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_rxframe_search_exist(%struct.fjes_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fjes_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fjes_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fjes_adapter* %0, %struct.fjes_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %11, i32 0, i32 0
  store %struct.fjes_hw* %12, %struct.fjes_hw** %6, align 8
  %13 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %14 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %59, %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %34 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %59

38:                                               ; preds = %26
  %39 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EP_PARTNER_SHARED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %47 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @fjes_hw_epbuf_rx_is_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %22

62:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw*, i32) #1

declare dso_local i32 @fjes_hw_epbuf_rx_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
