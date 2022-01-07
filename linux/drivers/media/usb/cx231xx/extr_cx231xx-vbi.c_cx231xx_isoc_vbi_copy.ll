; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_cx231xx_isoc_vbi_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_cx231xx_isoc_vbi_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.urb = type { i8*, i64, i32, %struct.cx231xx_dmaqueue* }
%struct.cx231xx_dmaqueue = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_isoc_vbi_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_isoc_vbi_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_dmaqueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %14, align 8
  store %struct.cx231xx_dmaqueue* %15, %struct.cx231xx_dmaqueue** %6, align 8
  store i32 1, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %17 = icmp ne %struct.cx231xx* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %139

19:                                               ; preds = %2
  %20 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DEV_DISCONNECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %139

27:                                               ; preds = %19
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @print_err_status(%struct.cx231xx* %33, i32 -1, i32 %36)
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %139

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %8, align 8
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %137

55:                                               ; preds = %46
  store i64 0, i64* %9, align 8
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %62 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  br label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %67 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cx231xx_find_boundary_SAV_EAV(i8* %65, i32 %68, i64* %9)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 240
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %77 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %82, %83
  %85 = call i64 @cx231xx_get_vbi_line(%struct.cx231xx* %76, %struct.cx231xx_dmaqueue* %77, i32 %78, i8* %81, i64 %84)
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %75, %70
  %89 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %90 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %127, %88
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  store i64 0, i64* %12, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub nsw i64 %99, %100
  %102 = call i32 @cx231xx_find_next_SAV_EAV(i8* %98, i64 %101, i64* %12)
  store i32 %102, i32* %11, align 4
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 240
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %95
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %116 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %9, align 8
  %123 = sub nsw i64 %121, %122
  %124 = call i64 @cx231xx_get_vbi_line(%struct.cx231xx* %115, %struct.cx231xx_dmaqueue* %116, i32 %117, i8* %120, i64 %123)
  %125 = load i64, i64* %9, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %114, %110, %95
  br label %91

128:                                              ; preds = %91
  %129 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %130 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 -4
  %136 = call i32 @memcpy(i32 %131, i8* %135, i32 4)
  store i64 0, i64* %9, align 8
  br label %137

137:                                              ; preds = %128, %46
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %44, %26, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_find_boundary_SAV_EAV(i8*, i32, i64*) #1

declare dso_local i64 @cx231xx_get_vbi_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32, i8*, i64) #1

declare dso_local i32 @cx231xx_find_next_SAV_EAV(i8*, i64, i64*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
