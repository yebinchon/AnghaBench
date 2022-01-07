; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_vid_adjust_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_vid_adjust_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32 }

@V4L2_SEL_FLAG_LE = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_GE = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_adjust_sel(i32 %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %8 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 65535
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 65535
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 2, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 2, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @V4L2_SEL_FLAG_GE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MAX_WIDTH, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @MAX_WIDTH, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAX_HEIGHT, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @MAX_HEIGHT, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, -2
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -2
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %53
  %64 = load i32, i32* @ERANGE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %161

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MAX_WIDTH, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAX_HEIGHT, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %66
  %75 = load i32, i32* @ERANGE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %161

77:                                               ; preds = %70
  %78 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 65534
  store i32 %97, i32* %95, align 4
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 65534
  store i32 %101, i32* %99, align 4
  %102 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %104, %105
  %107 = load i32, i32* @MAX_WIDTH, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %93
  %110 = load i32, i32* @MAX_WIDTH, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub i32 %110, %111
  %113 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %93
  %116 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %118, %119
  %121 = load i32, i32* @MAX_HEIGHT, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* @MAX_HEIGHT, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sub i32 %124, %125
  %127 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %115
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @V4L2_SEL_FLAG_GE, align 4
  %132 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = load i32, i32* @V4L2_SEL_FLAG_GE, align 4
  %136 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %137 = or i32 %135, %136
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %129
  %140 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145, %139
  %152 = load i32, i32* @ERANGE, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %161

154:                                              ; preds = %145, %129
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %157 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %160 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %154, %151, %74, %63
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
