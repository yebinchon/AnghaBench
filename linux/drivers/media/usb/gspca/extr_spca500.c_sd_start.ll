; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca500.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca500.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32, i32 }

@QUALITY = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Spca500 Sensor Address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Spca500 curr_mode: %d Xmult: 0x%02x, Ymult: 0x%02x\00", align 1
@qtable_creative_pccam = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"spca50x_setup_qtable failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"reg_r_wait() failed\0A\00", align 1
@spca500_visual_defaults = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to enable drop packet\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"spca500_full_reset failed\0A\00", align 1
@qtable_kodak_ez200 = common dso_local global i32 0, align 4
@qtable_pocketdv = common dso_local global i32 0, align 4
@Clicksmart510_defaults = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @jpeg_define(i32 %12, i32 %16, i32 %20, i32 34)
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @QUALITY, align 4
  %26 = call i32 @jpeg_set_qual(i32 %24, i32 %25)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 134
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 22, i32* %6, align 4
  store i32 18, i32* %7, align 4
  br label %33

32:                                               ; preds = %1
  store i32 40, i32* %6, align 4
  store i32 30, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 35332, i32 1)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = load i32, i32* @D_STREAM, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %36, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @D_STREAM, align 4
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %44, i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %327 [
    i32 134, label %55
    i32 139, label %144
    i32 136, label %144
    i32 135, label %197
    i32 140, label %244
    i32 138, label %244
    i32 141, label %244
    i32 137, label %244
    i32 131, label %244
    i32 129, label %244
    i32 130, label %244
    i32 128, label %244
    i32 142, label %244
    i32 132, label %286
    i32 133, label %286
  ]

