; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_isoc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_isoc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i8*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.msi2500_dev = type { i64, i32, i32 }
%struct.msi2500_frame_buf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"URB (%p) unlinked %ssynchronously\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"called with status %d\0A\00", align 1
@MAX_ISOC_ERRORS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Too many ISOC errors, bailing out\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"frame=%d/%d has error %d skipping\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"videobuf is full, %d packets dropped\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Error (%d) re-submitting urb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @msi2500_isoc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi2500_isoc_handler(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.msi2500_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.msi2500_frame_buf*, align 8
  %9 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.msi2500_dev*
  store %struct.msi2500_dev* %13, %struct.msi2500_dev** %3, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %1
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ECONNRESET, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ESHUTDOWN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br label %34

34:                                               ; preds = %27, %20, %1
  %35 = phi i1 [ true, %20 ], [ true, %1 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %41 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.urb* %43, i8* %51)
  br label %200

53:                                               ; preds = %34
  %54 = load %struct.urb*, %struct.urb** %2, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %53
  %62 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %63 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.urb*, %struct.urb** %2, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %70 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* @MAX_ISOC_ERRORS, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %77 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %61
  br label %185

81:                                               ; preds = %53
  %82 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %83 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %181, %84
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.urb*, %struct.urb** %2, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %184

91:                                               ; preds = %85
  %92 = load %struct.urb*, %struct.urb** %2, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %105 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.urb*, %struct.urb** %2, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32, i8*, i32, ...) @dev_dbg_ratelimited(i32 %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %110, i32 %111)
  br label %181

113:                                              ; preds = %91
  %114 = load %struct.urb*, %struct.urb** %2, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %181

128:                                              ; preds = %113
  %129 = load %struct.urb*, %struct.urb** %2, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.urb*, %struct.urb** %2, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 3
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %131, i64 %140
  store i8* %141, i8** %7, align 8
  %142 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %143 = call %struct.msi2500_frame_buf* @msi2500_get_next_fill_buf(%struct.msi2500_dev* %142)
  store %struct.msi2500_frame_buf* %143, %struct.msi2500_frame_buf** %8, align 8
  %144 = load %struct.msi2500_frame_buf*, %struct.msi2500_frame_buf** %8, align 8
  %145 = icmp eq %struct.msi2500_frame_buf* %144, null
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %128
  %150 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %151 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %155 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %158 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, ...) @dev_dbg_ratelimited(i32 %156, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  br label %181

161:                                              ; preds = %128
  %162 = load %struct.msi2500_frame_buf*, %struct.msi2500_frame_buf** %8, align 8
  %163 = getelementptr inbounds %struct.msi2500_frame_buf, %struct.msi2500_frame_buf* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = call i8* @vb2_plane_vaddr(i32* %164, i32 0)
  store i8* %165, i8** %9, align 8
  %166 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @msi2500_convert_stream(%struct.msi2500_dev* %166, i8* %167, i8* %168, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load %struct.msi2500_frame_buf*, %struct.msi2500_frame_buf** %8, align 8
  %172 = getelementptr inbounds %struct.msi2500_frame_buf, %struct.msi2500_frame_buf* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @vb2_set_plane_payload(i32* %173, i32 0, i32 %174)
  %176 = load %struct.msi2500_frame_buf*, %struct.msi2500_frame_buf** %8, align 8
  %177 = getelementptr inbounds %struct.msi2500_frame_buf, %struct.msi2500_frame_buf* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %180 = call i32 @vb2_buffer_done(i32* %178, i32 %179)
  br label %181

181:                                              ; preds = %161, %149, %127, %103
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %85

184:                                              ; preds = %85
  br label %185

185:                                              ; preds = %184, %80
  %186 = load %struct.urb*, %struct.urb** %2, align 8
  %187 = load i32, i32* @GFP_ATOMIC, align 4
  %188 = call i32 @usb_submit_urb(%struct.urb* %186, i32 %187)
  store i32 %188, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %185
  %195 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %196 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = call i32 (i32, i8*, ...) @dev_dbg(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %39, %194, %185
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32, ...) #1

declare dso_local %struct.msi2500_frame_buf* @msi2500_get_next_fill_buf(%struct.msi2500_dev*) #1

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @msi2500_convert_stream(%struct.msi2500_dev*, i8*, i8*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i32) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
