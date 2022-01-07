; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_bulk_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_bulk_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.urb = type { i8*, i32, i32, %struct.cx231xx_dmaqueue* }
%struct.cx231xx_dmaqueue = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_bulk_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_bulk_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_dmaqueue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 3
  %14 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %13, align 8
  store %struct.cx231xx_dmaqueue* %14, %struct.cx231xx_dmaqueue** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %16 = icmp ne %struct.cx231xx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

18:                                               ; preds = %2
  %19 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DEV_DISCONNECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %135

26:                                               ; preds = %18
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @print_err_status(%struct.cx231xx* %32, i32 -1, i32 %35)
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %135

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %52 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %53 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %58 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  br label %66

60:                                               ; preds = %45
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %63 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cx231xx_find_boundary_SAV_EAV(i8* %61, i32 %64, i32* %8)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 240
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %73 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %72, %struct.cx231xx_dmaqueue* %73, i32 %74, i8* %78, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %71, %66
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @cx231xx_find_next_SAV_EAV(i8* %94, i32 %97, i32* %11)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 240
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %90
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %112 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %111, %struct.cx231xx_dmaqueue* %112, i32 %113, i8* %117, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %110, %106, %90
  br label %86

125:                                              ; preds = %86
  %126 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %127 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = getelementptr inbounds i8, i8* %132, i64 -4
  %134 = call i32 @memcpy(i32 %128, i8* %133, i32 4)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %125, %43, %25, %17
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_find_boundary_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @cx231xx_get_video_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32, i8*, i32) #1

declare dso_local i32 @cx231xx_find_next_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