55:                                               ; preds = %33
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @spca500_setmode(%struct.gspca_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @reg_w(%struct.gspca_dev* %60, i32 0, i32 34058, i32 1)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @reg_w(%struct.gspca_dev* %62, i32 0, i32 34944, i32 3)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = load i32, i32* @qtable_creative_pccam, align 4
  %66 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %64, i32 0, i32 34816, i32 34880, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = call i32 @gspca_err(%struct.gspca_dev* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %55
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @reg_w(%struct.gspca_dev* %73, i32 0, i32 34570, i32 4)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = call i32 @reg_w(%struct.gspca_dev* %75, i32 0, i32 32768, i32 4)
  %77 = call i32 @msleep(i32 500)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @reg_r_wait(%struct.gspca_dev* %78, i32 0, i32 32768, i32 68)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = call i32 @gspca_err(%struct.gspca_dev* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %72
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @reg_r(%struct.gspca_dev* %85, i32 33131, i32 1)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @reg_w(%struct.gspca_dev* %92, i32 0, i32 33131, i32 %93)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @spca500_synch310(%struct.gspca_dev* %95)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = load i32, i32* @spca500_visual_defaults, align 4
  %99 = call i32 @write_vector(%struct.gspca_dev* %97, i32 %98)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @spca500_setmode(%struct.gspca_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @reg_w(%struct.gspca_dev* %104, i32 0, i32 34058, i32 1)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %84
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = call i32 @gspca_err(%struct.gspca_dev* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %84
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = call i32 @reg_w(%struct.gspca_dev* %112, i32 0, i32 34944, i32 3)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %115 = load i32, i32* @qtable_creative_pccam, align 4
  %116 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %114, i32 0, i32 34816, i32 34880, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = call i32 @gspca_err(%struct.gspca_dev* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %111
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @reg_w(%struct.gspca_dev* %123, i32 0, i32 34570, i32 4)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = call i32 @reg_w(%struct.gspca_dev* %125, i32 0, i32 32768, i32 4)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %128 = call i32 @reg_r_wait(%struct.gspca_dev* %127, i32 0, i32 32768, i32 68)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %132 = call i32 @gspca_err(%struct.gspca_dev* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %122
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = call i32 @reg_r(%struct.gspca_dev* %134, i32 33131, i32 1)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %5, align 4
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @reg_w(%struct.gspca_dev* %141, i32 0, i32 33131, i32 %142)
  br label %327

144:                                              ; preds = %33, %33
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %146 = call i32 @spca500_full_reset(%struct.gspca_dev* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %151 = call i32 @gspca_err(%struct.gspca_dev* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = call i32 @reg_w(%struct.gspca_dev* %153, i32 0, i32 34058, i32 1)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %159 = call i32 @gspca_err(%struct.gspca_dev* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %162 = call i32 @reg_w(%struct.gspca_dev* %161, i32 0, i32 34944, i32 3)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = load i32, i32* @qtable_creative_pccam, align 4
  %165 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %163, i32 0, i32 34816, i32 34880, i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = call i32 @gspca_err(%struct.gspca_dev* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %160
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @spca500_setmode(%struct.gspca_dev* %172, i32 %173, i32 %174)
  %176 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %177 = call i32 @reg_w(%struct.gspca_dev* %176, i32 32, i32 1, i32 4)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = call i32 @reg_w(%struct.gspca_dev* %178, i32 0, i32 32768, i32 4)
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = call i32 @reg_r_wait(%struct.gspca_dev* %180, i32 0, i32 32768, i32 68)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %171
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = call i32 @gspca_err(%struct.gspca_dev* %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %171
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = call i32 @reg_r(%struct.gspca_dev* %187, i32 33131, i32 1)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %5, align 4
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @reg_w(%struct.gspca_dev* %194, i32 0, i32 33131, i32 %195)
  br label %327

197:                                              ; preds = %33
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %199 = call i32 @spca500_full_reset(%struct.gspca_dev* %198)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %204 = call i32 @gspca_err(%struct.gspca_dev* %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %197
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %207 = call i32 @reg_w(%struct.gspca_dev* %206, i32 0, i32 34058, i32 1)
  %208 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %209 = call i32 @reg_w(%struct.gspca_dev* %208, i32 0, i32 34944, i32 0)
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %211 = load i32, i32* @qtable_kodak_ez200, align 4
  %212 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %210, i32 0, i32 34816, i32 34880, i32 %211)
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %205
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %217 = call i32 @gspca_err(%struct.gspca_dev* %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %205
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @spca500_setmode(%struct.gspca_dev* %219, i32 %220, i32 %221)
  %223 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %224 = call i32 @reg_w(%struct.gspca_dev* %223, i32 32, i32 1, i32 4)
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %226 = call i32 @reg_w(%struct.gspca_dev* %225, i32 0, i32 32768, i32 4)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %228 = call i32 @reg_r_wait(%struct.gspca_dev* %227, i32 0, i32 32768, i32 68)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %218
  %231 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %232 = call i32 @gspca_err(%struct.gspca_dev* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %218
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = call i32 @reg_r(%struct.gspca_dev* %234, i32 33131, i32 1)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %237 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %5, align 4
  %241 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @reg_w(%struct.gspca_dev* %241, i32 0, i32 33131, i32 %242)
  br label %327

244:                                              ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = call i32 @spca500_reinit(%struct.gspca_dev* %245)
  %247 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %248 = call i32 @reg_w(%struct.gspca_dev* %247, i32 0, i32 3329, i32 1)
  %249 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %250 = call i32 @reg_w(%struct.gspca_dev* %249, i32 0, i32 34058, i32 1)
  %251 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %252 = load i32, i32* @qtable_pocketdv, align 4
  %253 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %251, i32 0, i32 34816, i32 34880, i32 %252)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %244
  %257 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %258 = call i32 @gspca_err(%struct.gspca_dev* %257, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %259

259:                                              ; preds = %256, %244
  %260 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %261 = call i32 @reg_w(%struct.gspca_dev* %260, i32 0, i32 34944, i32 2)
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %263 = call i32 @reg_w(%struct.gspca_dev* %262, i32 0, i32 32778, i32 0)
  %264 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %265 = call i32 @reg_w(%struct.gspca_dev* %264, i32 0, i32 33295, i32 1)
  %266 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %267 = call i32 @reg_w(%struct.gspca_dev* %266, i32 0, i32 34570, i32 4)
  %268 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @spca500_setmode(%struct.gspca_dev* %268, i32 %269, i32 %270)
  %272 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %273 = call i32 @reg_w(%struct.gspca_dev* %272, i32 0, i32 32768, i32 4)
  %274 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %275 = call i32 @reg_r_wait(%struct.gspca_dev* %274, i32 0, i32 32768, i32 68)
  %276 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %277 = call i32 @reg_r(%struct.gspca_dev* %276, i32 33131, i32 1)
  %278 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %279 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %5, align 4
  %283 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @reg_w(%struct.gspca_dev* %283, i32 0, i32 33131, i32 %284)
  br label %327

286:                                              ; preds = %33, %33
  %287 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %288 = call i32 @reg_w(%struct.gspca_dev* %287, i32 2, i32 0, i32 0)
  %289 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %290 = call i32 @reg_w(%struct.gspca_dev* %289, i32 0, i32 34058, i32 1)
  %291 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %292 = load i32, i32* @qtable_creative_pccam, align 4
  %293 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %291, i32 0, i32 34816, i32 34880, i32 %292)
  store i32 %293, i32* %4, align 4
  %294 = load i32, i32* %4, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %286
  %297 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %298 = call i32 @gspca_err(%struct.gspca_dev* %297, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %286
  %300 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %301 = call i32 @reg_w(%struct.gspca_dev* %300, i32 0, i32 34944, i32 3)
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %303 = call i32 @reg_w(%struct.gspca_dev* %302, i32 0, i32 32778, i32 0)
  %304 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %305 = call i32 @reg_w(%struct.gspca_dev* %304, i32 0, i32 34570, i32 4)
  %306 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @spca500_setmode(%struct.gspca_dev* %306, i32 %307, i32 %308)
  %310 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %311 = call i32 @reg_w(%struct.gspca_dev* %310, i32 0, i32 32768, i32 4)
  %312 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %313 = call i32 @reg_r_wait(%struct.gspca_dev* %312, i32 0, i32 32768, i32 68)
  %314 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %315 = call i32 @reg_r(%struct.gspca_dev* %314, i32 33131, i32 1)
  %316 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %317 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %5, align 4
  %321 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %322 = load i32, i32* %5, align 4
  %323 = call i32 @reg_w(%struct.gspca_dev* %321, i32 0, i32 33131, i32 %322)
  %324 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %325 = load i32, i32* @Clicksmart510_defaults, align 4
  %326 = call i32 @write_vector(%struct.gspca_dev* %324, i32 %325)
  br label %327

327:                                              ; preds = %33, %299, %259, %233, %186, %133
  ret i32 0
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, ...) #1

declare dso_local i32 @spca500_setmode(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca50x_setup_qtable(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r_wait(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca500_synch310(%struct.gspca_dev*) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @spca500_full_reset(%struct.gspca_dev*) #1

declare dso_local i32 @spca500_reinit(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
