; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i8*, i8*, i32, i32 }

@xd_g_reg_tpsd_const = common dso_local global i32 0, align 4
@reg_tpsd_const_pos = common dso_local global i32 0, align 4
@reg_tpsd_const_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"===== fe_get_frontend_legacy = =============\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CONSTELLATION \00", align 1
@QPSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"QPSK\0A\00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"QAM_16\0A\00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"QAM_64\0A\00", align 1
@xd_g_reg_tpsd_hier = common dso_local global i32 0, align 4
@reg_tpsd_hier_pos = common dso_local global i32 0, align 4
@reg_tpsd_hier_len = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"HIERARCHY \00", align 1
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"NONE\0A\00", align 1
@HIERARCHY_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@HIERARCHY_2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@HIERARCHY_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"4\0A\00", align 1
@xd_g_reg_dec_pri = common dso_local global i32 0, align 4
@reg_dec_pri_pos = common dso_local global i32 0, align 4
@reg_dec_pri_len = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"PRIORITY %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@xd_g_reg_tpsd_hpcr = common dso_local global i32 0, align 4
@reg_tpsd_hpcr_pos = common dso_local global i32 0, align 4
@reg_tpsd_hpcr_len = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"CODERATE HP \00", align 1
@FEC_1_2 = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"FEC_1_2\0A\00", align 1
@FEC_2_3 = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"FEC_2_3\0A\00", align 1
@FEC_3_4 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"FEC_3_4\0A\00", align 1
@FEC_5_6 = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"FEC_5_6\0A\00", align 1
@FEC_7_8 = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"FEC_7_8\0A\00", align 1
@xd_g_reg_tpsd_lpcr = common dso_local global i32 0, align 4
@reg_tpsd_lpcr_pos = common dso_local global i32 0, align 4
@reg_tpsd_lpcr_len = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"CODERATE LP \00", align 1
@xd_g_reg_tpsd_gi = common dso_local global i32 0, align 4
@reg_tpsd_gi_pos = common dso_local global i32 0, align 4
@reg_tpsd_gi_len = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"GUARD INTERVAL \00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"1_32\0A\00", align 1
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"1_16\0A\00", align 1
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"1_8\0A\00", align 1
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"1_4\0A\00", align 1
@xd_g_reg_tpsd_txmod = common dso_local global i32 0, align 4
@reg_tpsd_txmod_pos = common dso_local global i32 0, align 4
@reg_tpsd_txmod_len = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"TRANSMISSION MODE \00", align 1
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"2K\0A\00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"8K\0A\00", align 1
@xd_g_reg_bw = common dso_local global i32 0, align 4
@reg_bw_pos = common dso_local global i32 0, align 4
@reg_bw_len = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c"BANDWIDTH \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"6\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"7\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @af9005_fe_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.af9005_fe_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  store %struct.af9005_fe_state* %11, %struct.af9005_fe_state** %6, align 8
  %12 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %13 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @xd_g_reg_tpsd_const, align 4
  %16 = load i32, i32* @reg_tpsd_const_pos, align 4
  %17 = load i32, i32* @reg_tpsd_const_len, align 4
  %18 = call i32 @af9005_read_register_bits(i32 %14, i32 %15, i32 %16, i32 %17, i32* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %257

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %42 [
    i32 0, label %27
    i32 1, label %32
    i32 2, label %37
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @QPSK, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* @QAM_16, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %42

37:                                               ; preds = %23
  %38 = load i32, i32* @QAM_64, align 4
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %23, %37, %32, %27
  %43 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %44 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @xd_g_reg_tpsd_hier, align 4
  %47 = load i32, i32* @reg_tpsd_hier_pos, align 4
  %48 = load i32, i32* @reg_tpsd_hier_len, align 4
  %49 = call i32 @af9005_read_register_bits(i32 %45, i32 %46, i32 %47, i32 %48, i32* %8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %257

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %77 [
    i32 0, label %57
    i32 1, label %62
    i32 2, label %67
    i32 3, label %72
  ]

57:                                               ; preds = %54
  %58 = load i32, i32* @HIERARCHY_NONE, align 4
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %77

62:                                               ; preds = %54
  %63 = load i32, i32* @HIERARCHY_1, align 4
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %77

67:                                               ; preds = %54
  %68 = load i32, i32* @HIERARCHY_2, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %77

72:                                               ; preds = %54
  %73 = load i32, i32* @HIERARCHY_4, align 4
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %77

77:                                               ; preds = %54, %72, %67, %62, %57
  %78 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %79 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @xd_g_reg_dec_pri, align 4
  %82 = load i32, i32* @reg_dec_pri_pos, align 4
  %83 = load i32, i32* @reg_dec_pri_len, align 4
  %84 = call i32 @af9005_read_register_bits(i32 %80, i32 %81, i32 %82, i32 %83, i32* %8)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %257

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %94 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %93)
  %95 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %96 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @xd_g_reg_tpsd_hpcr, align 4
  %99 = load i32, i32* @reg_tpsd_hpcr_pos, align 4
  %100 = load i32, i32* @reg_tpsd_hpcr_len, align 4
  %101 = call i32 @af9005_read_register_bits(i32 %97, i32 %98, i32 %99, i32 %100, i32* %8)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %257

106:                                              ; preds = %89
  %107 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %108 = load i32, i32* %8, align 4
  switch i32 %108, label %134 [
    i32 0, label %109
    i32 1, label %114
    i32 2, label %119
    i32 3, label %124
    i32 4, label %129
  ]

109:                                              ; preds = %106
  %110 = load i8*, i8** @FEC_1_2, align 8
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %134

114:                                              ; preds = %106
  %115 = load i8*, i8** @FEC_2_3, align 8
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %134

119:                                              ; preds = %106
  %120 = load i8*, i8** @FEC_3_4, align 8
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %134

124:                                              ; preds = %106
  %125 = load i8*, i8** @FEC_5_6, align 8
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %134

129:                                              ; preds = %106
  %130 = load i8*, i8** @FEC_7_8, align 8
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %134

134:                                              ; preds = %106, %129, %124, %119, %114, %109
  %135 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %136 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @xd_g_reg_tpsd_lpcr, align 4
  %139 = load i32, i32* @reg_tpsd_lpcr_pos, align 4
  %140 = load i32, i32* @reg_tpsd_lpcr_len, align 4
  %141 = call i32 @af9005_read_register_bits(i32 %137, i32 %138, i32 %139, i32 %140, i32* %8)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %257

146:                                              ; preds = %134
  %147 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %148 = load i32, i32* %8, align 4
  switch i32 %148, label %174 [
    i32 0, label %149
    i32 1, label %154
    i32 2, label %159
    i32 3, label %164
    i32 4, label %169
  ]

149:                                              ; preds = %146
  %150 = load i8*, i8** @FEC_1_2, align 8
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %174

154:                                              ; preds = %146
  %155 = load i8*, i8** @FEC_2_3, align 8
  %156 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %157 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %174

159:                                              ; preds = %146
  %160 = load i8*, i8** @FEC_3_4, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 3
  store i8* %160, i8** %162, align 8
  %163 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %174

164:                                              ; preds = %146
  %165 = load i8*, i8** @FEC_5_6, align 8
  %166 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %167 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %174

169:                                              ; preds = %146
  %170 = load i8*, i8** @FEC_7_8, align 8
  %171 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %174

174:                                              ; preds = %146, %169, %164, %159, %154, %149
  %175 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %176 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @xd_g_reg_tpsd_gi, align 4
  %179 = load i32, i32* @reg_tpsd_gi_pos, align 4
  %180 = load i32, i32* @reg_tpsd_gi_len, align 4
  %181 = call i32 @af9005_read_register_bits(i32 %177, i32 %178, i32 %179, i32 %180, i32* %8)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %3, align 4
  br label %257

186:                                              ; preds = %174
  %187 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %188 = load i32, i32* %8, align 4
  switch i32 %188, label %209 [
    i32 0, label %189
    i32 1, label %194
    i32 2, label %199
    i32 3, label %204
  ]

189:                                              ; preds = %186
  %190 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %191 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %192 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %209

194:                                              ; preds = %186
  %195 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %196 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %197 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %209

199:                                              ; preds = %186
  %200 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %201 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %202 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %209

204:                                              ; preds = %186
  %205 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %206 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %207 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %209

209:                                              ; preds = %186, %204, %199, %194, %189
  %210 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %211 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @xd_g_reg_tpsd_txmod, align 4
  %214 = load i32, i32* @reg_tpsd_txmod_pos, align 4
  %215 = load i32, i32* @reg_tpsd_txmod_len, align 4
  %216 = call i32 @af9005_read_register_bits(i32 %212, i32 %213, i32 %214, i32 %215, i32* %8)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %3, align 4
  br label %257

221:                                              ; preds = %209
  %222 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %223 = load i32, i32* %8, align 4
  switch i32 %223, label %234 [
    i32 0, label %224
    i32 1, label %229
  ]

224:                                              ; preds = %221
  %225 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %226 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %227 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %234

229:                                              ; preds = %221
  %230 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %231 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %232 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %234

234:                                              ; preds = %221, %229, %224
  %235 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %236 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @xd_g_reg_bw, align 4
  %239 = load i32, i32* @reg_bw_pos, align 4
  %240 = load i32, i32* @reg_bw_len, align 4
  %241 = call i32 @af9005_read_register_bits(i32 %237, i32 %238, i32 %239, i32 %240, i32* %8)
  store i32 %241, i32* %7, align 4
  %242 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %243 = load i32, i32* %8, align 4
  switch i32 %243, label %256 [
    i32 0, label %244
    i32 1, label %248
    i32 2, label %252
  ]

244:                                              ; preds = %234
  %245 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %246 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %245, i32 0, i32 0
  store i32 6000000, i32* %246, align 8
  %247 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %256

248:                                              ; preds = %234
  %249 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %250 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %249, i32 0, i32 0
  store i32 7000000, i32* %250, align 8
  %251 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  br label %256

252:                                              ; preds = %234
  %253 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %254 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %253, i32 0, i32 0
  store i32 8000000, i32* %254, align 8
  %255 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  br label %256

256:                                              ; preds = %234, %252, %248, %244
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %219, %184, %144, %104, %87, %52, %21
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @af9005_read_register_bits(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deb_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
