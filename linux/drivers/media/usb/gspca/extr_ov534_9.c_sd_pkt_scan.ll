; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
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
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 2048, i32 2040
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %157, %3
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
  br label %145

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
  br label %145

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
  br label %145

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
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.sd*, %struct.sd** %7, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %59
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.sd*, %struct.sd** %7, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88, %59
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %96 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @INTER_PACKET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %102 = load i64, i64* @LAST_PACKET, align 8
  %103 = call i32 @gspca_frame_add(%struct.gspca_dev* %101, i64 %102, i32* null, i32 0)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sd*, %struct.sd** %7, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.sd*, %struct.sd** %7, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %112 = load i64, i64* @FIRST_PACKET, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 12
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 12
  %117 = call i32 @gspca_frame_add(%struct.gspca_dev* %111, i64 %112, i32* %114, i32 %116)
  br label %144

118:                                              ; preds = %88
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UVC_STREAM_EOF, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load %struct.sd*, %struct.sd** %7, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %129 = load i64, i64* @LAST_PACKET, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 12
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %132, 12
  %134 = call i32 @gspca_frame_add(%struct.gspca_dev* %128, i64 %129, i32* %131, i32 %133)
  br label %143

135:                                              ; preds = %118
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %137 = load i64, i64* @INTER_PACKET, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 12
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, 12
  %142 = call i32 @gspca_frame_add(%struct.gspca_dev* %136, i64 %137, i32* %139, i32 %141)
  br label %143

143:                                              ; preds = %135, %125
  br label %144

144:                                              ; preds = %143, %104
  br label %149

145:                                              ; preds = %55, %44, %33
  %146 = load i64, i64* @DISCARD_PACKET, align 8
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %148 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %144
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %5, align 8
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %22, label %160

160:                                              ; preds = %157
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
