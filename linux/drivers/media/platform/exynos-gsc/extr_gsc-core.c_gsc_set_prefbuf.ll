; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_set_prefbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_set_prefbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_dev = type { i32 }
%struct.gsc_frame = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"f_addr = 0x%08x, f_len = %d, s_addr = 0x%08x, s_len = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_set_prefbuf(%struct.gsc_dev* %0, %struct.gsc_frame* %1) #0 {
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gsc_dev* %0, %struct.gsc_dev** %3, align 8
  store %struct.gsc_frame* %1, %struct.gsc_frame** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %27 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %34 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %38 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %185

42:                                               ; preds = %2
  %43 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %44 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %184

49:                                               ; preds = %42
  %50 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %51 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %55 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %59 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @min3(i32 %53, i32 %57, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @get_plane_info(%struct.gsc_frame* %63, i32 %64, i32* %10, i32* %9)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %191

68:                                               ; preds = %49
  %69 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %70 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %74 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %78 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @max3(i32 %72, i32 %76, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i64 @get_plane_info(%struct.gsc_frame* %82, i32 %83, i32* %14, i32* %13)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %191

87:                                               ; preds = %68
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 3, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %96 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  br label %118

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %104 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  br label %117

107:                                              ; preds = %99
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %112 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %11, align 4
  br label %116

115:                                              ; preds = %107
  br label %191

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %102
  br label %118

118:                                              ; preds = %117, %94
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %122 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %120, %127
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %133 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %131, %138
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  %142 = icmp sgt i32 %130, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %118
  %144 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %145 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %154 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %152, %159
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* %8, align 4
  br label %183

163:                                              ; preds = %118
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %166 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %164, %171
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %7, align 4
  %176 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %177 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %163, %143
  br label %184

184:                                              ; preds = %183, %42
  br label %185

185:                                              ; preds = %184, %32
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %115, %86, %67
  ret void
}

declare dso_local i32 @min3(i32, i32, i32) #1

declare dso_local i64 @get_plane_info(%struct.gsc_frame*, i32, i32*, i32*) #1

declare dso_local i32 @max3(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
