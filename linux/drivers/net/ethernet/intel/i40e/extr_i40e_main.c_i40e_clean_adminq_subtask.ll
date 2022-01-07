; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clean_adminq_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clean_adminq_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, i32, %struct.TYPE_10__*, %struct.i40e_hw, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i40e_hw = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_arq_event_info = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@__I40E_RESET_FAILED = common dso_local global i32 0, align 4
@I40E_PF_ARQLEN_ARQVFE_MASK = common dso_local global i32 0, align 4
@I40E_DEBUG_AQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ARQ VF Error detected\0A\00", align 1
@I40E_PF_ARQLEN_ARQOVFL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ARQ Overflow Error detected\0A\00", align 1
@I40E_PF_ARQLEN_ARQCRIT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ARQ Critical Error detected\0A\00", align 1
@I40E_PF_ATQLEN_ATQVFE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ASQ VF Error detected\0A\00", align 1
@I40E_PF_ATQLEN_ATQOVFL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ASQ Overflow Error detected\0A\00", align 1
@I40E_PF_ATQLEN_ATQCRIT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"ASQ Critical Error detected\0A\00", align 1
@I40E_MAX_AQ_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_NO_WORK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"ARQ event error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ARQ: Update LLDP MIB event received\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"ARQ LAN queue overflow event received\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"ARQ: Msg from other pf\0A\00", align 1
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"ARQ NVM operation 0x%04x completed\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"ARQ: Unknown event 0x%04x ignored\0A\00", align 1
@__I40E_ADMINQ_EVENT_PENDING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ADMINQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_clean_adminq_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_clean_adminq_subtask(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_arq_event_info, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 3
  store %struct.i40e_hw* %12, %struct.i40e_hw** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @__I40E_RESET_FAILED, align 4
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %345

20:                                               ; preds = %1
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 3
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rd32(%struct.i40e_hw* %22, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @I40E_PF_ARQLEN_ARQVFE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %20
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I40E_DEBUG_AQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_info(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* @I40E_PF_ARQLEN_ARQVFE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %20
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @I40E_PF_ARQLEN_ARQOVFL_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %60 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I40E_DEBUG_AQ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %67 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %65, %58
  %72 = load i32, i32* @I40E_PF_ARQLEN_ARQOVFL_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %53
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @I40E_PF_ARQLEN_ARQCRIT_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I40E_DEBUG_AQ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %94 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %93, i32 0, i32 2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @dev_info(i32* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %85
  %99 = load i32, i32* @I40E_PF_ARQLEN_ARQCRIT_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %98, %80
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 3
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @wr32(%struct.i40e_hw* %109, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %103
  %119 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %120 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %119, i32 0, i32 3
  %121 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %122 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @rd32(%struct.i40e_hw* %120, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @I40E_PF_ATQLEN_ATQVFE_MASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %118
  %134 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %135 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @I40E_DEBUG_AQ, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %143 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %142, i32 0, i32 2
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_info(i32* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %141, %133
  %148 = load i32, i32* @I40E_PF_ATQLEN_ATQVFE_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %147, %118
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @I40E_PF_ATQLEN_ATQOVFL_MASK, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %152
  %158 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %159 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @I40E_DEBUG_AQ, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %157
  %166 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %167 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %166, i32 0, i32 2
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = call i32 (i32*, i8*, ...) @dev_info(i32* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %165, %157
  %172 = load i32, i32* @I40E_PF_ATQLEN_ATQOVFL_MASK, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %10, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %171, %152
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @I40E_PF_ATQLEN_ATQCRIT_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %183 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @I40E_DEBUG_AQ, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %191 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %190, i32 0, i32 2
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = call i32 (i32*, i8*, ...) @dev_info(i32* %193, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %195

195:                                              ; preds = %189, %181
  %196 = load i32, i32* @I40E_PF_ATQLEN_ATQCRIT_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %10, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %195, %176
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %206 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %205, i32 0, i32 3
  %207 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %208 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @wr32(%struct.i40e_hw* %206, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %204, %200
  %216 = load i32, i32* @I40E_MAX_AQ_BUF_SIZE, align 4
  %217 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 3
  store i32 %216, i32* %217, align 4
  %218 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call i32 @kzalloc(i32 %219, i32 %220)
  %222 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 0
  store i32 %221, i32* %222, align 4
  %223 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %215
  br label %345

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %308, %227
  %229 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %230 = call i64 @i40e_clean_arq_element(%struct.i40e_hw* %229, %struct.i40e_arq_event_info* %3, i32* %5)
  store i64 %230, i64* %7, align 8
  %231 = load i64, i64* %7, align 8
  %232 = load i64, i64* @I40E_ERR_ADMIN_QUEUE_NO_WORK, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %316

235:                                              ; preds = %228
  %236 = load i64, i64* %7, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %240 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %239, i32 0, i32 2
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i64, i64* %7, align 8
  %244 = call i32 (i32*, i8*, ...) @dev_info(i32* %242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %243)
  br label %316

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245
  %247 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @le16_to_cpu(i32 %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  switch i32 %251, label %300 [
    i32 134, label %252
    i32 128, label %255
    i32 133, label %274
    i32 135, label %280
    i32 129, label %288
    i32 132, label %294
    i32 131, label %294
    i32 130, label %294
  ]

252:                                              ; preds = %246
  %253 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %254 = call i32 @i40e_handle_link_event(%struct.i40e_pf* %253, %struct.i40e_arq_event_info* %3)
  br label %307

255:                                              ; preds = %246
  %256 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %257 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @le16_to_cpu(i32 %259)
  %261 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @le32_to_cpu(i32 %263)
  %265 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @le32_to_cpu(i32 %267)
  %269 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @i40e_vc_process_vf_msg(%struct.i40e_pf* %256, i32 %260, i32 %264, i32 %268, i32 %270, i32 %272)
  store i64 %273, i64* %7, align 8
  br label %307

274:                                              ; preds = %246
  %275 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %276 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %275, i32 0, i32 2
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = call i32 @dev_dbg(i32* %278, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %307

280:                                              ; preds = %246
  %281 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %282 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %281, i32 0, i32 2
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = call i32 @dev_dbg(i32* %284, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %286 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %287 = call i32 @i40e_handle_lan_overflow_event(%struct.i40e_pf* %286, %struct.i40e_arq_event_info* %3)
  br label %307

288:                                              ; preds = %246
  %289 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %290 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %289, i32 0, i32 2
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = call i32 (i32*, i8*, ...) @dev_info(i32* %292, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %307

294:                                              ; preds = %246, %246, %246
  %295 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %296 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %295, i32 0, i32 3
  %297 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @i40e_debug(%struct.i40e_hw* %296, i32 %297, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %298)
  br label %307

300:                                              ; preds = %246
  %301 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %302 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %301, i32 0, i32 2
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i32, i32* %8, align 4
  %306 = call i32 (i32*, i8*, ...) @dev_info(i32* %304, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %300, %294, %288, %280, %274, %255, %252
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  %311 = sext i32 %309 to i64
  %312 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %313 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp slt i64 %311, %314
  br i1 %315, label %228, label %316

316:                                              ; preds = %308, %238, %234
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %320 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp slt i64 %318, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load i32, i32* @__I40E_ADMINQ_EVENT_PENDING, align 4
  %325 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %326 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @clear_bit(i32 %324, i32 %327)
  br label %329

329:                                              ; preds = %323, %316
  %330 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %331 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %332 = call i32 @rd32(%struct.i40e_hw* %330, i32 %331)
  store i32 %332, i32* %10, align 4
  %333 = load i32, i32* @I40E_PFINT_ICR0_ENA_ADMINQ_MASK, align 4
  %334 = load i32, i32* %10, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %10, align 4
  %336 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %337 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %338 = load i32, i32* %10, align 4
  %339 = call i32 @wr32(%struct.i40e_hw* %336, i32 %337, i32 %338)
  %340 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %341 = call i32 @i40e_flush(%struct.i40e_hw* %340)
  %342 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %3, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @kfree(i32 %343)
  br label %345

345:                                              ; preds = %329, %226, %19
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @i40e_clean_arq_element(%struct.i40e_hw*, %struct.i40e_arq_event_info*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_handle_link_event(%struct.i40e_pf*, %struct.i40e_arq_event_info*) #1

declare dso_local i64 @i40e_vc_process_vf_msg(%struct.i40e_pf*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i40e_handle_lan_overflow_event(%struct.i40e_pf*, %struct.i40e_arq_event_info*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
