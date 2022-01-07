; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gspca_dev = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Configuring camera for SXGA mode\0A\00", align 1
@SXGA_s5k4aa = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid stream command, exiting init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Configuring camera for VGA mode\0A\00", align 1
@VGA_s5k4aa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k4aa_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.cam*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.cam* %11, %struct.cam** %7, align 8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %8, align 8
  %14 = load %struct.cam*, %struct.cam** %7, align 8
  %15 = getelementptr inbounds %struct.cam, %struct.cam* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %202 [
    i32 1280, label %24
    i32 640, label %113
  ]

24:                                               ; preds = %1
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %26 = load i32, i32* @D_CONF, align 4
  %27 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %109, %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %31 = call i32 @ARRAY_SIZE(i32** %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %28
  %34 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %104 [
    i32 130, label %41
    i32 129, label %58
    i32 128, label %77
  ]

41:                                               ; preds = %33
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @m5602_write_bridge(%struct.sd* %42, i32 %49, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %108

58:                                               ; preds = %33
  %59 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sd*, %struct.sd** %3, align 8
  %68 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %76 = call i32 @m5602_write_sensor(%struct.sd* %67, i32 %74, i32* %75, i32 1)
  store i32 %76, i32* %5, align 4
  br label %108

77:                                               ; preds = %33
  %78 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  %86 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = load i32**, i32*** @SXGA_s5k4aa, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %103 = call i32 @m5602_write_sensor(%struct.sd* %94, i32 %101, i32* %102, i32 2)
  store i32 %103, i32* %5, align 4
  br label %108

104:                                              ; preds = %33
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %208

108:                                              ; preds = %77, %58, %41
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %28

112:                                              ; preds = %28
  br label %202

113:                                              ; preds = %1
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %115 = load i32, i32* @D_CONF, align 4
  %116 = call i32 @gspca_dbg(%struct.gspca_dev* %114, i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %198, %113
  %118 = load i32, i32* %4, align 4
  %119 = load i32**, i32*** @VGA_s5k4aa, align 8
  %120 = call i32 @ARRAY_SIZE(i32** %119)
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %201

122:                                              ; preds = %117
  %123 = load i32**, i32*** @VGA_s5k4aa, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %193 [
    i32 130, label %130
    i32 129, label %147
    i32 128, label %166
  ]

130:                                              ; preds = %122
  %131 = load %struct.sd*, %struct.sd** %3, align 8
  %132 = load i32**, i32*** @VGA_s5k4aa, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32**, i32*** @VGA_s5k4aa, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @m5602_write_bridge(%struct.sd* %131, i32 %138, i32 %145)
  store i32 %146, i32* %5, align 4
  br label %197

147:                                              ; preds = %122
  %148 = load i32**, i32*** @VGA_s5k4aa, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %154, i32* %155, align 4
  %156 = load %struct.sd*, %struct.sd** %3, align 8
  %157 = load i32**, i32*** @VGA_s5k4aa, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %165 = call i32 @m5602_write_sensor(%struct.sd* %156, i32 %163, i32* %164, i32 1)
  store i32 %165, i32* %5, align 4
  br label %197

166:                                              ; preds = %122
  %167 = load i32**, i32*** @VGA_s5k4aa, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %173, i32* %174, align 4
  %175 = load i32**, i32*** @VGA_s5k4aa, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %181, i32* %182, align 4
  %183 = load %struct.sd*, %struct.sd** %3, align 8
  %184 = load i32**, i32*** @VGA_s5k4aa, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %192 = call i32 @m5602_write_sensor(%struct.sd* %183, i32 %190, i32* %191, i32 2)
  store i32 %192, i32* %5, align 4
  br label %197

193:                                              ; preds = %122
  %194 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %208

197:                                              ; preds = %166, %147, %130
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %117

201:                                              ; preds = %117
  br label %202

202:                                              ; preds = %1, %201, %112
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %208

207:                                              ; preds = %202
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %205, %193, %104
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
