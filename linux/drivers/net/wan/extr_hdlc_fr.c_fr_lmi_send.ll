; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_lmi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_lmi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32, i8*, i32 }
%struct.pvc_device = type { i32, %struct.pvc_device*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.pvc_device* }
%struct.TYPE_4__ = type { i32, i32 }

@LMI_ANSI = common dso_local global i32 0, align 4
@LMI_ANSI_LENGTH = common dso_local global i32 0, align 4
@LMI_CCITT_CISCO_LENGTH = common dso_local global i32 0, align 4
@LMI_CISCO = common dso_local global i32 0, align 4
@HDLC_MAX_MRU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Too many PVCs while sending LMI full report\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Memory squeeze on fr_lmi_send()\0A\00", align 1
@NLPID_CISCO_LMI = common dso_local global i32 0, align 4
@LMI_CISCO_DLCI = common dso_local global i32 0, align 4
@NLPID_CCITT_ANSI_LMI = common dso_local global i32 0, align 4
@LMI_CCITT_ANSI_DLCI = common dso_local global i32 0, align 4
@LMI_CALLREF = common dso_local global i32 0, align 4
@LMI_STATUS = common dso_local global i32 0, align 4
@LMI_STATUS_ENQUIRY = common dso_local global i32 0, align 4
@LMI_ANSI_LOCKSHIFT = common dso_local global i32 0, align 4
@LMI_CCITT = common dso_local global i32 0, align 4
@LMI_CCITT_REPTYPE = common dso_local global i32 0, align 4
@LMI_ANSI_CISCO_REPTYPE = common dso_local global i32 0, align 4
@LMI_REPT_LEN = common dso_local global i32 0, align 4
@LMI_FULLREP = common dso_local global i32 0, align 4
@LMI_INTEGRITY = common dso_local global i32 0, align 4
@LMI_CCITT_ALIVE = common dso_local global i32 0, align 4
@LMI_ANSI_CISCO_ALIVE = common dso_local global i32 0, align 4
@LMI_INTEG_LEN = common dso_local global i32 0, align 4
@LMI_CCITT_PVCSTAT = common dso_local global i32 0, align 4
@LMI_ANSI_CISCO_PVCSTAT = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @fr_lmi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fr_lmi_send(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.pvc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32* @dev_to_hdlc(%struct.net_device* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_6__* @state(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load %struct.pvc_device*, %struct.pvc_device** %18, align 8
  store %struct.pvc_device* %19, %struct.pvc_device** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_6__* @state(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_6__* @state(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @LMI_ANSI, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @LMI_ANSI_LENGTH, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @LMI_CCITT_CISCO_LENGTH, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LMI_CISCO, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 6, i32 3
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = call %struct.TYPE_6__* @state(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 2, %54
  %56 = mul nsw i32 %53, %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @HDLC_MAX_MRU, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @netdev_warn(%struct.net_device* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %387

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %46, %37
  %67 = load i32, i32* %10, align 4
  %68 = call %struct.sk_buff* @dev_alloc_skb(i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i32 @netdev_warn(%struct.net_device* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %387

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @memset(i32 %77, i32 0, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @skb_reserve(%struct.sk_buff* %80, i32 4)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @LMI_CISCO, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load i32, i32* @NLPID_CISCO_LMI, align 4
  %87 = call i8* @cpu_to_be16(i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @LMI_CISCO_DLCI, align 4
  %91 = call i32 @fr_hard_header(%struct.sk_buff** %6, i32 %90)
  br label %99

92:                                               ; preds = %74
  %93 = load i32, i32* @NLPID_CCITT_ANSI_LMI, align 4
  %94 = call i8* @cpu_to_be16(i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @LMI_CCITT_ANSI_DLCI, align 4
  %98 = call i32 @fr_hard_header(%struct.sk_buff** %6, i32 %97)
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32* @skb_tail_pointer(%struct.sk_buff* %100)
  store i32* %101, i32** %12, align 8
  %102 = load i32, i32* @LMI_CALLREF, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @LMI_STATUS, align 4
  br label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @LMI_STATUS_ENQUIRY, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @LMI_ANSI, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %114
  %125 = load i32, i32* @LMI_ANSI_LOCKSHIFT, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %114
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @LMI_CCITT, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @LMI_CCITT_REPTYPE, align 4
  br label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @LMI_ANSI_CISCO_REPTYPE, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* @LMI_REPT_LEN, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %139
  %155 = load i32, i32* @LMI_FULLREP, align 4
  br label %158

156:                                              ; preds = %139
  %157 = load i32, i32* @LMI_INTEGRITY, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @LMI_CCITT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @LMI_CCITT_ALIVE, align 4
  br label %172

170:                                              ; preds = %158
  %171 = load i32, i32* @LMI_ANSI_CISCO_ALIVE, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32, i32* @LMI_INTEG_LEN, align 4
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = load i32*, i32** %5, align 8
  %186 = call %struct.TYPE_6__* @state(i32* %185)
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @fr_lmi_nextseq(i32 %188)
  %190 = load i32*, i32** %5, align 8
  %191 = call %struct.TYPE_6__* @state(i32* %190)
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %189, i32* %197, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = call %struct.TYPE_6__* @state(i32* %198)
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %201, i32* %206, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %373

209:                                              ; preds = %172
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %373

212:                                              ; preds = %209
  br label %213

213:                                              ; preds = %365, %212
  %214 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %215 = icmp ne %struct.pvc_device* %214, null
  br i1 %215, label %216, label %372

216:                                              ; preds = %213
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @LMI_CCITT, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i32, i32* @LMI_CCITT_PVCSTAT, align 4
  br label %224

222:                                              ; preds = %216
  %223 = load i32, i32* @LMI_ANSI_CISCO_PVCSTAT, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  %226 = load i32*, i32** %12, align 8
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  store i32 %225, i32* %230, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32*, i32** %12, align 8
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = call %struct.TYPE_6__* @state(i32* %237)
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %224
  %243 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %244 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %242
  %249 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %250 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  store i32 1, i32* %251, align 4
  %252 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %253 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %256 = call i32 @fr_log_dlci_active(%struct.pvc_device* %255)
  br label %257

257:                                              ; preds = %248, %242, %224
  %258 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %259 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %288

262:                                              ; preds = %257
  %263 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %264 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %288, label %268

268:                                              ; preds = %262
  %269 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %270 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %288

274:                                              ; preds = %268
  %275 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %276 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %274
  %281 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %282 = call i32 @pvc_carrier(i32 1, %struct.pvc_device* %281)
  %283 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %284 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 2
  store i32 1, i32* %285, align 8
  %286 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %287 = call i32 @fr_log_dlci_active(%struct.pvc_device* %286)
  br label %288

288:                                              ; preds = %280, %274, %268, %262, %257
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @LMI_CISCO, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %310

292:                                              ; preds = %288
  %293 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %294 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = ashr i32 %295, 8
  %297 = load i32*, i32** %12, align 8
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %296, i32* %300, align 4
  %301 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %302 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = and i32 %303, 255
  %305 = load i32*, i32** %12, align 8
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  store i32 %304, i32* %309, align 4
  br label %336

310:                                              ; preds = %288
  %311 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %312 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = ashr i32 %313, 4
  %315 = and i32 %314, 63
  %316 = load i32*, i32** %12, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %315, i32* %319, align 4
  %320 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %321 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = shl i32 %322, 3
  %324 = and i32 %323, 120
  %325 = or i32 %324, 128
  %326 = load i32*, i32** %12, align 8
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  store i32 %325, i32* %330, align 4
  %331 = load i32*, i32** %12, align 8
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  store i32 128, i32* %335, align 4
  br label %336

336:                                              ; preds = %310, %292
  %337 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %338 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %336
  %343 = load i32*, i32** %12, align 8
  %344 = load i32, i32* %13, align 4
  %345 = add nsw i32 %344, 2
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, 8
  store i32 %349, i32* %347, align 4
  br label %365

350:                                              ; preds = %336
  %351 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %352 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %350
  %357 = load i32*, i32** %12, align 8
  %358 = load i32, i32* %13, align 4
  %359 = add nsw i32 %358, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, 2
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %356, %350
  br label %365

365:                                              ; preds = %364, %342
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %13, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %13, align 4
  %369 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %370 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %369, i32 0, i32 1
  %371 = load %struct.pvc_device*, %struct.pvc_device** %370, align 8
  store %struct.pvc_device* %371, %struct.pvc_device** %7, align 8
  br label %213

372:                                              ; preds = %213
  br label %373

373:                                              ; preds = %372, %209, %172
  %374 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %375 = load i32, i32* %13, align 4
  %376 = call i32 @skb_put(%struct.sk_buff* %374, i32 %375)
  %377 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %378 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %379 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 8
  %380 = load %struct.net_device*, %struct.net_device** %3, align 8
  %381 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %382 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %381, i32 0, i32 0
  store %struct.net_device* %380, %struct.net_device** %382, align 8
  %383 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %384 = call i32 @skb_reset_network_header(%struct.sk_buff* %383)
  %385 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %386 = call i32 @dev_queue_xmit(%struct.sk_buff* %385)
  br label %387

387:                                              ; preds = %373, %71, %62
  ret void
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @state(i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @fr_hard_header(%struct.sk_buff**, i32) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @fr_lmi_nextseq(i32) #1

declare dso_local i32 @fr_log_dlci_active(%struct.pvc_device*) #1

declare dso_local i32 @pvc_carrier(i32, %struct.pvc_device*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
