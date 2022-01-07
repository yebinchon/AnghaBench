; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_ins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"INS\090x%08X\09\00", align 1
@BLT_INS_S1_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SRC1=mem - \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SRC1=ColorFill - \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SRC1=copy - \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SRC1=fil - \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SRC1=??? - \00", align 1
@BLT_INS_S2_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"SRC2=mem - \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SRC2=ColorFill - \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SRC2=??? - \00", align 1
@BLT_INS_S3_MASK = common dso_local global i32 0, align 4
@BLT_INS_S3_MEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"SRC3=mem - \00", align 1
@BLT_INS_IVMX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"IVMX - \00", align 1
@BLT_INS_CLUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"CLUT - \00", align 1
@BLT_INS_SCALE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"Scale - \00", align 1
@BLT_INS_FLICK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"Flicker - \00", align 1
@BLT_INS_CLIP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"Clip - \00", align 1
@BLT_INS_CKEY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"ColorKey - \00", align 1
@BLT_INS_OVMX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"OVMX - \00", align 1
@BLT_INS_DEI = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"Deint - \00", align 1
@BLT_INS_PMASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"PlaneMask - \00", align 1
@BLT_INS_VC1R = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"VC1R - \00", align 1
@BLT_INS_ROTATE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"Rotate - \00", align 1
@BLT_INS_GRAD = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"GradFill - \00", align 1
@BLT_INS_AQLOCK = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"AQLock - \00", align 1
@BLT_INS_PACE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"Pace - \00", align 1
@BLT_INS_IRQ = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"IRQ - \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @bdisp_dbg_dump_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdisp_dbg_dump_ins(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BLT_INS_S1_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %24 [
    i32 131, label %11
    i32 132, label %12
    i32 135, label %15
    i32 134, label %18
    i32 133, label %21
  ]

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 @seq_puts(%struct.seq_file* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21, %18, %15, %12, %11
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BLT_INS_S2_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %38 [
    i32 128, label %31
    i32 129, label %32
    i32 130, label %35
  ]

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %41

35:                                               ; preds = %27
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %41

38:                                               ; preds = %27
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35, %32, %31
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @BLT_INS_S3_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @BLT_INS_S3_MEM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = call i32 @seq_puts(%struct.seq_file* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @BLT_INS_IVMX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @BLT_INS_CLUT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BLT_INS_SCALE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @BLT_INS_FLICK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @BLT_INS_CLIP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = call i32 @seq_puts(%struct.seq_file* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @BLT_INS_CKEY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @BLT_INS_OVMX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = call i32 @seq_puts(%struct.seq_file* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @BLT_INS_DEI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = call i32 @seq_puts(%struct.seq_file* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @BLT_INS_PMASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = call i32 @seq_puts(%struct.seq_file* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @BLT_INS_VC1R, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 @seq_puts(%struct.seq_file* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @BLT_INS_ROTATE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = call i32 @seq_puts(%struct.seq_file* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @BLT_INS_GRAD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = call i32 @seq_puts(%struct.seq_file* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @BLT_INS_AQLOCK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = call i32 @seq_puts(%struct.seq_file* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @BLT_INS_PACE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %161 = call i32 @seq_puts(%struct.seq_file* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @BLT_INS_IRQ, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %169 = call i32 @seq_puts(%struct.seq_file* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = call i32 @seq_putc(%struct.seq_file* %171, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
