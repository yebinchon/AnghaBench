; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32, i32, i32 }

@bridge_init = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Device initialization failed\0A\00", align 1
@LED_REVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"OV9650 sensor detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"OV9655 sensor detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SOI968 sensor detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"OV7660 sensor detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"OV7670 sensor detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"MT9VPRB sensor detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"MT9M111 sensor detected\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"MT9M112 sensor detected\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"HV7131R sensor detected\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Unsupported sensor\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [9 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 3, i32* %21, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32**, i32*** @bridge_init, align 8
  %25 = call i32 @ARRAY_SIZE(i32** %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = load i32**, i32*** @bridge_init, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = load i32**, i32*** @bridge_init, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @reg_w(%struct.gspca_dev* %35, i32 %42, i32* %6, i32 1)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %27
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %199

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load %struct.sd*, %struct.sd** %4, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LED_REVERSE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = call i32 @reg_w1(%struct.gspca_dev* %66, i32 4102, i32 0)
  br label %71

68:                                               ; preds = %58
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = call i32 @reg_w1(%struct.gspca_dev* %69, i32 4102, i32 32)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %74 = call i32 @reg_w(%struct.gspca_dev* %72, i32 4288, i32* %73, i32 9)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %82 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %2, align 4
  br label %199

85:                                               ; preds = %71
  %86 = load %struct.sd*, %struct.sd** %4, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %188 [
    i32 130, label %89
    i32 129, label %99
    i32 128, label %109
    i32 132, label %119
    i32 131, label %129
    i32 133, label %139
    i32 135, label %149
    i32 134, label %159
    i32 136, label %169
    i32 137, label %178
  ]

89:                                               ; preds = %85
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %91 = call i32 @ov9650_init_sensor(%struct.gspca_dev* %90)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %194

97:                                               ; preds = %89
  %98 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %194

99:                                               ; preds = %85
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = call i32 @ov9655_init_sensor(%struct.gspca_dev* %100)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %194

107:                                              ; preds = %99
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %194

109:                                              ; preds = %85
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = call i32 @soi968_init_sensor(%struct.gspca_dev* %110)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %194

117:                                              ; preds = %109
  %118 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %194

119:                                              ; preds = %85
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = call i32 @ov7660_init_sensor(%struct.gspca_dev* %120)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %194

127:                                              ; preds = %119
  %128 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %194

129:                                              ; preds = %85
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @ov7670_init_sensor(%struct.gspca_dev* %130)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %133 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %194

137:                                              ; preds = %129
  %138 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %194

139:                                              ; preds = %85
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %141 = call i32 @mt9v_init_sensor(%struct.gspca_dev* %140)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %143 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %194

147:                                              ; preds = %139
  %148 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %194

149:                                              ; preds = %85
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %151 = call i32 @mt9m111_init_sensor(%struct.gspca_dev* %150)
  %152 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %153 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %194

157:                                              ; preds = %149
  %158 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %194

159:                                              ; preds = %85
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %161 = call i32 @mt9m112_init_sensor(%struct.gspca_dev* %160)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %163 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %194

167:                                              ; preds = %159
  %168 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %194

169:                                              ; preds = %85
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %171 = call i32 @mt9m001_init_sensor(%struct.gspca_dev* %170)
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %173 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %194

177:                                              ; preds = %169
  br label %194

178:                                              ; preds = %85
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %180 = call i32 @hv7131r_init_sensor(%struct.gspca_dev* %179)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %194

186:                                              ; preds = %178
  %187 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %194

188:                                              ; preds = %85
  %189 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %190 = load i64, i64* @ENODEV, align 8
  %191 = sub nsw i64 0, %190
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %193 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %188, %186, %185, %177, %176, %167, %166, %157, %156, %147, %146, %137, %136, %127, %126, %117, %116, %107, %106, %97, %96
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %196 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %194, %79, %48
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ov9650_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ov9655_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @soi968_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @ov7660_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @ov7670_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9v_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9m111_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9m112_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9m001_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @hv7131r_init_sensor(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
