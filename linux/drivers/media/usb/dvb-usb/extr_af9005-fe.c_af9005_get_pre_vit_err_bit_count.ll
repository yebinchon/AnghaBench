; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_get_pre_vit_err_bit_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_get_pre_vit_err_bit_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i32 }

@xd_r_fec_vtb_ber_rdy = common dso_local global i32 0, align 4
@fec_vtb_ber_rdy_pos = common dso_local global i32 0, align 4
@fec_vtb_ber_rdy_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"viterbi counter not ready\0A\00", align 1
@xd_r_fec_vtb_err_bit_cnt_7_0 = common dso_local global i32 0, align 4
@xd_r_fec_vtb_err_bit_cnt_15_8 = common dso_local global i32 0, align 4
@xd_r_fec_vtb_err_bit_cnt_23_16 = common dso_local global i32 0, align 4
@xd_p_fec_super_frm_unit_7_0 = common dso_local global i32 0, align 4
@xd_p_fec_super_frm_unit_15_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"super frame count 0\0A\00", align 1
@xd_g_reg_tpsd_txmod = common dso_local global i32 0, align 4
@reg_tpsd_txmod_pos = common dso_local global i32 0, align 4
@reg_tpsd_txmod_len = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid fft mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@xd_g_reg_tpsd_const = common dso_local global i32 0, align 4
@reg_tpsd_const_pos = common dso_local global i32 0, align 4
@reg_tpsd_const_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid modulation mode\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"PRE err count %d frame count %d bit count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32*)* @af9005_get_pre_vit_err_bit_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_get_pre_vit_err_bit_count(%struct.dvb_frontend* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.af9005_fe_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %18, align 8
  store %struct.af9005_fe_state* %19, %struct.af9005_fe_state** %8, align 8
  %20 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %21 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @xd_r_fec_vtb_ber_rdy, align 4
  %24 = load i32, i32* @fec_vtb_ber_rdy_pos, align 4
  %25 = load i32, i32* @fec_vtb_ber_rdy_len, align 4
  %26 = call i32 @af9005_read_register_bits(i32 %22, i32 %23, i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %4, align 4
  br label %164

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 101, i32* %4, align 4
  br label %164

36:                                               ; preds = %31
  %37 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %38 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @xd_r_fec_vtb_err_bit_cnt_7_0, align 4
  %41 = call i32 @af9005_read_ofdm_register(i32 %39, i32 %40, i32* %10)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %4, align 4
  br label %164

46:                                               ; preds = %36
  %47 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %48 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @xd_r_fec_vtb_err_bit_cnt_15_8, align 4
  %51 = call i32 @af9005_read_ofdm_register(i32 %49, i32 %50, i32* %11)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %4, align 4
  br label %164

56:                                               ; preds = %46
  %57 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %58 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @xd_r_fec_vtb_err_bit_cnt_23_16, align 4
  %61 = call i32 @af9005_read_ofdm_register(i32 %59, i32 %60, i32* %12)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %4, align 4
  br label %164

66:                                               ; preds = %56
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %69, 8
  %71 = add nsw i32 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %76 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @xd_p_fec_super_frm_unit_7_0, align 4
  %79 = call i32 @af9005_read_ofdm_register(i32 %77, i32 %78, i32* %10)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %4, align 4
  br label %164

84:                                               ; preds = %66
  %85 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %86 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @xd_p_fec_super_frm_unit_15_8, align 4
  %89 = call i32 @af9005_read_ofdm_register(i32 %87, i32 %88, i32* %11)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %4, align 4
  br label %164

94:                                               ; preds = %84
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 %95, 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 102, i32* %4, align 4
  br label %164

103:                                              ; preds = %94
  %104 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %105 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @xd_g_reg_tpsd_txmod, align 4
  %108 = load i32, i32* @reg_tpsd_txmod_pos, align 4
  %109 = load i32, i32* @reg_tpsd_txmod_len, align 4
  %110 = call i32 @af9005_read_register_bits(i32 %106, i32 %107, i32 %108, i32 %109, i32* %9)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %4, align 4
  br label %164

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 1512, i32* %14, align 4
  br label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 6048, i32* %14, align 4
  br label %127

123:                                              ; preds = %119
  %124 = call i32 @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %164

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %118
  %129 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %8, align 8
  %130 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @xd_g_reg_tpsd_const, align 4
  %133 = load i32, i32* @reg_tpsd_const_pos, align 4
  %134 = load i32, i32* @reg_tpsd_const_len, align 4
  %135 = call i32 @af9005_read_register_bits(i32 %131, i32 %132, i32 %133, i32 %134, i32* %9)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %4, align 4
  br label %164

140:                                              ; preds = %128
  %141 = load i32, i32* %9, align 4
  switch i32 %141, label %145 [
    i32 0, label %142
    i32 1, label %143
    i32 2, label %144
  ]

142:                                              ; preds = %140
  store i32 2, i32* %15, align 4
  br label %149

143:                                              ; preds = %140
  store i32 4, i32* %15, align 4
  br label %149

144:                                              ; preds = %140
  store i32 6, i32* %15, align 4
  br label %149

145:                                              ; preds = %140
  %146 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %164

149:                                              ; preds = %144, %143, %142
  %150 = load i32, i32* %13, align 4
  %151 = mul nsw i32 %150, 68
  %152 = mul nsw i32 %151, 4
  %153 = load i32, i32* %14, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %15, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32*, i32** %7, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %160, i32 %162)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %149, %145, %138, %123, %113, %101, %92, %82, %64, %54, %44, %34, %29
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @af9005_read_register_bits(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @af9005_read_ofdm_register(i32, i32, i32*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
