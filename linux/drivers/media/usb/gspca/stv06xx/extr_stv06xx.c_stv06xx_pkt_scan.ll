; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i64, i32 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Packet of length %d arrived\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Packet is smaller than 4 bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Chunk id: %x, length: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"URB packet length is smaller than the specified chunk length\0A\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@BRIDGE_ST6422 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Frame data packet detected\0A\00", align 1
@INTER_PACKET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Starting new frame\0A\00", align 1
@FIRST_PACKET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Chunk length is non-zero on a SOF\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"End of frame detected\0A\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Chunk length is non-zero on a EOF\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Chunk 0x005 detected\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Chunk 0x0100 detected\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Chunk 0x42ff detected\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Unknown chunk 0x%04x detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @stv06xx_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv06xx_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %14 = load i32, i32* @D_PACK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %13, i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %176, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %184

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %25 = load i32, i32* @D_PACK, align 4
  %26 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %184

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = load i32, i32* @D_PACK, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %44, i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %27
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %58 = call i32 @gspca_err(%struct.gspca_dev* %57, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @DISCARD_PACKET, align 4
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %184

62:                                               ; preds = %27
  %63 = load %struct.sd*, %struct.sd** %7, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BRIDGE_ST6422, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 65280
  %71 = icmp eq i32 %70, 512
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %76

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %171 [
    i32 512, label %75
    i32 16896, label %75
    i32 32769, label %119
    i32 32773, label %119
    i32 49153, label %119
    i32 49157, label %119
    i32 32770, label %146
    i32 32774, label %146
    i32 49154, label %146
    i32 5, label %159
    i32 256, label %163
    i32 17151, label %167
  ]

75:                                               ; preds = %73, %73
  br label %76

76:                                               ; preds = %75, %72
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %78 = load i32, i32* @D_PACK, align 4
  %79 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %77, i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.sd*, %struct.sd** %7, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %76
  %85 = load %struct.sd*, %struct.sd** %7, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.sd*, %struct.sd** %7, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  br label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %93, %90 ], [ %95, %94 ]
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.sd*, %struct.sd** %7, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %96, %76
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %115 = load i32, i32* @INTER_PACKET, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @gspca_frame_add(%struct.gspca_dev* %114, i32 %115, i32* %116, i32 %117)
  br label %176

119:                                              ; preds = %73, %73, %73, %73
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %121 = load i32, i32* @D_PACK, align 4
  %122 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %120, i32 %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %124 = load i32, i32* @FIRST_PACKET, align 4
  %125 = call i32 @gspca_frame_add(%struct.gspca_dev* %123, i32 %124, i32* null, i32 0)
  %126 = load %struct.sd*, %struct.sd** %7, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @BRIDGE_ST6422, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %133 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 4
  %137 = load %struct.sd*, %struct.sd** %7, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %131, %119
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %144 = call i32 @gspca_err(%struct.gspca_dev* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %139
  br label %176

146:                                              ; preds = %73, %73, %73
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %148 = load i32, i32* @D_PACK, align 4
  %149 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %147, i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %151 = load i32, i32* @LAST_PACKET, align 4
  %152 = call i32 @gspca_frame_add(%struct.gspca_dev* %150, i32 %151, i32* null, i32 0)
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %157 = call i32 @gspca_err(%struct.gspca_dev* %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %146
  br label %176

159:                                              ; preds = %73
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %161 = load i32, i32* @D_PACK, align 4
  %162 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %160, i32 %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %176

163:                                              ; preds = %73
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %165 = load i32, i32* @D_PACK, align 4
  %166 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %164, i32 %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %176

167:                                              ; preds = %73
  %168 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %169 = load i32, i32* @D_PACK, align 4
  %170 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %168, i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %176

171:                                              ; preds = %73
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %173 = load i32, i32* @D_PACK, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %172, i32 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %171, %167, %163, %159, %158, %145, %113
  %177 = load i32, i32* %9, align 4
  %178 = load i32*, i32** %5, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %6, align 4
  br label %17

184:                                              ; preds = %23, %56, %17
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
