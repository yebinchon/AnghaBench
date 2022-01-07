; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32, i32, i64 }

@webcam = common dso_local global i32 0, align 4
@NWEBCAMS = common dso_local global i32 0, align 4
@BRIDGE_NW802 = common dso_local global i64 0, align 8
@Generic800 = common dso_local global i32 0, align 4
@Generic802 = common dso_local global i32 0, align 4
@BRIDGE_NW801 = common dso_local global i64 0, align 8
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"et31x110 sensor type %02x\0A\00", align 1
@SpaceCam = common dso_local global i32 0, align 4
@Twinkle = common dso_local global i32 0, align 4
@SpaceCam2 = common dso_local global i32 0, align 4
@webcam_chip = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Bad webcam type %d for NW80%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bridge nw80%d - type: %d\0A\00", align 1
@BRIDGE_NW800 = common dso_local global i64 0, align 8
@cif_mode = common dso_local global i32* null, align 8
@vga_mode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load i32, i32* @webcam, align 4
  %10 = load i32, i32* @NWEBCAMS, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* @webcam, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* @webcam, align 4
  %15 = load %struct.sd*, %struct.sd** %6, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.sd*, %struct.sd** %6, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %23 = call i32 @nw802_test_reg(%struct.gspca_dev* %22, i32 1280, i32 85)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %13
  %26 = load i64, i64* @BRIDGE_NW802, align 8
  %27 = load %struct.sd*, %struct.sd** %6, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.sd*, %struct.sd** %6, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @Generic800, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @Generic802, align 4
  %36 = load %struct.sd*, %struct.sd** %6, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %25
  br label %120

39:                                               ; preds = %13
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %41 = call i32 @nw802_test_reg(%struct.gspca_dev* %40, i32 4251, i32 170)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @BRIDGE_NW801, align 8
  %45 = load %struct.sd*, %struct.sd** %6, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sd*, %struct.sd** %6, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @Generic800, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.sd*, %struct.sd** %6, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  store i32 129, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %43
  br label %119

56:                                               ; preds = %39
  %57 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1701
  br i1 %60, label %61, label %118

61:                                               ; preds = %56
  %62 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %63 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 55296
  br i1 %65, label %66, label %118

66:                                               ; preds = %61
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = call i32 @reg_r(%struct.gspca_dev* %67, i32 1027, i32 1)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %70 = load i32, i32* @D_PROBE, align 4
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 (%struct.gspca_dev*, i32, i8*, i64, ...) @gspca_dbg(%struct.gspca_dev* %69, i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 1
  switch i32 %83, label %117 [
    i32 0, label %84
    i32 1, label %95
    i32 10, label %106
  ]

84:                                               ; preds = %66
  %85 = load %struct.sd*, %struct.sd** %6, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @Generic800, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @SpaceCam, align 4
  %92 = load %struct.sd*, %struct.sd** %6, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %84
  br label %117

95:                                               ; preds = %66
  %96 = load %struct.sd*, %struct.sd** %6, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @Generic800, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @Twinkle, align 4
  %103 = load %struct.sd*, %struct.sd** %6, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %95
  br label %117

106:                                              ; preds = %66
  %107 = load %struct.sd*, %struct.sd** %6, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @Generic800, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @SpaceCam2, align 4
  %114 = load %struct.sd*, %struct.sd** %6, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %66, %116, %105, %94
  br label %118

118:                                              ; preds = %117, %61, %56
  br label %119

119:                                              ; preds = %118, %55
  br label %120

120:                                              ; preds = %119, %38
  %121 = load i64*, i64** @webcam_chip, align 8
  %122 = load %struct.sd*, %struct.sd** %6, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.sd*, %struct.sd** %6, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %120
  %133 = load %struct.sd*, %struct.sd** %6, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.sd*, %struct.sd** %6, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %136, i64 %139)
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %144 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %146 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %3, align 4
  br label %205

148:                                              ; preds = %120
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %150 = load i32, i32* @D_PROBE, align 4
  %151 = load %struct.sd*, %struct.sd** %6, align 8
  %152 = getelementptr inbounds %struct.sd, %struct.sd* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.sd*, %struct.sd** %6, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (%struct.gspca_dev*, i32, i8*, i64, ...) @gspca_dbg(%struct.gspca_dev* %149, i32 %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %153, i32 %156)
  %158 = load %struct.sd*, %struct.sd** %6, align 8
  %159 = getelementptr inbounds %struct.sd, %struct.sd* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @BRIDGE_NW800, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %148
  %164 = load %struct.sd*, %struct.sd** %6, align 8
  %165 = getelementptr inbounds %struct.sd, %struct.sd* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %172 [
    i32 131, label %167
  ]

167:                                              ; preds = %163
  %168 = load i32*, i32** @cif_mode, align 8
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %170 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  store i32* %168, i32** %171, align 8
  br label %178

172:                                              ; preds = %163
  %173 = load i32*, i32** @cif_mode, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %176 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  store i32* %174, i32** %177, align 8
  br label %178

178:                                              ; preds = %172, %167
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %180 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  br label %201

182:                                              ; preds = %148
  %183 = load i32*, i32** @vga_mode, align 8
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %185 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  store i32* %183, i32** %186, align 8
  %187 = load %struct.sd*, %struct.sd** %6, align 8
  %188 = getelementptr inbounds %struct.sd, %struct.sd* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  switch i32 %189, label %196 [
    i32 130, label %190
    i32 128, label %190
    i32 129, label %190
  ]

190:                                              ; preds = %182, %182, %182
  %191 = load i32*, i32** @vga_mode, align 8
  %192 = call i32 @ARRAY_SIZE(i32* %191)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %194 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 4
  br label %200

196:                                              ; preds = %182
  %197 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %198 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %196, %190
  br label %201

201:                                              ; preds = %200, %178
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %203 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %201, %132
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @nw802_test_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64, ...) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
