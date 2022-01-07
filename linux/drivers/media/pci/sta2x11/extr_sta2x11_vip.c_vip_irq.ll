; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vip_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vip_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta2x11_vip = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@DVP_ITS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DVP_IT_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"VIP: fifo overflow\0A\00", align 1
@DVP_IT_VST = common dso_local global i32 0, align 4
@DVP_IT_VSB = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DVP_CTL = common dso_local global i32 0, align 4
@DVP_CTL_ENA = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sta2x11_vip*)* @vip_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vip_irq(i32 %0, %struct.sta2x11_vip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sta2x11_vip*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sta2x11_vip* %1, %struct.sta2x11_vip** %5, align 8
  %7 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %8 = load i32, i32* @DVP_ITS, align 4
  %9 = call i32 @reg_read(%struct.sta2x11_vip* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %106

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DVP_IT_FIFO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %21 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = icmp sgt i32 %22, 5
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DVP_IT_VST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DVP_IT_VSB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %106

40:                                               ; preds = %33, %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DVP_IT_VST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %47 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %106

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DVP_IT_VSB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %61 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %106

65:                                               ; preds = %54
  %66 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %67 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %72 = load i32, i32* @DVP_CTL, align 4
  %73 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %74 = load i32, i32* @DVP_CTL, align 4
  %75 = call i32 @reg_read(%struct.sta2x11_vip* %73, i32 %74)
  %76 = load i32, i32* @DVP_CTL_ENA, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @reg_write(%struct.sta2x11_vip* %71, i32 %72, i32 %78)
  %80 = call i32 (...) @ktime_get_ns()
  %81 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %82 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 8
  %87 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %88 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = sext i32 %89 to i64
  %92 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %93 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %91, i64* %96, align 8
  %97 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %98 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %103 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %101, i32 %102)
  br label %104

104:                                              ; preds = %70, %65
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %59, %51, %38, %12
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @reg_read(%struct.sta2x11_vip*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @reg_write(%struct.sta2x11_vip*, i32, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
