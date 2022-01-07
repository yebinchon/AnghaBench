; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_dvb_feed_start_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_dvb_feed_start_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, i32, %struct.dvb_demux* }
%struct.dvb_demux = type { i32*, %struct.av7110* }
%struct.av7110 = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@TS_PACKET = common dso_local global i32 0, align 4
@COMTYPE_PIDFILTER = common dso_local global i32 0, align 4
@Scan = common dso_local global i32 0, align 4
@RP_AUDIO = common dso_local global i32 0, align 4
@RP_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @dvb_feed_start_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_feed_start_pid(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %10 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %10, i32 0, i32 3
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  store %struct.dvb_demux* %12, %struct.dvb_demux** %4, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 1
  %15 = load %struct.av7110*, %struct.av7110** %14, align 8
  store %struct.av7110* %15, %struct.av7110** %5, align 8
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.av7110*, %struct.av7110** %5, align 8
  %20 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %19)
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 65535, i32* %21, align 16
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 65535, i32* %22, align 4
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 65535, i32* %23, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 65535, i32* %24, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 65535, i32* %25, align 16
  %26 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 32768
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %43

37:                                               ; preds = %1
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %37, %36
  %44 = phi i32 [ 0, %36 ], [ %42, %37 ]
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TS_PACKET, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load %struct.av7110*, %struct.av7110** %5, align 8
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %77 = load i32, i32* %76, align 16
  %78 = call i32 @ChangePIDs(%struct.av7110* %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %63
  %82 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @StartHWFilter(i32 %84)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %81, %63
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  br label %192

88:                                               ; preds = %56, %50, %43
  %89 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sle i32 %91, 2
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %116

98:                                               ; preds = %93, %88
  %99 = load %struct.av7110*, %struct.av7110** %5, align 8
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %109 = load i32, i32* %108, align 16
  %110 = call i32 @ChangePIDs(%struct.av7110* %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %192

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %93
  %117 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %118 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %123 = load i32, i32* %122, align 16
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load %struct.av7110*, %struct.av7110** %5, align 8
  %127 = getelementptr inbounds %struct.av7110, %struct.av7110* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load %struct.av7110*, %struct.av7110** %5, align 8
  %132 = load i32, i32* @COMTYPE_PIDFILTER, align 4
  %133 = load i32, i32* @Scan, align 4
  %134 = call i32 @av7110_fw_cmd(%struct.av7110* %131, i32 %132, i32 %133, i32 0)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %192

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %125
  br label %141

141:                                              ; preds = %140, %121, %116
  %142 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %143 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TS_PACKET, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %141
  %149 = load %struct.av7110*, %struct.av7110** %5, align 8
  %150 = getelementptr inbounds %struct.av7110, %struct.av7110* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %190, label %153

153:                                              ; preds = %148
  %154 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %155 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %160 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 32768
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %158
  %167 = load %struct.av7110*, %struct.av7110** %5, align 8
  %168 = load i32, i32* @RP_AUDIO, align 4
  %169 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %170 = call i32 @av7110_av_start_record(%struct.av7110* %167, i32 %168, %struct.dvb_demux_feed* %169)
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %166, %158, %153
  %172 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %173 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %178 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 32768
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %176
  %185 = load %struct.av7110*, %struct.av7110** %5, align 8
  %186 = load i32, i32* @RP_VIDEO, align 4
  %187 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %188 = call i32 @av7110_av_start_record(%struct.av7110* %185, i32 %186, %struct.dvb_demux_feed* %187)
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %184, %176, %171
  br label %190

190:                                              ; preds = %189, %148, %141
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %137, %113, %86
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @ChangePIDs(%struct.av7110*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @StartHWFilter(i32) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @av7110_av_start_record(%struct.av7110*, i32, %struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
