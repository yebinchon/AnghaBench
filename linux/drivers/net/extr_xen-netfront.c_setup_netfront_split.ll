; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_setup_netfront_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_setup_netfront_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i8*, i32, i32, i64, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s-tx\00", align 1
@xennet_tx_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-rx\00", align 1
@xennet_rx_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*)* @setup_netfront_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_netfront_split(%struct.netfront_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netfront_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.netfront_queue* %0, %struct.netfront_queue** %3, align 8
  %5 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %6 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %11 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %10, i32 0, i32 3
  %12 = call i32 @xenbus_alloc_evtchn(i32 %9, i64* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %18 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %23 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %22, i32 0, i32 5
  %24 = call i32 @xenbus_alloc_evtchn(i32 %21, i64* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %95

28:                                               ; preds = %16
  %29 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %30 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %33 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %37 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @xennet_tx_interrupt, align 4
  %40 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %41 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %44 = call i32 @bind_evtchn_to_irqhandler(i64 %38, i32 %39, i32 0, i32 %42, %struct.netfront_queue* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %83

48:                                               ; preds = %28
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %51 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %53 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %56 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i32 %54, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %60 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @xennet_rx_interrupt, align 4
  %63 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %64 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %67 = call i32 @bind_evtchn_to_irqhandler(i64 %61, i32 %62, i32 0, i32 %65, %struct.netfront_queue* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %48
  br label %75

71:                                               ; preds = %48
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %74 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %2, align 4
  br label %109

75:                                               ; preds = %70
  %76 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %77 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %80 = call i32 @unbind_from_irqhandler(i32 %78, %struct.netfront_queue* %79)
  %81 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %82 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %47
  %84 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %85 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %90 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @xenbus_free_evtchn(i32 %88, i64 %91)
  %93 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %94 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %83, %27
  %96 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %97 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %102 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @xenbus_free_evtchn(i32 %100, i64 %103)
  %105 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %106 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %15
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %71
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @xenbus_alloc_evtchn(i32, i64*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i64, i32, i32, i32, %struct.netfront_queue*) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.netfront_queue*) #1

declare dso_local i32 @xenbus_free_evtchn(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
