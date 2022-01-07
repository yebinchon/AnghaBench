; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_alloc_rx_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_alloc_rx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_agg = type { i32, i32, i32, %struct.r8152*, i32, i32 }
%struct.r8152 = type { i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@__GFP_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rx_agg* (%struct.r8152*, i32)* @alloc_rx_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rx_agg* @alloc_rx_agg(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.rx_agg*, align 8
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_agg*, align 8
  %10 = alloca i64, align 8
  store %struct.r8152* %0, %struct.r8152** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.r8152*, %struct.r8152** %4, align 8
  %12 = getelementptr inbounds %struct.r8152, %struct.r8152* %11, i32 0, i32 4
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_to_node(i64 %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %24, %19 ], [ -1, %25 ]
  store i32 %27, i32* %7, align 4
  %28 = load %struct.r8152*, %struct.r8152** %4, align 8
  %29 = getelementptr inbounds %struct.r8152, %struct.r8152* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_order(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.rx_agg* @kmalloc_node(i32 32, i32 %32, i32 %33)
  store %struct.rx_agg* %34, %struct.rx_agg** %9, align 8
  %35 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %36 = icmp ne %struct.rx_agg* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  store %struct.rx_agg* null, %struct.rx_agg** %3, align 8
  br label %103

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @__GFP_COMP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @alloc_pages(i32 %41, i32 %42)
  %44 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %45 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %47 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %100

51:                                               ; preds = %38
  %52 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %53 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @page_address(i32 %54)
  %56 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %57 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @usb_alloc_urb(i32 0, i32 %58)
  %60 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %61 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %63 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  br label %94

67:                                               ; preds = %51
  %68 = load %struct.r8152*, %struct.r8152** %4, align 8
  %69 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %70 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %69, i32 0, i32 3
  store %struct.r8152* %68, %struct.r8152** %70, align 8
  %71 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %72 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %71, i32 0, i32 2
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %75 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %74, i32 0, i32 1
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.r8152*, %struct.r8152** %4, align 8
  %78 = getelementptr inbounds %struct.r8152, %struct.r8152* %77, i32 0, i32 1
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %82 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %81, i32 0, i32 1
  %83 = load %struct.r8152*, %struct.r8152** %4, align 8
  %84 = getelementptr inbounds %struct.r8152, %struct.r8152* %83, i32 0, i32 2
  %85 = call i32 @list_add_tail(i32* %82, i32* %84)
  %86 = load %struct.r8152*, %struct.r8152** %4, align 8
  %87 = getelementptr inbounds %struct.r8152, %struct.r8152* %86, i32 0, i32 1
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.r8152*, %struct.r8152** %4, align 8
  %91 = getelementptr inbounds %struct.r8152, %struct.r8152* %90, i32 0, i32 0
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  store %struct.rx_agg* %93, %struct.rx_agg** %3, align 8
  br label %103

94:                                               ; preds = %66
  %95 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %96 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @__free_pages(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %50
  %101 = load %struct.rx_agg*, %struct.rx_agg** %9, align 8
  %102 = call i32 @kfree(%struct.rx_agg* %101)
  store %struct.rx_agg* null, %struct.rx_agg** %3, align 8
  br label %103

103:                                              ; preds = %100, %67, %37
  %104 = load %struct.rx_agg*, %struct.rx_agg** %3, align 8
  ret %struct.rx_agg* %104
}

declare dso_local i32 @dev_to_node(i64) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.rx_agg* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @alloc_pages(i32, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.rx_agg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
