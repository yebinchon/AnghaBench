; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_allocate_vrfb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_allocate_vrfb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { i32, i64*, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_vout_device*, i32*, i32)* @omap_vout_allocate_vrfb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_vout_allocate_vrfb_buffers(%struct.omap_vout_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_vout_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %124, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %127

15:                                               ; preds = %10
  %16 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %17 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %15
  %25 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %26 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %29 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = call i64 @omap_vout_alloc_buffer(i32 %27, i64* %33)
  %35 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %36 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %34, i64* %40, align 8
  br label %41

41:                                               ; preds = %24, %15
  %42 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %43 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %55 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %127

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %50, %41
  %67 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %68 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %104, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %82 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %89 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @omap_vout_free_buffer(i64 %87, i32 %90)
  %92 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %93 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 0, i64* %97, align 8
  %98 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %99 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %76

107:                                              ; preds = %76
  %108 = load i32*, i32** %6, align 8
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %128

111:                                              ; preds = %66
  %112 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %113 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %121 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memset(i8* %119, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %10

127:                                              ; preds = %64, %10
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %107
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @omap_vout_alloc_buffer(i32, i64*) #1

declare dso_local i32 @omap_vout_free_buffer(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
