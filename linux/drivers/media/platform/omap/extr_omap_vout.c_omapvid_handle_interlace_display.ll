; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omapvid_handle_interlace_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omapvid_handle_interlace_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@DISPC_IRQ_EVSYNC_ODD = common dso_local global i32 0, align 4
@DISPC_IRQ_EVSYNC_EVEN = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_vout_device*, i32, i32)* @omapvid_handle_interlace_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapvid_handle_interlace_display(%struct.omap_vout_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_vout_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %10 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %15 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  br label %110

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DISPC_IRQ_EVSYNC_ODD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DISPC_IRQ_EVSYNC_EVEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %29

28:                                               ; preds = %22
  br label %110

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %32 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %37 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %46 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  br label %106

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 0, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  %52 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %53 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %56 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp eq %struct.TYPE_5__* %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %110

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %63 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 8
  %68 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %69 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = sext i32 %70 to i64
  %73 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %74 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 %72, i64* %77, align 8
  %78 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %79 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %84 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %82, i32 %83)
  %85 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %86 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %89 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %88, i32 0, i32 2
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %89, align 8
  br label %105

90:                                               ; preds = %48
  %91 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %92 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %91, i32 0, i32 3
  %93 = call i64 @list_empty(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %97 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %100 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = icmp ne %struct.TYPE_5__* %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95, %90
  br label %110

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %47
  %107 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %108 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %103, %59, %28, %13
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %106
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
