; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32, i8*, i32, %struct.TYPE_2__* }

@process_frame.frame_count = internal global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Processing frame #%d, current:%d\0A\00", align 1
@FRAME_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Start of frame not found\0A\00", align 1
@FRAME_EMPTY = common dso_local global i8* null, align 8
@FRAME_READY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Changed buffers, work:%d, current:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Not enough data for an image.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_frame(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %4 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %5 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %1
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 216
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @process_frame.frame_count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @process_frame.frame_count, align 4
  br label %63

56:                                               ; preds = %47, %41
  %57 = load i8*, i8** @FRAME_ERROR, align 8
  %58 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %59 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i8* %57, i8** %61, align 8
  %62 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %187

63:                                               ; preds = %53
  %64 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i8*, i8** @FRAME_EMPTY, align 8
  %72 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %73 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i8* %71, i8** %75, align 8
  br label %187

76:                                               ; preds = %63
  %77 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %78 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %179

83:                                               ; preds = %76
  %84 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %85 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %125

88:                                               ; preds = %83
  %89 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %90 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %95 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %88
  %101 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %102 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %107 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %105, i64 %111
  %113 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %114 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %119 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %117, %122
  %124 = call i32 @memset(i8* %112, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %100, %88, %83
  %126 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %127 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %132 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 4
  %135 = load i8*, i8** @FRAME_READY, align 8
  %136 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %137 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  store i8* %135, i8** %139, align 8
  %140 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %125
  %145 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %146 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 2
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i8*, i8** @FRAME_EMPTY, align 8
  %151 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %152 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %151, i32 0, i32 3
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  store i8* %150, i8** %154, align 8
  br label %155

155:                                              ; preds = %149, %144, %125
  %156 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %157 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %160 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %159, i32 0, i32 3
  store %struct.TYPE_2__* %158, %struct.TYPE_2__** %160, align 8
  %161 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %162 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %167 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %166, i32 0, i32 2
  store %struct.TYPE_2__* %165, %struct.TYPE_2__** %167, align 8
  %168 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %169 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %168, i32 0, i32 2
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %174 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %173, i32 0, i32 3
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %177)
  br label %187

179:                                              ; preds = %76
  %180 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179
  %182 = load i8*, i8** @FRAME_ERROR, align 8
  %183 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %184 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 3
  store i8* %182, i8** %186, align 8
  br label %187

187:                                              ; preds = %181, %155, %68, %56
  ret void
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
