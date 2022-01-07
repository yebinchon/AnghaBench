; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sd = type { i32, i32 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bad header\0A\00", align 1
@UVC_STREAM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"payload error\0A\00", align 1
@UVC_STREAM_PTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PTS not present\0A\00", align 1
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i64 0, align 8
@LAST_PACKET = common dso_local global i64 0, align 8
@FIRST_PACKET = common dso_local global i64 0, align 8
@UVC_STREAM_EOF = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"wrong sized frame\0A\00", align 1
@DISCARD_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %7, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 2048, i32 2040
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %183, %3
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 12
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %22
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = load i32, i32* @D_PACK, align 4
  %36 = call i32 @gspca_dbg(%struct.gspca_dev* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %171

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UVC_STREAM_ERR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = load i32, i32* @D_PACK, align 4
  %47 = call i32 @gspca_dbg(%struct.gspca_dev* %45, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %171

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UVC_STREAM_PTS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %57 = load i32, i32* @D_PACK, align 4
  %58 = call i32 @gspca_dbg(%struct.gspca_dev* %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %171

59:                                               ; preds = %48
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 24
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %73, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @UVC_STREAM_FID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.sd*, %struct.sd** %7, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %59
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.sd*, %struct.sd** %7, align 8
  %94 = getelementptr inbounds %struct.sd, %struct.sd* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %91, %59
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %99 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @INTER_PACKET, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %105 = load i64, i64* @LAST_PACKET, align 8
  %106 = call i32 @gspca_frame_add(%struct.gspca_dev* %104, i64 %105, i32* null, i32 0)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.sd*, %struct.sd** %7, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.sd*, %struct.sd** %7, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %115 = load i64, i64* @FIRST_PACKET, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 12
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, 12
  %120 = call i32 @gspca_frame_add(%struct.gspca_dev* %114, i64 %115, i32* %117, i32 %119)
  br label %170

121:                                              ; preds = %91
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @UVC_STREAM_EOF, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %161

128:                                              ; preds = %121
  %129 = load %struct.sd*, %struct.sd** %7, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %132 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %128
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %139 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %140, %141
  %143 = sub nsw i32 %142, 12
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %145 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %143, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %137
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %151 = load i32, i32* @D_PACK, align 4
  %152 = call i32 @gspca_dbg(%struct.gspca_dev* %150, i32 %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %171

153:                                              ; preds = %137, %128
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %155 = load i64, i64* @LAST_PACKET, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 12
  %158 = load i32, i32* %6, align 4
  %159 = sub nsw i32 %158, 12
  %160 = call i32 @gspca_frame_add(%struct.gspca_dev* %154, i64 %155, i32* %157, i32 %159)
  br label %169

161:                                              ; preds = %121
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %163 = load i64, i64* @INTER_PACKET, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 12
  %166 = load i32, i32* %6, align 4
  %167 = sub nsw i32 %166, 12
  %168 = call i32 @gspca_frame_add(%struct.gspca_dev* %162, i64 %163, i32* %165, i32 %167)
  br label %169

169:                                              ; preds = %161, %153
  br label %170

170:                                              ; preds = %169, %107
  br label %175

171:                                              ; preds = %149, %55, %44, %33
  %172 = load i64, i64* @DISCARD_PACKET, align 8
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %174 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %170
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %10, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %5, align 8
  br label %183

183:                                              ; preds = %175
  %184 = load i32, i32* %10, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %22, label %186

186:                                              ; preds = %183
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
