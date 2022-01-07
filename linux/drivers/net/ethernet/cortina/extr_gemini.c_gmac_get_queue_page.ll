; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_queue_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_queue_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmac_queue_page = type { i32 }
%struct.gemini_ethernet = type { i32, %struct.gmac_queue_page*, i32 }
%struct.gemini_ethernet_port = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"try to get page with no page list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gmac_queue_page* (%struct.gemini_ethernet*, %struct.gemini_ethernet_port*, i32)* @gmac_get_queue_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gmac_queue_page* @gmac_get_queue_page(%struct.gemini_ethernet* %0, %struct.gemini_ethernet_port* %1, i32 %2) #0 {
  %4 = alloca %struct.gmac_queue_page*, align 8
  %5 = alloca %struct.gemini_ethernet*, align 8
  %6 = alloca %struct.gemini_ethernet_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gmac_queue_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gemini_ethernet* %0, %struct.gemini_ethernet** %5, align 8
  store %struct.gemini_ethernet_port* %1, %struct.gemini_ethernet_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PAGE_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %15 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %14, i32 0, i32 1
  %16 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %15, align 8
  %17 = icmp ne %struct.gmac_queue_page* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %20 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.gmac_queue_page* null, %struct.gmac_queue_page** %4, align 8
  br label %49

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %27 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %32 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %31, i32 0, i32 1
  %33 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %33, i64 %35
  store %struct.gmac_queue_page* %36, %struct.gmac_queue_page** %8, align 8
  %37 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %8, align 8
  %38 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %8, align 8
  store %struct.gmac_queue_page* %43, %struct.gmac_queue_page** %4, align 8
  br label %49

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %24

48:                                               ; preds = %24
  store %struct.gmac_queue_page* null, %struct.gmac_queue_page** %4, align 8
  br label %49

49:                                               ; preds = %48, %42, %18
  %50 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %4, align 8
  ret %struct.gmac_queue_page* %50
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
