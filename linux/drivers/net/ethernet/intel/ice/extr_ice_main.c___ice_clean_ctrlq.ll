; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c___ice_clean_ctrlq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c___ice_clean_ctrlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_7__*, i32, %struct.ice_hw }
%struct.TYPE_7__ = type { i32 }
%struct.ice_hw = type { %struct.ice_ctl_q_info, %struct.ice_ctl_q_info }
%struct.ice_ctl_q_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ice_rq_event_info = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@__ICE_RESET_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Admin\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Mailbox\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown control queue type 0x%x\0A\00", align 1
@PF_FW_ARQLEN_ARQVFE_M = common dso_local global i32 0, align 4
@PF_FW_ARQLEN_ARQOVFL_M = common dso_local global i32 0, align 4
@PF_FW_ARQLEN_ARQCRIT_M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s Receive Queue VF Error detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s Receive Queue Overflow Error detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s Receive Queue Critical Error detected\0A\00", align 1
@PF_FW_ATQLEN_ATQVFE_M = common dso_local global i32 0, align 4
@PF_FW_ATQLEN_ATQOVFL_M = common dso_local global i32 0, align 4
@PF_FW_ATQLEN_ATQCRIT_M = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s Send Queue VF Error detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s Send Queue Overflow Error detected\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s Send Queue Critical Error detected\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_AQ_NO_WORK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"%s Receive Queue event error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Could not handle link event\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s Receive Queue unknown event 0x%04x ignored\0A\00", align 1
@ICE_DFLT_IRQ_WORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i32)* @__ice_clean_ctrlq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ice_clean_ctrlq(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_rq_event_info, align 4
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca %struct.ice_ctl_q_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 2
  store %struct.ice_hw* %17, %struct.ice_hw** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @__ICE_RESET_FAILED, align 4
  %19 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %291

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %33 [
    i32 133, label %27
    i32 132, label %30
  ]

27:                                               ; preds = %25
  %28 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %28, i32 0, i32 1
  store %struct.ice_ctl_q_info* %29, %struct.ice_ctl_q_info** %8, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %40

30:                                               ; preds = %25
  %31 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %32 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %31, i32 0, i32 0
  store %struct.ice_ctl_q_info* %32, %struct.ice_ctl_q_info** %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %40

33:                                               ; preds = %25
  %34 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %35 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %291

40:                                               ; preds = %30, %27
  %41 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %42 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %8, align 8
  %43 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rd32(%struct.ice_hw* %41, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @PF_FW_ARQLEN_ARQVFE_M, align 4
  %49 = load i32, i32* @PF_FW_ARQLEN_ARQOVFL_M, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PF_FW_ARQLEN_ARQCRIT_M, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %47, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %113

55:                                               ; preds = %40
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @PF_FW_ARQLEN_ARQVFE_M, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %63 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @PF_FW_ARQLEN_ARQOVFL_M, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %75 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @PF_FW_ARQLEN_ARQCRIT_M, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %87 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* @PF_FW_ARQLEN_ARQVFE_M, align 4
  %94 = load i32, i32* @PF_FW_ARQLEN_ARQOVFL_M, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PF_FW_ARQLEN_ARQCRIT_M, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %92
  %105 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %106 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %8, align 8
  %107 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @wr32(%struct.ice_hw* %105, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %92
  br label %113

113:                                              ; preds = %112, %40
  %114 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %115 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %8, align 8
  %116 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @rd32(%struct.ice_hw* %114, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @PF_FW_ATQLEN_ATQVFE_M, align 4
  %122 = load i32, i32* @PF_FW_ATQLEN_ATQOVFL_M, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PF_FW_ATQLEN_ATQCRIT_M, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %120, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %186

128:                                              ; preds = %113
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @PF_FW_ATQLEN_ATQVFE_M, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %136 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @PF_FW_ATQLEN_ATQOVFL_M, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %148 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %146, %141
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @PF_FW_ATQLEN_ATQCRIT_M, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %160 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %158, %153
  %166 = load i32, i32* @PF_FW_ATQLEN_ATQVFE_M, align 4
  %167 = load i32, i32* @PF_FW_ATQLEN_ATQOVFL_M, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @PF_FW_ATQLEN_ATQCRIT_M, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %13, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %165
  %178 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %179 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %8, align 8
  %180 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @wr32(%struct.ice_hw* %178, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %177, %165
  br label %186

186:                                              ; preds = %185, %113
  %187 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %8, align 8
  %188 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 2
  store i32 %189, i32* %190, align 4
  %191 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %192 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @GFP_KERNEL, align 4
  %198 = call i32 @devm_kzalloc(i32* %194, i32 %196, i32 %197)
  %199 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 0
  store i32 %198, i32* %199, align 4
  %200 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %291

204:                                              ; preds = %186
  br label %205

205:                                              ; preds = %271, %204
  %206 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %207 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %8, align 8
  %208 = call i32 @ice_clean_rq_elem(%struct.ice_hw* %206, %struct.ice_ctl_q_info* %207, %struct.ice_rq_event_info* %6, i32* %9)
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %273

213:                                              ; preds = %205
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %218 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i8*, i8** %11, align 8
  %222 = load i32, i32* %14, align 4
  %223 = call i32 (i32*, i8*, ...) @dev_err(i32* %220, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %221, i32 %222)
  br label %273

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @le16_to_cpu(i32 %227)
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  switch i32 %229, label %253 [
    i32 130, label %230
    i32 128, label %241
    i32 131, label %244
    i32 129, label %250
  ]

230:                                              ; preds = %224
  %231 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %232 = call i32 @ice_handle_link_event(%struct.ice_pf* %231, %struct.ice_rq_event_info* %6)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %236 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %235, i32 0, i32 0
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = call i32 (i32*, i8*, ...) @dev_err(i32* %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %240

240:                                              ; preds = %234, %230
  br label %261

241:                                              ; preds = %224
  %242 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %243 = call i32 @ice_vc_process_vf_msg(%struct.ice_pf* %242, %struct.ice_rq_event_info* %6)
  br label %261

244:                                              ; preds = %224
  %245 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %246 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 1
  %247 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ice_output_fw_log(%struct.ice_hw* %245, %struct.TYPE_8__* %246, i32 %248)
  br label %261

250:                                              ; preds = %224
  %251 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %252 = call i32 @ice_dcb_process_lldp_set_mib_change(%struct.ice_pf* %251, %struct.ice_rq_event_info* %6)
  br label %261

253:                                              ; preds = %224
  %254 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %255 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %254, i32 0, i32 0
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i8*, i8** %11, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %257, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %258, i32 %259)
  br label %261

261:                                              ; preds = %253, %250, %244, %241, %240
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  %268 = sext i32 %266 to i64
  %269 = load i64, i64* @ICE_DFLT_IRQ_WORK, align 8
  %270 = icmp slt i64 %268, %269
  br label %271

271:                                              ; preds = %265, %262
  %272 = phi i1 [ false, %262 ], [ %270, %265 ]
  br i1 %272, label %205, label %273

273:                                              ; preds = %271, %216, %212
  %274 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %275 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %274, i32 0, i32 0
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %6, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @devm_kfree(i32* %277, i32 %279)
  %281 = load i32, i32* %9, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %273
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = load i64, i64* @ICE_DFLT_IRQ_WORK, align 8
  %287 = icmp eq i64 %285, %286
  br label %288

288:                                              ; preds = %283, %273
  %289 = phi i1 [ false, %273 ], [ %287, %283 ]
  %290 = zext i1 %289 to i32
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %288, %203, %33, %24
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, ...) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_clean_rq_elem(%struct.ice_hw*, %struct.ice_ctl_q_info*, %struct.ice_rq_event_info*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ice_handle_link_event(%struct.ice_pf*, %struct.ice_rq_event_info*) #1

declare dso_local i32 @ice_vc_process_vf_msg(%struct.ice_pf*, %struct.ice_rq_event_info*) #1

declare dso_local i32 @ice_output_fw_log(%struct.ice_hw*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ice_dcb_process_lldp_set_mib_change(%struct.ice_pf*, %struct.ice_rq_event_info*) #1

declare dso_local i32 @devm_kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
