; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_urb_data_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_urb_data_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i64, i64 }
%struct.urb = type { i64, i32, i32, i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@EPROTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, %struct.urb*)* @em28xx_urb_data_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_urb_data_copy(%struct.em28xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %11 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %12 = icmp ne %struct.em28xx* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

14:                                               ; preds = %2
  %15 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %147

20:                                               ; preds = %14
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @print_err_status(%struct.em28xx* %26, i32 -1, i64 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @usb_pipebulk(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %38
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %143, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %146

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  br label %123

58:                                               ; preds = %48
  %59 = load %struct.urb*, %struct.urb** %5, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %58
  %69 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.urb*, %struct.urb** %5, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @print_err_status(%struct.em28xx* %69, i32 %70, i64 %78)
  %80 = load %struct.urb*, %struct.urb** %5, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EPROTO, align 8
  %89 = sub nsw i64 0, %88
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  br label %143

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %58
  %94 = load %struct.urb*, %struct.urb** %5, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %104 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ugt i32 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %143

109:                                              ; preds = %93
  %110 = load %struct.urb*, %struct.urb** %5, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.urb*, %struct.urb** %5, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %112, i64 %121
  store i8* %122, i8** %9, align 8
  br label %123

123:                                              ; preds = %109, %51
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %143

127:                                              ; preds = %123
  %128 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %129 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @process_frame_data_em25xx(%struct.em28xx* %133, i8* %134, i32 %135)
  br label %142

137:                                              ; preds = %127
  %138 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @process_frame_data_em28xx(%struct.em28xx* %138, i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %132
  br label %143

143:                                              ; preds = %142, %126, %107, %91
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %44

146:                                              ; preds = %44
  store i32 1, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %19, %13
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @print_err_status(%struct.em28xx*, i32, i64) #1

declare dso_local i32 @usb_pipebulk(i32) #1

declare dso_local i32 @em28xx_isocdbg(i8*) #1

declare dso_local i32 @process_frame_data_em25xx(%struct.em28xx*, i8*, i32) #1

declare dso_local i32 @process_frame_data_em28xx(%struct.em28xx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
