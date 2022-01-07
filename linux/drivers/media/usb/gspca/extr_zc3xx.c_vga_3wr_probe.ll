; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_vga_3wr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_vga_3wr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"probe 3wr vga 1 0x%04x\0A\00", align 1
@chipset_revision_sensor = common dso_local global %struct.TYPE_3__* null, align 8
@SENSOR_PB0330 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"probe 3wr vga type 0a\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"probe 3wr vga type %02x\0A\00", align 1
@SENSOR_GC0305 = common dso_local global i32 0, align 4
@SENSOR_OV7620 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"probe 3wr vga 2 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"sensor PO2030 rev 0x%02x\0A\00", align 1
@SENSOR_PO2030 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"probe 3wr vga type 0a ? ret: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @vga_3wr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_3wr_probe(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 2, i32 16)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @reg_r(%struct.gspca_dev* %12, i32 16)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @reg_w(%struct.gspca_dev* %14, i32 1, i32 0)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @reg_w(%struct.gspca_dev* %16, i32 0, i32 16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 1, i32 1)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @reg_w(%struct.gspca_dev* %20, i32 145, i32 139)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @reg_w(%struct.gspca_dev* %22, i32 3, i32 18)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @reg_w(%struct.gspca_dev* %24, i32 1, i32 18)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @reg_w(%struct.gspca_dev* %26, i32 5, i32 18)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @i2c_read(%struct.gspca_dev* %28, i32 20)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 17, i32* %2, align 4
  br label %247

33:                                               ; preds = %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @i2c_read(%struct.gspca_dev* %34, i32 21)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 17, i32* %2, align 4
  br label %247

39:                                               ; preds = %33
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @i2c_read(%struct.gspca_dev* %40, i32 22)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 17, i32* %2, align 4
  br label %247

45:                                               ; preds = %39
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @reg_w(%struct.gspca_dev* %46, i32 2, i32 16)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @reg_r(%struct.gspca_dev* %48, i32 11)
  %50 = shl i32 %49, 8
  store i32 %50, i32* %6, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = call i32 @reg_r(%struct.gspca_dev* %51, i32 10)
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = load i32, i32* @D_PROBE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = call i32 @reg_r(%struct.gspca_dev* %59, i32 16)
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 65280
  %63 = icmp eq i32 %62, 25600
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  store i32 2, i32* %2, align 4
  br label %247

65:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %94, %65
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chipset_revision_sensor, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chipset_revision_sensor, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.sd*, %struct.sd** %4, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = load i32, i32* @SENSOR_PB0330, align 4
  %86 = call i32 @send_unknown(%struct.gspca_dev* %84, i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chipset_revision_sensor, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %2, align 4
  br label %247

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %66

97:                                               ; preds = %66
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @reg_w(%struct.gspca_dev* %98, i32 1, i32 0)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = call i32 @reg_w(%struct.gspca_dev* %100, i32 1, i32 1)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = call i32 @reg_w(%struct.gspca_dev* %102, i32 221, i32 139)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = call i32 @reg_w(%struct.gspca_dev* %104, i32 10, i32 16)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %107 = call i32 @reg_w(%struct.gspca_dev* %106, i32 3, i32 18)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %109 = call i32 @reg_w(%struct.gspca_dev* %108, i32 1, i32 18)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = call i32 @i2c_read(%struct.gspca_dev* %110, i32 0)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %97
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %116 = load i32, i32* @D_PROBE, align 4
  %117 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %115, i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  br label %247

118:                                              ; preds = %97
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %120 = call i32 @reg_w(%struct.gspca_dev* %119, i32 1, i32 0)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %122 = call i32 @reg_w(%struct.gspca_dev* %121, i32 1, i32 1)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = call i32 @reg_w(%struct.gspca_dev* %123, i32 152, i32 139)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %126 = call i32 @reg_w(%struct.gspca_dev* %125, i32 1, i32 16)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %128 = call i32 @reg_w(%struct.gspca_dev* %127, i32 3, i32 18)
  %129 = call i32 @msleep(i32 2)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @reg_w(%struct.gspca_dev* %130, i32 1, i32 18)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %133 = call i32 @i2c_read(%struct.gspca_dev* %132, i32 0)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %118
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %138 = load i32, i32* @D_PROBE, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %137, i32 %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 17
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 771, i32* %2, align 4
  br label %247

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 41
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %149 = load i32, i32* @SENSOR_GC0305, align 4
  %150 = call i32 @send_unknown(%struct.gspca_dev* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %247

153:                                              ; preds = %118
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %155 = call i32 @reg_w(%struct.gspca_dev* %154, i32 1, i32 0)
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %157 = call i32 @reg_w(%struct.gspca_dev* %156, i32 1, i32 1)
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %159 = call i32 @reg_w(%struct.gspca_dev* %158, i32 161, i32 139)
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %161 = call i32 @reg_w(%struct.gspca_dev* %160, i32 8, i32 141)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %163 = call i32 @reg_w(%struct.gspca_dev* %162, i32 6, i32 16)
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %165 = call i32 @reg_w(%struct.gspca_dev* %164, i32 1, i32 18)
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %167 = call i32 @reg_w(%struct.gspca_dev* %166, i32 5, i32 18)
  %168 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %169 = call i32 @i2c_read(%struct.gspca_dev* %168, i32 28)
  %170 = icmp eq i32 %169, 127
  br i1 %170, label %171, label %179

171:                                              ; preds = %153
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %173 = call i32 @i2c_read(%struct.gspca_dev* %172, i32 29)
  %174 = icmp eq i32 %173, 162
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %177 = load i32, i32* @SENSOR_OV7620, align 4
  %178 = call i32 @send_unknown(%struct.gspca_dev* %176, i32 %177)
  store i32 6, i32* %2, align 4
  br label %247

179:                                              ; preds = %171, %153
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %181 = call i32 @reg_w(%struct.gspca_dev* %180, i32 1, i32 0)
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %183 = call i32 @reg_w(%struct.gspca_dev* %182, i32 0, i32 2)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %185 = call i32 @reg_w(%struct.gspca_dev* %184, i32 1, i32 16)
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %187 = call i32 @reg_w(%struct.gspca_dev* %186, i32 1, i32 1)
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %189 = call i32 @reg_w(%struct.gspca_dev* %188, i32 238, i32 139)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %191 = call i32 @reg_w(%struct.gspca_dev* %190, i32 3, i32 18)
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %193 = call i32 @reg_w(%struct.gspca_dev* %192, i32 1, i32 18)
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %195 = call i32 @reg_w(%struct.gspca_dev* %194, i32 5, i32 18)
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %197 = call i32 @i2c_read(%struct.gspca_dev* %196, i32 0)
  %198 = shl i32 %197, 8
  store i32 %198, i32* %6, align 4
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %200 = call i32 @i2c_read(%struct.gspca_dev* %199, i32 1)
  %201 = load i32, i32* %6, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %6, align 4
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %204 = load i32, i32* @D_PROBE, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %203, i32 %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %6, align 4
  %208 = icmp eq i32 %207, 8240
  br i1 %208, label %209, label %220

209:                                              ; preds = %179
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %211 = call i32 @i2c_read(%struct.gspca_dev* %210, i32 2)
  store i32 %211, i32* %7, align 4
  %212 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %213 = load i32, i32* @D_PROBE, align 4
  %214 = load i32, i32* %7, align 4
  %215 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %212, i32 %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %214)
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %217 = load i32, i32* @SENSOR_PO2030, align 4
  %218 = call i32 @send_unknown(%struct.gspca_dev* %216, i32 %217)
  %219 = load i32, i32* %6, align 4
  store i32 %219, i32* %2, align 4
  br label %247

220:                                              ; preds = %179
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %222 = call i32 @reg_w(%struct.gspca_dev* %221, i32 1, i32 0)
  %223 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %224 = call i32 @reg_w(%struct.gspca_dev* %223, i32 10, i32 16)
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %226 = call i32 @reg_w(%struct.gspca_dev* %225, i32 211, i32 139)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %228 = call i32 @reg_w(%struct.gspca_dev* %227, i32 1, i32 1)
  %229 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %230 = call i32 @reg_w(%struct.gspca_dev* %229, i32 3, i32 18)
  %231 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %232 = call i32 @reg_w(%struct.gspca_dev* %231, i32 1, i32 18)
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %234 = call i32 @reg_w(%struct.gspca_dev* %233, i32 5, i32 18)
  %235 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %236 = call i32 @reg_w(%struct.gspca_dev* %235, i32 211, i32 139)
  %237 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %238 = call i32 @i2c_read(%struct.gspca_dev* %237, i32 1)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %220
  %242 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %243 = load i32, i32* @D_PROBE, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %242, i32 %243, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %244)
  store i32 22, i32* %2, align 4
  br label %247

246:                                              ; preds = %220
  store i32 -1, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %241, %209, %175, %151, %143, %114, %80, %64, %44, %38, %32
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @i2c_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @send_unknown(%struct.gspca_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
