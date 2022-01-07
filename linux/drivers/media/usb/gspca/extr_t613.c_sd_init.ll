; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.additional_sensor_data = type { i32*, i32*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@sd_init.read_indexs = internal constant [14 x i32] [i32 10, i32 11, i32 102, i32 128, i32 129, i32 142, i32 143, i32 165, i32 166, i32 168, i32 187, i32 188, i32 198, i32 0], align 16
@sd_init.n1 = internal constant [6 x i32] [i32 8, i32 3, i32 9, i32 3, i32 18, i32 4], align 16
@sd_init.n2 = internal constant [2 x i32] [i32 8, i32 0], align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sensor tas5130a\0A\00", align 1
@SENSOR_TAS5130A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"sensor lt168g\0A\00", align 1
@SENSOR_LT168G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"sensor 'other'\0A\00", align 1
@SENSOR_OTHER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"sensor om6802\0A\00", align 1
@SENSOR_OM6802 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"unknown sensor %04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sensor_reset = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Bad sensor reset %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Reg 0x%02x = 0x%02x\0A\00", align 1
@sensor_data = common dso_local global %struct.additional_sensor_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.additional_sensor_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = call i32 @reg_r(%struct.gspca_dev* %11, i32 6)
  %13 = shl i32 %12, 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @reg_r(%struct.gspca_dev* %14, i32 7)
  %16 = or i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 65295
  switch i32 %18, label %47 [
    i32 2049, label %19
    i32 2050, label %26
    i32 2051, label %33
    i32 2055, label %40
  ]

19:                                               ; preds = %1
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* @D_PROBE, align 4
  %22 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %20, i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @SENSOR_TAS5130A, align 8
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = load i32, i32* @D_PROBE, align 4
  %29 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %27, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @SENSOR_LT168G, align 8
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = load i32, i32* @D_PROBE, align 4
  %36 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %34, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i64, i64* @SENSOR_OTHER, align 8
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %52

40:                                               ; preds = %1
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = load i32, i32* @D_PROBE, align 4
  %43 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %41, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i64, i64* @SENSOR_OM6802, align 8
  %45 = load %struct.sd*, %struct.sd** %4, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %52

47:                                               ; preds = %1
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %232

52:                                               ; preds = %40, %33, %26, %19
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SENSOR_OM6802, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = call i32 @reg_w_buf(%struct.gspca_dev* %59, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_init.n1, i64 0, i64 0), i32 24)
  store i32 5, i32* %6, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = load i32*, i32** @sensor_reset, align 8
  %68 = call i32 @reg_w_buf(%struct.gspca_dev* %66, i32* %67, i32 8)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = call i32 @reg_r(%struct.gspca_dev* %69, i32 99)
  store i32 %70, i32* %8, align 4
  %71 = call i32 @msleep(i32 100)
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 23
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %76

75:                                               ; preds = %65
  br label %61

76:                                               ; preds = %74, %61
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %232

84:                                               ; preds = %76
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = call i32 @reg_w_buf(%struct.gspca_dev* %85, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @sd_init.n2, i64 0, i64 0), i32 8)
  br label %87

87:                                               ; preds = %84, %52
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %94, %87
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [14 x i32], [14 x i32]* @sd_init.read_indexs, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [14 x i32], [14 x i32]* @sd_init.read_indexs, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @reg_r(%struct.gspca_dev* %95, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = load i32, i32* @D_STREAM, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [14 x i32], [14 x i32]* @sd_init.read_indexs, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %101, i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %88

111:                                              ; preds = %88
  %112 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** @sensor_data, align 8
  %113 = load %struct.sd*, %struct.sd** %4, align 8
  %114 = getelementptr inbounds %struct.sd, %struct.sd* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %112, i64 %115
  store %struct.additional_sensor_data* %116, %struct.additional_sensor_data** %5, align 8
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %118 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %119 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @reg_w_buf(%struct.gspca_dev* %117, i32* %120, i32 8)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %124 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %127 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @reg_w_buf(%struct.gspca_dev* %122, i32* %125, i32 %128)
  %130 = load %struct.sd*, %struct.sd** %4, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SENSOR_LT168G, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %111
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %137 = call i32 @reg_r(%struct.gspca_dev* %136, i32 128)
  store i32 %137, i32* %8, align 4
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %139 = load i32, i32* @D_STREAM, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %138, i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 128, i32 %140)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %143 = call i32 @reg_w(%struct.gspca_dev* %142, i32 27776)
  br label %144

144:                                              ; preds = %135, %111
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %146 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %147 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %145, i32 208, i32 %148, i32 4)
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %151 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %152 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %150, i32 199, i32 %153, i32 4)
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %156 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %157 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %155, i32 224, i32 %158, i32 4)
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %161 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %162 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 8
  %165 = add nsw i32 %164, 128
  %166 = call i32 @reg_w(%struct.gspca_dev* %160, i32 %165)
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %168 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %169 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 8
  %172 = add nsw i32 %171, 128
  %173 = call i32 @reg_w(%struct.gspca_dev* %167, i32 %172)
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %175 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %176 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 %177, 8
  %179 = add nsw i32 %178, 142
  %180 = call i32 @reg_w(%struct.gspca_dev* %174, i32 %179)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = call i32 @reg_w(%struct.gspca_dev* %181, i32 8327)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %184 = call i32 @reg_w(%struct.gspca_dev* %183, i32 8328)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %186 = call i32 @reg_w(%struct.gspca_dev* %185, i32 8329)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %188 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %189 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %188, i32 0, i32 5
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @reg_w_buf(%struct.gspca_dev* %187, i32* %190, i32 8)
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %193 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %194 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @reg_w_buf(%struct.gspca_dev* %192, i32* %195, i32 8)
  %197 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %198 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %199 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @reg_w_buf(%struct.gspca_dev* %197, i32* %200, i32 8)
  %202 = load %struct.sd*, %struct.sd** %4, align 8
  %203 = getelementptr inbounds %struct.sd, %struct.sd* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @SENSOR_LT168G, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %144
  %208 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %209 = call i32 @reg_r(%struct.gspca_dev* %208, i32 128)
  store i32 %209, i32* %8, align 4
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %211 = load i32, i32* @D_STREAM, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %210, i32 %211, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 128, i32 %212)
  %214 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %215 = call i32 @reg_w(%struct.gspca_dev* %214, i32 27776)
  br label %216

216:                                              ; preds = %207, %144
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %218 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %219 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %217, i32 208, i32 %220, i32 4)
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %223 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %224 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %222, i32 199, i32 %225, i32 4)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %228 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %229 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %227, i32 224, i32 %230, i32 4)
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %216, %79, %47
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w_ixbuf(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
