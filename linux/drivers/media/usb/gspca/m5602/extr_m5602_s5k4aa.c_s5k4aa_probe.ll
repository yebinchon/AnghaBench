; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32**, i32 }
%struct.gspca_dev = type { i32 }

@__const.s5k4aa_probe.expected_prod_id = private unnamed_addr constant [6 x i32] [i32 0, i32 16, i32 0, i32 75, i32 51, i32 117], align 16
@force_sensor = common dso_local global i64 0, align 8
@S5K4AA_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Forcing a %s sensor\0A\00", align 1
@s5k4aa = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Probing for a s5k4aa sensor\0A\00", align 1
@preinit_s5k4aa = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid stream command, exiting init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Detected a s5k4aa sensor\0A\00", align 1
@s5k4aa_modes = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k4aa_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca [6 x i32], align 16
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %10 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 24, i1 false)
  %11 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([6 x i32]* @__const.s5k4aa_probe.expected_prod_id to i8*), i64 24, i1 false)
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* @force_sensor, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i64, i64* @force_sensor, align 8
  %18 = load i64, i64* @S5K4AA_SENSOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s5k4aa, i32 0, i32 0), align 4
  %22 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %158

23:                                               ; preds = %16
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %170

26:                                               ; preds = %1
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %28 = load i32, i32* @D_PROBE, align 4
  %29 = call i32 @gspca_dbg(%struct.gspca_dev* %27, i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %118, %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32**, i32*** @preinit_s5k4aa, align 8
  %33 = call i32 @ARRAY_SIZE(i32** %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %41, label %121

41:                                               ; preds = %39
  %42 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 8, i1 false)
  %43 = load i32**, i32*** @preinit_s5k4aa, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %113 [
    i32 130, label %50
    i32 129, label %67
    i32 128, label %86
  ]

50:                                               ; preds = %41
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = load i32**, i32*** @preinit_s5k4aa, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32**, i32*** @preinit_s5k4aa, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @m5602_write_bridge(%struct.sd* %51, i32 %58, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %117

67:                                               ; preds = %41
  %68 = load i32**, i32*** @preinit_s5k4aa, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = load i32**, i32*** @preinit_s5k4aa, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %85 = call i32 @m5602_write_sensor(%struct.sd* %76, i32 %83, i32* %84, i32 1)
  store i32 %85, i32* %8, align 4
  br label %117

86:                                               ; preds = %41
  %87 = load i32**, i32*** @preinit_s5k4aa, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  %95 = load i32**, i32*** @preinit_s5k4aa, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = load i32**, i32*** @preinit_s5k4aa, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %112 = call i32 @m5602_write_sensor(%struct.sd* %103, i32 %110, i32* %111, i32 2)
  store i32 %112, i32* %8, align 4
  br label %117

113:                                              ; preds = %41
  %114 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %170

117:                                              ; preds = %86, %67, %50
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %30

121:                                              ; preds = %39
  %122 = load %struct.sd*, %struct.sd** %3, align 8
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %124 = call i64 @m5602_read_sensor(%struct.sd* %122, i32 0, i32* %123, i32 2)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %170

129:                                              ; preds = %121
  %130 = load %struct.sd*, %struct.sd** %3, align 8
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = call i64 @m5602_read_sensor(%struct.sd* %130, i32 2, i32* %132, i32 2)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %170

138:                                              ; preds = %129
  %139 = load %struct.sd*, %struct.sd** %3, align 8
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = call i64 @m5602_read_sensor(%struct.sd* %139, i32 4, i32* %141, i32 2)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %170

147:                                              ; preds = %138
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %150 = call i64 @memcmp(i32* %148, i32* %149, i32 24)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %170

155:                                              ; preds = %147
  %156 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %20
  %159 = load i32**, i32*** @s5k4aa_modes, align 8
  %160 = load %struct.sd*, %struct.sd** %3, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32** %159, i32*** %163, align 8
  %164 = load i32**, i32*** @s5k4aa_modes, align 8
  %165 = call i32 @ARRAY_SIZE(i32** %164)
  %166 = load %struct.sd*, %struct.sd** %3, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 8
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %158, %152, %144, %135, %126, %113, %23
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #2

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #2

declare dso_local i64 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
