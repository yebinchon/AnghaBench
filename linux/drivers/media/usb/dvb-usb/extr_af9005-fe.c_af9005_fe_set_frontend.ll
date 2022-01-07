; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.af9005_fe_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)*, i32* }
%struct.dvb_frontend.0 = type opaque
%struct.af9005_fe_state = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"af9005_fe_set_frontend freq %d bw %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Tuner not attached\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"turn off led\0A\00", align 1
@XD_MP2IF_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"set FCW to default value\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"restore original TOPs\0A\00", align 1
@xd_p_reg_aagc_rf_top_numerator_9_8 = common dso_local global i32 0, align 4
@xd_p_reg_aagc_rf_top_numerator_7_0 = common dso_local global i32 0, align 4
@xd_p_reg_aagc_if_top_numerator_9_8 = common dso_local global i32 0, align 4
@xd_p_reg_aagc_if_top_numerator_7_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"select bandwidth\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"clear easy mode flag\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"set unplug threshold to original value\0A\00", align 1
@xd_p_reg_unplug_th = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"set tuner\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"trigger ofsm\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"clear retrain and freeze flag\0A\00", align 1
@xd_p_reg_api_retrain_request = common dso_local global i32 0, align 4
@reg_api_retrain_request_pos = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9005_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.af9005_fe_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %14, align 8
  store %struct.af9005_fe_state* %15, %struct.af9005_fe_state** %5, align 8
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %259

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %36 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @af9005_led_control(i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %259

43:                                               ; preds = %33
  %44 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %45 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XD_MP2IF_MISC, align 4
  %48 = call i32 @af9005_write_register_bits(i32 %46, i32 %47, i32 2, i32 1, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %259

53:                                               ; preds = %43
  %54 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %56 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  %60 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %61 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 65280
  %64 = ashr i32 %63, 8
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  %66 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %67 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 16711680
  %70 = ashr i32 %69, 16
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %10, align 8
  %72 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %73 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @af9005_write_ofdm_register(i32 %74, i32 44570, i64 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %53
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %259

81:                                               ; preds = %53
  %82 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %83 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @af9005_write_ofdm_register(i32 %84, i32 44569, i64 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %259

91:                                               ; preds = %81
  %92 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %93 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @af9005_write_ofdm_register(i32 %94, i32 44568, i64 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %259

101:                                              ; preds = %91
  %102 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %104 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @xd_p_reg_aagc_rf_top_numerator_9_8, align 4
  %107 = load i32, i32* @xd_p_reg_aagc_rf_top_numerator_7_0, align 4
  %108 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %109 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @af9005_write_word_agc(i32 %105, i32 %106, i32 %107, i32 0, i32 2, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %259

116:                                              ; preds = %101
  %117 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %118 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @xd_p_reg_aagc_if_top_numerator_9_8, align 4
  %121 = load i32, i32* @xd_p_reg_aagc_if_top_numerator_7_0, align 4
  %122 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %123 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @af9005_write_word_agc(i32 %119, i32 %120, i32 %121, i32 0, i32 2, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %259

130:                                              ; preds = %116
  %131 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %132 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %135 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @af9005_write_word_agc(i32 %133, i32 42510, i32 42506, i32 4, i32 2, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %259

142:                                              ; preds = %130
  %143 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %144 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %147 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @af9005_write_word_agc(i32 %145, i32 42510, i32 42507, i32 6, i32 2, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %259

154:                                              ; preds = %142
  %155 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %157 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @af9005_fe_select_bw(i32 %158, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %259

167:                                              ; preds = %154
  %168 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %169 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @af9005_fe_program_cfoe(i32 %170, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %2, align 4
  br label %259

179:                                              ; preds = %167
  %180 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %181 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %182 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @af9005_write_ofdm_register(i32 %183, i32 44797, i64 0)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  br label %259

189:                                              ; preds = %179
  %190 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %191 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %192 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @xd_p_reg_unplug_th, align 4
  %195 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %196 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %195, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @af9005_write_ofdm_register(i32 %193, i32 %194, i64 %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %189
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %2, align 4
  br label %259

203:                                              ; preds = %189
  %204 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %205 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %206 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %208, align 8
  %210 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %211 = bitcast %struct.dvb_frontend* %210 to %struct.dvb_frontend.0*
  %212 = call i32 %209(%struct.dvb_frontend.0* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %203
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %2, align 4
  br label %259

217:                                              ; preds = %203
  %218 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %219 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %220 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @af9005_write_tuner_registers(i32 %221, i32 65535, i64* %7, i32 1)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %217
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %2, align 4
  br label %259

227:                                              ; preds = %217
  %228 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %229 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %230 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @xd_p_reg_api_retrain_request, align 4
  %233 = load i32, i32* @reg_api_retrain_request_pos, align 4
  %234 = call i32 @af9005_write_register_bits(i32 %231, i32 %232, i32 %233, i32 2, i32 0)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %227
  %238 = load i32, i32* %6, align 4
  store i32 %238, i32* %2, align 4
  br label %259

239:                                              ; preds = %227
  %240 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %241 = call i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend* %240)
  %242 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %243 = call i32 @af9005_reset_post_viterbi(%struct.dvb_frontend* %242)
  %244 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %245 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %244, i32 0, i32 7
  store i64 0, i64* %245, align 8
  %246 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %247 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %246, i32 0, i32 6
  store i64 0, i64* %247, align 8
  %248 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %249 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %248, i32 0, i32 5
  store i64 0, i64* %249, align 8
  %250 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %251 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %250, i32 0, i32 4
  store i64 0, i64* %251, align 8
  %252 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %253 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %252, i32 0, i32 3
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* @jiffies, align 4
  %255 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %256 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  %258 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %257, i32 0, i32 1
  store i32 -1, i32* %258, align 4
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %239, %237, %225, %215, %201, %187, %177, %165, %152, %140, %128, %114, %99, %89, %79, %51, %41, %29
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @af9005_led_control(i32, i32) #1

declare dso_local i32 @af9005_write_register_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @af9005_write_ofdm_register(i32, i32, i64) #1

declare dso_local i32 @af9005_write_word_agc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @af9005_fe_select_bw(i32, i32) #1

declare dso_local i32 @af9005_fe_program_cfoe(i32, i32) #1

declare dso_local i32 @af9005_write_tuner_registers(i32, i32, i64*, i32) #1

declare dso_local i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend*) #1

declare dso_local i32 @af9005_reset_post_viterbi(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
