; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i64, i32*, i64*, %struct.TYPE_2__*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64*, i64, i64, %struct.go7007_board_info*, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.go7007_board_info = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@STATUS_INIT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@GO7007_RATIO_1_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.go7007* @go7007_alloc(%struct.go7007_board_info* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_board_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca i32, align 4
  store %struct.go7007_board_info* %0, %struct.go7007_board_info** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.go7007* @kzalloc(i32 256, i32 %8)
  store %struct.go7007* %9, %struct.go7007** %6, align 8
  %10 = load %struct.go7007*, %struct.go7007** %6, align 8
  %11 = icmp eq %struct.go7007* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.go7007* null, %struct.go7007** %3, align 8
  br label %124

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.go7007*, %struct.go7007** %6, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 34
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %18 = load %struct.go7007*, %struct.go7007** %6, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 33
  store %struct.go7007_board_info* %17, %struct.go7007_board_info** %19, align 8
  %20 = load %struct.go7007*, %struct.go7007** %6, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 32
  store i64 0, i64* %21, align 8
  %22 = load %struct.go7007*, %struct.go7007** %6, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.go7007*, %struct.go7007** %6, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 31
  store i64 0, i64* %25, align 8
  %26 = load %struct.go7007*, %struct.go7007** %6, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 30
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.go7007*, %struct.go7007** %6, align 8
  %31 = getelementptr inbounds %struct.go7007, %struct.go7007* %30, i32 0, i32 29
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.go7007*, %struct.go7007** %6, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 28
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load %struct.go7007*, %struct.go7007** %6, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 27
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load i32, i32* @STATUS_INIT, align 4
  %40 = load %struct.go7007*, %struct.go7007** %6, align 8
  %41 = getelementptr inbounds %struct.go7007, %struct.go7007* %40, i32 0, i32 26
  store i32 %39, i32* %41, align 4
  %42 = load %struct.go7007*, %struct.go7007** %6, align 8
  %43 = getelementptr inbounds %struct.go7007, %struct.go7007* %42, i32 0, i32 25
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = load %struct.go7007*, %struct.go7007** %6, align 8
  %46 = getelementptr inbounds %struct.go7007, %struct.go7007* %45, i32 0, i32 24
  store i64 0, i64* %46, align 8
  %47 = load %struct.go7007*, %struct.go7007** %6, align 8
  %48 = getelementptr inbounds %struct.go7007, %struct.go7007* %47, i32 0, i32 23
  store i64 0, i64* %48, align 8
  %49 = load %struct.go7007*, %struct.go7007** %6, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 22
  %51 = call i32 @init_waitqueue_head(i32* %50)
  %52 = load %struct.go7007*, %struct.go7007** %6, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 21
  store i64 0, i64* %53, align 8
  %54 = load %struct.go7007*, %struct.go7007** %6, align 8
  %55 = call i32 @go7007_update_board(%struct.go7007* %54)
  %56 = load %struct.go7007*, %struct.go7007** %6, align 8
  %57 = getelementptr inbounds %struct.go7007, %struct.go7007* %56, i32 0, i32 20
  store i64 0, i64* %57, align 8
  %58 = load %struct.go7007*, %struct.go7007** %6, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 19
  store i64 0, i64* %59, align 8
  %60 = load %struct.go7007*, %struct.go7007** %6, align 8
  %61 = getelementptr inbounds %struct.go7007, %struct.go7007* %60, i32 0, i32 18
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %63 = load %struct.go7007*, %struct.go7007** %6, align 8
  %64 = getelementptr inbounds %struct.go7007, %struct.go7007* %63, i32 0, i32 17
  store i32 %62, i32* %64, align 8
  %65 = load %struct.go7007*, %struct.go7007** %6, align 8
  %66 = getelementptr inbounds %struct.go7007, %struct.go7007* %65, i32 0, i32 1
  store i32 1500000, i32* %66, align 4
  %67 = load %struct.go7007*, %struct.go7007** %6, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = load %struct.go7007*, %struct.go7007** %6, align 8
  %70 = getelementptr inbounds %struct.go7007, %struct.go7007* %69, i32 0, i32 16
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @GO7007_RATIO_1_1, align 4
  %72 = load %struct.go7007*, %struct.go7007** %6, align 8
  %73 = getelementptr inbounds %struct.go7007, %struct.go7007* %72, i32 0, i32 15
  store i32 %71, i32* %73, align 8
  %74 = load %struct.go7007*, %struct.go7007** %6, align 8
  %75 = getelementptr inbounds %struct.go7007, %struct.go7007* %74, i32 0, i32 14
  store i64 0, i64* %75, align 8
  %76 = load %struct.go7007*, %struct.go7007** %6, align 8
  %77 = getelementptr inbounds %struct.go7007, %struct.go7007* %76, i32 0, i32 13
  store i64 0, i64* %77, align 8
  %78 = load %struct.go7007*, %struct.go7007** %6, align 8
  %79 = getelementptr inbounds %struct.go7007, %struct.go7007* %78, i32 0, i32 12
  store i64 0, i64* %79, align 8
  %80 = load %struct.go7007*, %struct.go7007** %6, align 8
  %81 = getelementptr inbounds %struct.go7007, %struct.go7007* %80, i32 0, i32 11
  store i64 0, i64* %81, align 8
  %82 = load %struct.go7007*, %struct.go7007** %6, align 8
  %83 = getelementptr inbounds %struct.go7007, %struct.go7007* %82, i32 0, i32 10
  store i64 0, i64* %83, align 8
  %84 = load %struct.go7007*, %struct.go7007** %6, align 8
  %85 = getelementptr inbounds %struct.go7007, %struct.go7007* %84, i32 0, i32 9
  store i64 0, i64* %85, align 8
  %86 = load %struct.go7007*, %struct.go7007** %6, align 8
  %87 = getelementptr inbounds %struct.go7007, %struct.go7007* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  %88 = load %struct.go7007*, %struct.go7007** %6, align 8
  %89 = getelementptr inbounds %struct.go7007, %struct.go7007* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %101, %13
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.go7007*, %struct.go7007** %6, align 8
  %95 = getelementptr inbounds %struct.go7007, %struct.go7007* %94, i32 0, i32 6
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %90

104:                                              ; preds = %90
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 1624
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.go7007*, %struct.go7007** %6, align 8
  %110 = getelementptr inbounds %struct.go7007, %struct.go7007* %109, i32 0, i32 5
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %105

118:                                              ; preds = %105
  %119 = load %struct.go7007*, %struct.go7007** %6, align 8
  %120 = getelementptr inbounds %struct.go7007, %struct.go7007* %119, i32 0, i32 4
  store i32* null, i32** %120, align 8
  %121 = load %struct.go7007*, %struct.go7007** %6, align 8
  %122 = getelementptr inbounds %struct.go7007, %struct.go7007* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.go7007*, %struct.go7007** %6, align 8
  store %struct.go7007* %123, %struct.go7007** %3, align 8
  br label %124

124:                                              ; preds = %118, %12
  %125 = load %struct.go7007*, %struct.go7007** %3, align 8
  ret %struct.go7007* %125
}

declare dso_local %struct.go7007* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @go7007_update_board(%struct.go7007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
