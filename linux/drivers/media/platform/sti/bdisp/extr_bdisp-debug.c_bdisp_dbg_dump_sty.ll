; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_sty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_sty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s\090x%08X\09\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Pitch=%d - \00", align 1
@BLT_TTY_COL_MASK = common dso_local global i32 0, align 4
@BLT_TTY_COL_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"RGB565 - \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RGB888 - \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"xRGB888 - \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ARGB888 - \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"NV12 - \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"YUV420P - \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ColorFormat ??? - \00", align 1
@BLT_TTY_ALPHA_R = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"AlphaRange - \00", align 1
@BLT_S1TY_A1_SUBSET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"A1SubSet - \00", align 1
@BLT_TTY_MB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"MB - \00", align 1
@BLT_TTY_HSO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"HSO inverse - \00", align 1
@BLT_TTY_VSO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"VSO inverse - \00", align 1
@BLT_S1TY_CHROMA_EXT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"ChromaExt - \00", align 1
@BLT_S3TY_BLANK_ACC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"Blank Acc - \00", align 1
@BTL_S1TY_SUBBYTE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"SubByte - \00", align 1
@BLT_S1TY_RGB_EXP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"RGBExpand - \00", align 1
@BLT_TTY_BIG_END = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"BigEndian - \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i8*)* @bdisp_dbg_dump_sty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdisp_dbg_dump_sty(%struct.seq_file* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18, %4
  br label %195

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 49
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 50
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 51
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 65535
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BLT_TTY_COL_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %65 = ashr i32 %63, %64
  switch i32 %65, label %84 [
    i32 131, label %66
    i32 130, label %69
    i32 129, label %72
    i32 133, label %75
    i32 132, label %78
    i32 128, label %81
  ]

66:                                               ; preds = %26
  %67 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %68 = call i32 @seq_puts(%struct.seq_file* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %87

69:                                               ; preds = %26
  %70 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %87

72:                                               ; preds = %26
  %73 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %74 = call i32 @seq_puts(%struct.seq_file* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %87

75:                                               ; preds = %26
  %76 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %77 = call i32 @seq_puts(%struct.seq_file* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %87

78:                                               ; preds = %26
  %79 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %80 = call i32 @seq_puts(%struct.seq_file* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %87

81:                                               ; preds = %26
  %82 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %83 = call i32 @seq_puts(%struct.seq_file* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %87

84:                                               ; preds = %26
  %85 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %86 = call i32 @seq_puts(%struct.seq_file* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81, %78, %75, %72, %69, %66
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @BLT_TTY_ALPHA_R, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92, %87
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BLT_S1TY_A1_SUBSET, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %108 = call i32 @seq_puts(%struct.seq_file* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %103, %98
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @BLT_TTY_MB, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %119 = call i32 @seq_puts(%struct.seq_file* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114, %109
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @BLT_TTY_HSO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %127 = call i32 @seq_puts(%struct.seq_file* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @BLT_TTY_VSO, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %135 = call i32 @seq_puts(%struct.seq_file* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @BLT_S1TY_CHROMA_EXT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144, %141
  %148 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %149 = call i32 @seq_puts(%struct.seq_file* %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %144, %136
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @BLT_S3TY_BLANK_ACC, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %160 = call i32 @seq_puts(%struct.seq_file* %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %155, %150
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @BTL_S1TY_SUBBYTE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %171 = call i32 @seq_puts(%struct.seq_file* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %166, %161
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @BLT_S1TY_RGB_EXP, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %182 = call i32 @seq_puts(%struct.seq_file* %181, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %177, %172
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @BLT_TTY_BIG_END, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %193 = call i32 @seq_puts(%struct.seq_file* %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %188, %183
  br label %195

195:                                              ; preds = %194, %25
  %196 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %197 = call i32 @seq_putc(%struct.seq_file* %196, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
