; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_frames_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_frames_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@frame_state_unused = common dso_local global i32 0, align 4
@DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"allocated %d frames (%d bytes per frame)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_frames_alloc(%struct.usb_usbvision* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %7 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %10 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %14 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %12, %16
  %18 = call i32 @PAGE_ALIGN(i32 %17)
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %23 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %50, %2
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %26 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %31 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %34 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %38 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %40 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @usbvision_rvmalloc(i32 %41)
  %43 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %44 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  br label %55

50:                                               ; preds = %29
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %24

55:                                               ; preds = %49, %24
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %127, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %59 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %130

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %65 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %64, i32 0, i32 7
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 8
  %71 = load i32, i32* @frame_state_unused, align 4
  %72 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %73 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %72, i32 0, i32 7
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i32 %71, i32* %78, align 8
  %79 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %80 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %84 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %81, %87
  %89 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %90 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %89, i32 0, i32 7
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  store i64 %88, i64* %95, align 8
  %96 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %97 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %96, i32 0, i32 5
  store i32 1, i32* %97, align 4
  %98 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %99 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %98, i32 0, i32 6
  store i32 1, i32* %99, align 8
  %100 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %101 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %104 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %103, i32 0, i32 7
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %102, i32* %109, align 4
  %110 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %111 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %114 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %113, i32 0, i32 7
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store i32 %112, i32* %119, align 8
  %120 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %121 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %120, i32 0, i32 7
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %62
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %56

130:                                              ; preds = %56
  %131 = load i32, i32* @DBG_FUNC, align 4
  %132 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %133 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %136 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @PDEBUG(i32 %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %140 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  ret i32 %141
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i64 @usbvision_rvmalloc(i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
