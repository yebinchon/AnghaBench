; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_lmi_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_lmi_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.pvc_device = type { %struct.pvc_device*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, %struct.pvc_device*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@LMI_CISCO = common dso_local global i32 0, align 4
@LMI_ANSI = common dso_local global i32 0, align 4
@LMI_ANSI_LENGTH = common dso_local global i32 0, align 4
@LMI_CCITT_CISCO_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Short LMI frame\0A\00", align 1
@NLPID_CISCO_LMI = common dso_local global i32 0, align 4
@NLPID_CCITT_ANSI_LMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Received non-LMI frame with LMI DLCI\0A\00", align 1
@LMI_CALLREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid LMI Call reference (0x%02X)\0A\00", align 1
@LMI_STATUS_ENQUIRY = common dso_local global i32 0, align 4
@LMI_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid LMI Message type (0x%02X)\0A\00", align 1
@LMI_ANSI_LOCKSHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Not ANSI locking shift in LMI message (0x%02X)\0A\00", align 1
@LMI_CCITT = common dso_local global i32 0, align 4
@LMI_CCITT_REPTYPE = common dso_local global i32 0, align 4
@LMI_ANSI_CISCO_REPTYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Not an LMI Report type IE (0x%02X)\0A\00", align 1
@LMI_REPT_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Invalid LMI Report type IE length (%u)\0A\00", align 1
@LMI_INTEGRITY = common dso_local global i32 0, align 4
@LMI_FULLREP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Unsupported LMI Report type (0x%02X)\0A\00", align 1
@LMI_CCITT_ALIVE = common dso_local global i32 0, align 4
@LMI_ANSI_CISCO_ALIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"Not an LMI Link integrity verification IE (0x%02X)\0A\00", align 1
@LMI_INTEG_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"Invalid LMI Link integrity verification IE length (%u)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@LMI_CCITT_PVCSTAT = common dso_local global i32 0, align 4
@LMI_ANSI_CISCO_PVCSTAT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Not an LMI PVC status IE (0x%02X)\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Invalid LMI PVC status IE length (%u)\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Memory squeeze on fr_lmi_recv()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @fr_lmi_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fr_lmi_recv(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pvc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32* @dev_to_hdlc(%struct.net_device* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_6__* @state(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_6__* @state(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @LMI_CISCO, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 6, i32 3
  store i32 %37, i32* %12, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @LMI_ANSI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @LMI_ANSI_LENGTH, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @LMI_CCITT_CISCO_LENGTH, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = icmp slt i32 %40, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %676

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @LMI_CISCO, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @NLPID_CISCO_LMI, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @NLPID_CCITT_ANSI_LMI, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = icmp ne i32 %59, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %676

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LMI_CALLREF, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  store i32 1, i32* %3, align 4
  br label %676

89:                                               ; preds = %73
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @LMI_STATUS_ENQUIRY, align 4
  br label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @LMI_STATUS, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = icmp ne i32 %94, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 1, i32* %3, align 4
  br label %676

112:                                              ; preds = %101
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @LMI_ANSI, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @LMI_ANSI_LOCKSHIFT, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %125, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  store i32 1, i32* %3, align 4
  br label %676

132:                                              ; preds = %116
  store i32 7, i32* %16, align 4
  br label %134

133:                                              ; preds = %112
  store i32 6, i32* %16, align 4
  br label %134

134:                                              ; preds = %133, %132
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @LMI_CCITT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32, i32* @LMI_CCITT_REPTYPE, align 4
  br label %149

147:                                              ; preds = %134
  %148 = load i32, i32* @LMI_ANSI_CISCO_REPTYPE, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = icmp ne i32 %141, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  store i32 1, i32* %3, align 4
  br label %676

162:                                              ; preds = %149
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @LMI_REPT_LEN, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %162
  %174 = load %struct.net_device*, %struct.net_device** %4, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  store i32 1, i32* %3, align 4
  br label %676

183:                                              ; preds = %162
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @LMI_INTEGRITY, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %183
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @LMI_FULLREP, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load %struct.net_device*, %struct.net_device** %4, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %200, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  store i32 1, i32* %3, align 4
  br label %676

203:                                              ; preds = %195, %183
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @LMI_CCITT, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %203
  %216 = load i32, i32* @LMI_CCITT_ALIVE, align 4
  br label %219

217:                                              ; preds = %203
  %218 = load i32, i32* @LMI_ANSI_CISCO_ALIVE, align 4
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %221 = icmp ne i32 %211, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %219
  %223 = load %struct.net_device*, %struct.net_device** %4, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %223, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  store i32 1, i32* %3, align 4
  br label %676

232:                                              ; preds = %219
  %233 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %234 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @LMI_INTEG_LEN, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %232
  %244 = load %struct.net_device*, %struct.net_device** %4, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %246 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %244, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %251)
  store i32 1, i32* %3, align 4
  br label %676

253:                                              ; preds = %232
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %16, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %16, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %6, align 8
  %265 = call %struct.TYPE_6__* @state(i32* %264)
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  store i32 %263, i32* %266, align 8
  %267 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %8, align 4
  %275 = load i32*, i32** %6, align 8
  %276 = call %struct.TYPE_6__* @state(i32* %275)
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %253
  %282 = load i32, i32* @jiffies, align 4
  %283 = load i32*, i32** %6, align 8
  %284 = call %struct.TYPE_6__* @state(i32* %283)
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 9
  store i32 %282, i32* %285, align 4
  br label %286

286:                                              ; preds = %281, %253
  store i32 0, i32* %14, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = call %struct.TYPE_6__* @state(i32* %287)
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %286
  store i32 1, i32* %14, align 4
  br label %293

293:                                              ; preds = %292, %286
  %294 = load i32, i32* %8, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %296, %293
  %301 = load i32*, i32** %6, align 8
  %302 = call %struct.TYPE_6__* @state(i32* %301)
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 6
  store i64 0, i64* %303, align 8
  store i32 1, i32* %14, align 4
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %370

307:                                              ; preds = %304
  %308 = load i32*, i32** %6, align 8
  %309 = call %struct.TYPE_6__* @state(i32* %308)
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %345

313:                                              ; preds = %307
  %314 = load i32, i32* %14, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %345, label %316

316:                                              ; preds = %313
  %317 = load i32*, i32** %6, align 8
  %318 = call %struct.TYPE_6__* @state(i32* %317)
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 2
  store i32 0, i32* %319, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = call %struct.TYPE_6__* @state(i32* %320)
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 7
  %323 = load %struct.pvc_device*, %struct.pvc_device** %322, align 8
  store %struct.pvc_device* %323, %struct.pvc_device** %7, align 8
  br label %324

324:                                              ; preds = %340, %316
  %325 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %326 = icmp ne %struct.pvc_device* %325, null
  br i1 %326, label %327, label %344

327:                                              ; preds = %324
  %328 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %329 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %327
  %334 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %335 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  store i32 0, i32* %336, align 8
  %337 = load i32*, i32** %6, align 8
  %338 = call %struct.TYPE_6__* @state(i32* %337)
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 3
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %333, %327
  %341 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %342 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %341, i32 0, i32 0
  %343 = load %struct.pvc_device*, %struct.pvc_device** %342, align 8
  store %struct.pvc_device* %343, %struct.pvc_device** %7, align 8
  br label %324

344:                                              ; preds = %324
  br label %345

345:                                              ; preds = %344, %313, %307
  %346 = load i32*, i32** %6, align 8
  %347 = call %struct.TYPE_6__* @state(i32* %346)
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %345
  %352 = load i32, i32* @LMI_FULLREP, align 4
  store i32 %352, i32* %13, align 4
  %353 = load i32*, i32** %6, align 8
  %354 = call %struct.TYPE_6__* @state(i32* %353)
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 2
  store i32 1, i32* %355, align 8
  %356 = load i32*, i32** %6, align 8
  %357 = call %struct.TYPE_6__* @state(i32* %356)
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 3
  store i32 0, i32* %358, align 4
  br label %359

359:                                              ; preds = %351, %345
  %360 = load i32*, i32** %6, align 8
  %361 = call %struct.TYPE_6__* @state(i32* %360)
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 4
  store i32 1, i32* %362, align 8
  %363 = load %struct.net_device*, %struct.net_device** %4, align 8
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* @LMI_FULLREP, align 4
  %366 = icmp eq i32 %364, %365
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i32 1, i32 0
  %369 = call i32 @fr_lmi_send(%struct.net_device* %363, i32 %368)
  store i32 0, i32* %3, align 4
  br label %676

370:                                              ; preds = %304
  %371 = load i32*, i32** %6, align 8
  %372 = call %struct.TYPE_6__* @state(i32* %371)
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 4
  store i32 0, i32* %373, align 8
  %374 = load i32, i32* %14, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %370
  store i32 0, i32* %3, align 4
  br label %676

377:                                              ; preds = %370
  %378 = load i32, i32* %13, align 4
  %379 = load i32, i32* @LMI_FULLREP, align 4
  %380 = icmp ne i32 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  store i32 0, i32* %3, align 4
  br label %676

382:                                              ; preds = %377
  %383 = load i32*, i32** %6, align 8
  %384 = call %struct.TYPE_6__* @state(i32* %383)
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 7
  %386 = load %struct.pvc_device*, %struct.pvc_device** %385, align 8
  store %struct.pvc_device* %386, %struct.pvc_device** %7, align 8
  br label %387

387:                                              ; preds = %390, %382
  %388 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %389 = icmp ne %struct.pvc_device* %388, null
  br i1 %389, label %390, label %397

390:                                              ; preds = %387
  %391 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %392 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  store i32 1, i32* %393, align 4
  %394 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %395 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %394, i32 0, i32 0
  %396 = load %struct.pvc_device*, %struct.pvc_device** %395, align 8
  store %struct.pvc_device* %396, %struct.pvc_device** %7, align 8
  br label %387

397:                                              ; preds = %387
  store i32 0, i32* %15, align 4
  br label %398

398:                                              ; preds = %622, %397
  %399 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %400 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* %16, align 4
  %403 = add nsw i32 %402, 2
  %404 = load i32, i32* %12, align 4
  %405 = add nsw i32 %403, %404
  %406 = icmp sge i32 %401, %405
  br i1 %406, label %407, label %626

407:                                              ; preds = %398
  %408 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %409 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %16, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* @LMI_CCITT, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %407
  %419 = load i32, i32* @LMI_CCITT_PVCSTAT, align 4
  br label %422

420:                                              ; preds = %407
  %421 = load i32, i32* @LMI_ANSI_CISCO_PVCSTAT, align 4
  br label %422

422:                                              ; preds = %420, %418
  %423 = phi i32 [ %419, %418 ], [ %421, %420 ]
  %424 = icmp ne i32 %414, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %422
  %426 = load %struct.net_device*, %struct.net_device** %4, align 8
  %427 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %428 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %427, i32 0, i32 1
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %16, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %426, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %433)
  store i32 1, i32* %3, align 4
  br label %676

435:                                              ; preds = %422
  %436 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %437 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %16, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %16, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %438, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %12, align 4
  %445 = icmp ne i32 %443, %444
  br i1 %445, label %446, label %456

446:                                              ; preds = %435
  %447 = load %struct.net_device*, %struct.net_device** %4, align 8
  %448 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %449 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %16, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %447, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %454)
  store i32 1, i32* %3, align 4
  br label %676

456:                                              ; preds = %435
  %457 = load i32, i32* %16, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %16, align 4
  %459 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %460 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %16, align 4
  %463 = add nsw i32 %462, 2
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %461, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = and i32 %466, 8
  %468 = icmp ne i32 %467, 0
  %469 = xor i1 %468, true
  %470 = xor i1 %469, true
  %471 = zext i1 %470 to i32
  store i32 %471, i32* %20, align 4
  %472 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %473 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %472, i32 0, i32 1
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %16, align 4
  %476 = add nsw i32 %475, 2
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %474, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = and i32 %479, 2
  %481 = icmp ne i32 %480, 0
  %482 = xor i1 %481, true
  %483 = xor i1 %482, true
  %484 = zext i1 %483 to i32
  store i32 %484, i32* %19, align 4
  %485 = load i32, i32* %10, align 4
  %486 = load i32, i32* @LMI_CISCO, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %534

488:                                              ; preds = %456
  %489 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %490 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %489, i32 0, i32 1
  %491 = load i32*, i32** %490, align 8
  %492 = load i32, i32* %16, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = shl i32 %495, 8
  %497 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %498 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* %16, align 4
  %501 = add nsw i32 %500, 1
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %499, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = or i32 %496, %504
  store i32 %505, i32* %17, align 4
  %506 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %507 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %506, i32 0, i32 1
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %16, align 4
  %510 = add nsw i32 %509, 3
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %508, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = shl i32 %513, 16
  %515 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %516 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %515, i32 0, i32 1
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %16, align 4
  %519 = add nsw i32 %518, 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %517, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = shl i32 %522, 8
  %524 = or i32 %514, %523
  %525 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %526 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %525, i32 0, i32 1
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* %16, align 4
  %529 = add nsw i32 %528, 5
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %527, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = or i32 %524, %532
  store i32 %533, i32* %18, align 4
  br label %555

534:                                              ; preds = %456
  %535 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %536 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %535, i32 0, i32 1
  %537 = load i32*, i32** %536, align 8
  %538 = load i32, i32* %16, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = and i32 %541, 63
  %543 = shl i32 %542, 4
  %544 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %545 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %544, i32 0, i32 1
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %16, align 4
  %548 = add nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %546, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = and i32 %551, 120
  %553 = ashr i32 %552, 3
  %554 = or i32 %543, %553
  store i32 %554, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %555

555:                                              ; preds = %534, %488
  %556 = load %struct.net_device*, %struct.net_device** %4, align 8
  %557 = load i32, i32* %17, align 4
  %558 = call %struct.pvc_device* @add_pvc(%struct.net_device* %556, i32 %557)
  store %struct.pvc_device* %558, %struct.pvc_device** %7, align 8
  %559 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %560 = icmp ne %struct.pvc_device* %559, null
  br i1 %560, label %567, label %561

561:                                              ; preds = %555
  %562 = load i32, i32* %15, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %561
  %565 = load %struct.net_device*, %struct.net_device** %4, align 8
  %566 = call i32 @netdev_warn(%struct.net_device* %565, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %567

567:                                              ; preds = %564, %561, %555
  %568 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %569 = icmp ne %struct.pvc_device* %568, null
  br i1 %569, label %570, label %622

570:                                              ; preds = %567
  %571 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %572 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 2
  store i32 1, i32* %573, align 8
  %574 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %575 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %575, i32 0, i32 1
  store i32 0, i32* %576, align 4
  %577 = load i32, i32* %19, align 4
  %578 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %579 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 4
  %582 = icmp ne i32 %577, %581
  br i1 %582, label %603, label %583

583:                                              ; preds = %570
  %584 = load i32, i32* %20, align 4
  %585 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %586 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = icmp ne i32 %584, %588
  br i1 %589, label %603, label %590

590:                                              ; preds = %583
  %591 = load i32, i32* %18, align 4
  %592 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %593 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %593, i32 0, i32 4
  %595 = load i32, i32* %594, align 8
  %596 = icmp ne i32 %591, %595
  br i1 %596, label %603, label %597

597:                                              ; preds = %590
  %598 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %599 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 8
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %621, label %603

603:                                              ; preds = %597, %590, %583, %570
  %604 = load i32, i32* %20, align 4
  %605 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %606 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %606, i32 0, i32 0
  store i32 %604, i32* %607, align 8
  %608 = load i32, i32* %19, align 4
  %609 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %610 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %610, i32 0, i32 3
  store i32 %608, i32* %611, align 4
  %612 = load i32, i32* %18, align 4
  %613 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %614 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %614, i32 0, i32 4
  store i32 %612, i32* %615, align 8
  %616 = load i32, i32* %19, align 4
  %617 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %618 = call i32 @pvc_carrier(i32 %616, %struct.pvc_device* %617)
  %619 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %620 = call i32 @fr_log_dlci_active(%struct.pvc_device* %619)
  br label %621

621:                                              ; preds = %603, %597
  br label %622

622:                                              ; preds = %621, %567
  %623 = load i32, i32* %12, align 4
  %624 = load i32, i32* %16, align 4
  %625 = add nsw i32 %624, %623
  store i32 %625, i32* %16, align 4
  br label %398

626:                                              ; preds = %398
  %627 = load i32*, i32** %6, align 8
  %628 = call %struct.TYPE_6__* @state(i32* %627)
  %629 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %628, i32 0, i32 7
  %630 = load %struct.pvc_device*, %struct.pvc_device** %629, align 8
  store %struct.pvc_device* %630, %struct.pvc_device** %7, align 8
  br label %631

631:                                              ; preds = %663, %626
  %632 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %633 = icmp ne %struct.pvc_device* %632, null
  br i1 %633, label %634, label %667

634:                                              ; preds = %631
  %635 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %636 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %663

640:                                              ; preds = %634
  %641 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %642 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %642, i32 0, i32 2
  %644 = load i32, i32* %643, align 8
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %663

646:                                              ; preds = %640
  %647 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %648 = call i32 @pvc_carrier(i32 0, %struct.pvc_device* %647)
  %649 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %650 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %650, i32 0, i32 0
  store i32 0, i32* %651, align 8
  %652 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %653 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %653, i32 0, i32 3
  store i32 0, i32* %654, align 4
  %655 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %656 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 2
  store i32 0, i32* %657, align 8
  %658 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %659 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %659, i32 0, i32 4
  store i32 0, i32* %660, align 8
  %661 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %662 = call i32 @fr_log_dlci_active(%struct.pvc_device* %661)
  br label %663

663:                                              ; preds = %646, %640, %634
  %664 = load %struct.pvc_device*, %struct.pvc_device** %7, align 8
  %665 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %664, i32 0, i32 0
  %666 = load %struct.pvc_device*, %struct.pvc_device** %665, align 8
  store %struct.pvc_device* %666, %struct.pvc_device** %7, align 8
  br label %631

667:                                              ; preds = %631
  %668 = load i32*, i32** %6, align 8
  %669 = call %struct.TYPE_6__* @state(i32* %668)
  %670 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %669, i32 0, i32 5
  %671 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %670, i32 0, i32 2
  %672 = load i64, i64* %671, align 8
  %673 = load i32*, i32** %6, align 8
  %674 = call %struct.TYPE_6__* @state(i32* %673)
  %675 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %674, i32 0, i32 6
  store i64 %672, i64* %675, align 8
  store i32 0, i32* %3, align 4
  br label %676

676:                                              ; preds = %667, %446, %425, %381, %376, %359, %243, %222, %199, %173, %152, %124, %104, %81, %70, %51
  %677 = load i32, i32* %3, align 4
  ret i32 %677
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @state(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @fr_lmi_send(%struct.net_device*, i32) #1

declare dso_local %struct.pvc_device* @add_pvc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @pvc_carrier(i32, %struct.pvc_device*) #1

declare dso_local i32 @fr_log_dlci_active(%struct.pvc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
