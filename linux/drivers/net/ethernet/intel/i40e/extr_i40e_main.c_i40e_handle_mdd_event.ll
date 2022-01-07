; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_handle_mdd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_handle_mdd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_4__*, %struct.i40e_vf*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vf = type { i32, i32 }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__I40E_MDD_EVENT_PENDING = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_VALID_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_PF_NUM_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_PF_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_VF_NUM_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_VF_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_EVENT_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_EVENT_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_QUEUE_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Malicious Driver Detection event 0x%02x on TX queue %d PF number 0x%02x VF number 0x%02x\0A\00", align 1
@I40E_GL_MDET_RX = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_VALID_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_FUNCTION_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_EVENT_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_EVENT_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_QUEUE_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Malicious Driver Detection event 0x%02x on RX queue %d of function 0x%02x\0A\00", align 1
@I40E_PF_MDET_TX = common dso_local global i32 0, align 4
@I40E_PF_MDET_TX_VALID_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"TX driver issue detected on PF\0A\00", align 1
@I40E_PF_MDET_RX = common dso_local global i32 0, align 4
@I40E_PF_MDET_RX_VALID_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"RX driver issue detected on PF\0A\00", align 1
@I40E_VP_MDET_TX_VALID_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"TX driver issue detected on VF %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Use PF Control I/F to re-enable the VF\0A\00", align 1
@I40E_VF_STATE_DISABLED = common dso_local global i32 0, align 4
@I40E_VP_MDET_RX_VALID_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"RX driver issue detected on VF %d\0A\00", align 1
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_handle_mdd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_handle_mdd_event(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 4
  store %struct.i40e_hw* %16, %struct.i40e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* @__I40E_MDD_EVENT_PENDING, align 4
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %266

24:                                               ; preds = %1
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %26 = load i32, i32* @I40E_GL_MDET_TX, align 4
  %27 = call i32 @rd32(%struct.i40e_hw* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @I40E_GL_MDET_TX_VALID_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @I40E_GL_MDET_TX_PF_NUM_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @I40E_GL_MDET_TX_PF_NUM_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @I40E_GL_MDET_TX_VF_NUM_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @I40E_GL_MDET_TX_VF_NUM_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @I40E_GL_MDET_TX_EVENT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @I40E_GL_MDET_TX_EVENT_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @I40E_GL_MDET_TX_QUEUE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @I40E_GL_MDET_TX_QUEUE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %52, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %60 = call i64 @netif_msg_tx_err(%struct.i40e_pf* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %32
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %32
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %74 = load i32, i32* @I40E_GL_MDET_TX, align 4
  %75 = call i32 @wr32(%struct.i40e_hw* %73, i32 %74, i32 -1)
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %24
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %78 = load i32, i32* @I40E_GL_MDET_RX, align 4
  %79 = call i32 @rd32(%struct.i40e_hw* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @I40E_GL_MDET_RX_VALID_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @I40E_GL_MDET_RX_FUNCTION_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @I40E_GL_MDET_RX_FUNCTION_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @I40E_GL_MDET_RX_EVENT_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @I40E_GL_MDET_RX_EVENT_SHIFT, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @I40E_GL_MDET_RX_QUEUE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @I40E_GL_MDET_RX_QUEUE_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %101 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %99, %104
  store i32 %105, i32* %14, align 4
  %106 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %107 = call i64 @netif_msg_rx_err(%struct.i40e_pf* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %84
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i32*, i8*, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %84
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %120 = load i32, i32* @I40E_GL_MDET_RX, align 4
  %121 = call i32 @wr32(%struct.i40e_hw* %119, i32 %120, i32 -1)
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %76
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %160

125:                                              ; preds = %122
  %126 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %127 = load i32, i32* @I40E_PF_MDET_TX, align 4
  %128 = call i32 @rd32(%struct.i40e_hw* %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @I40E_PF_MDET_TX_VALID_MASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %135 = load i32, i32* @I40E_PF_MDET_TX, align 4
  %136 = call i32 @wr32(%struct.i40e_hw* %134, i32 %135, i32 65535)
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = call i32 @dev_dbg(i32* %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %133, %125
  %143 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %144 = load i32, i32* @I40E_PF_MDET_RX, align 4
  %145 = call i32 @rd32(%struct.i40e_hw* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @I40E_PF_MDET_RX_VALID_MASK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %152 = load i32, i32* @I40E_PF_MDET_RX, align 4
  %153 = call i32 @wr32(%struct.i40e_hw* %151, i32 %152, i32 65535)
  %154 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %155 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = call i32 @dev_dbg(i32* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %150, %142
  br label %160

160:                                              ; preds = %159, %122
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %245, %160
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %164 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br label %170

170:                                              ; preds = %167, %161
  %171 = phi i1 [ false, %161 ], [ %169, %167 ]
  br i1 %171, label %172, label %248

172:                                              ; preds = %170
  %173 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %174 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %173, i32 0, i32 3
  %175 = load %struct.i40e_vf*, %struct.i40e_vf** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %175, i64 %177
  store %struct.i40e_vf* %178, %struct.i40e_vf** %5, align 8
  %179 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @I40E_VP_MDET_TX(i32 %180)
  %182 = call i32 @rd32(%struct.i40e_hw* %179, i32 %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @I40E_VP_MDET_TX_VALID_MASK, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %172
  %188 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @I40E_VP_MDET_TX(i32 %189)
  %191 = call i32 @wr32(%struct.i40e_hw* %188, i32 %190, i32 65535)
  %192 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %193 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %197 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %196, i32 0, i32 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %7, align 4
  %201 = call i32 (i32*, i8*, ...) @dev_info(i32* %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  %202 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %203 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = call i32 (i32*, i8*, ...) @dev_info(i32* %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %207 = load i32, i32* @I40E_VF_STATE_DISABLED, align 4
  %208 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %209 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %208, i32 0, i32 0
  %210 = call i32 @set_bit(i32 %207, i32* %209)
  br label %211

211:                                              ; preds = %187, %172
  %212 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @I40E_VP_MDET_RX(i32 %213)
  %215 = call i32 @rd32(%struct.i40e_hw* %212, i32 %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @I40E_VP_MDET_RX_VALID_MASK, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %211
  %221 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @I40E_VP_MDET_RX(i32 %222)
  %224 = call i32 @wr32(%struct.i40e_hw* %221, i32 %223, i32 65535)
  %225 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %226 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %230 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %229, i32 0, i32 2
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %7, align 4
  %234 = call i32 (i32*, i8*, ...) @dev_info(i32* %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %233)
  %235 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %236 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %235, i32 0, i32 2
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = call i32 (i32*, i8*, ...) @dev_info(i32* %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %240 = load i32, i32* @I40E_VF_STATE_DISABLED, align 4
  %241 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %242 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %241, i32 0, i32 0
  %243 = call i32 @set_bit(i32 %240, i32* %242)
  br label %244

244:                                              ; preds = %220, %211
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %161

248:                                              ; preds = %170
  %249 = load i32, i32* @__I40E_MDD_EVENT_PENDING, align 4
  %250 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %251 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @clear_bit(i32 %249, i32 %252)
  %254 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %255 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %256 = call i32 @rd32(%struct.i40e_hw* %254, i32 %255)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %258 = load i32, i32* %6, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %6, align 4
  %260 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %261 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @wr32(%struct.i40e_hw* %260, i32 %261, i32 %262)
  %264 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %265 = call i32 @i40e_flush(%struct.i40e_hw* %264)
  br label %266

266:                                              ; preds = %248, %23
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.i40e_pf*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.i40e_pf*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @I40E_VP_MDET_TX(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @I40E_VP_MDET_RX(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
