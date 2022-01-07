; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_verify_window_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_verify_window_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_fh = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv_fh*, %struct.v4l2_window*, i32, i32)* @verify_window_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_window_lock(%struct.bttv_fh* %0, %struct.v4l2_window* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bttv_fh*, align 8
  %7 = alloca %struct.v4l2_window*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bttv_fh* %0, %struct.bttv_fh** %6, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 48
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 48, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i32 32, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 2048
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %39, i32 0, i32 0
  store i32 2048, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %51 [
    i32 128, label %50
    i32 130, label %50
    i32 129, label %50
  ]

50:                                               ; preds = %41, %41, %41
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @V4L2_FIELD_ANY, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %59 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %64 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 129, i32 128
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %57, %53
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %89 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp eq %struct.TYPE_9__* null, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %148

95:                                               ; preds = %84
  store i32 -1, i32* %11, align 4
  %96 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %97 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %104 [
    i32 8, label %101
    i32 24, label %101
    i32 16, label %102
    i32 32, label %103
  ]

101:                                              ; preds = %95, %95
  store i32 -4, i32* %11, align 4
  br label %106

102:                                              ; preds = %95
  store i32 -2, i32* %11, align 4
  br label %106

103:                                              ; preds = %95
  br label %106

104:                                              ; preds = %95
  %105 = call i32 (...) @BUG()
  br label %106

106:                                              ; preds = %104, %103, %102, %101
  %107 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub i32 %117, %113
  store i32 %118, i32* %116, align 8
  %119 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sub i32 %122, %123
  %125 = sub i32 %124, 1
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %125, %126
  %128 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %132 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %131, i32* %134, i32* %137, i32 %138, i32 %139, i32 0, i32 %140, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 0, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %106
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %5, align 4
  br label %148

147:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %145, %92
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
