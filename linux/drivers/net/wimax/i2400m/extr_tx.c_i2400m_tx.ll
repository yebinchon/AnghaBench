; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i8*, i32 (%struct.i2400m*)*, i32, %struct.i2400m_msg_hdr*, i32 }
%struct.i2400m_msg_hdr = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@I2400M_PT_RESET_WARM = common dso_local global i32 0, align 4
@I2400M_PT_RESET_COLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"(i2400m %p skb %p [%zu bytes] pt %u)\0A\00", align 1
@I2400M_PL_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"padded_len %zd buf_len %zd\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"closing TX message (fits %u singleton %u num_pls %u)\0A\00", align 1
@I2400M_TX_MSG_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"TX: message too big, going new\0A\00", align 1
@TAIL_FULL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"pl append: tail full\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"pl append: all full\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"pld 0x%08x (type 0x%1x len 0x%04zx\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"TX: appended %zu b (up to %u b) pl #%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"TX: appended hdr @%zu %zu b pl #%u @%zu %zu/%zu b\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"(i2400m %p skb %p [%zu bytes] pt %u) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_tx(%struct.i2400m* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.i2400m_msg_hdr*, align 8
  %17 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %21 = call %struct.device* @i2400m_dev(%struct.i2400m* %20)
  store %struct.device* %21, %struct.device** %10, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @I2400M_PT_RESET_WARM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @I2400M_PT_RESET_COLD, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i1 [ true, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @d_fnstart(i32 3, %struct.device* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %33, i8* %34, i64 %35, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %40 = call i64 @ALIGN(i64 %38, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load %struct.device*, %struct.device** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 5, %struct.device* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %46 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %45, i32 0, i32 2
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %50 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i32, i32* @ESHUTDOWN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %254

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %145, %56
  %58 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %59 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %58, i32 0, i32 3
  %60 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %59, align 8
  %61 = icmp eq %struct.i2400m_msg_hdr* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %67 = call i32 @i2400m_tx_new(%struct.i2400m* %66)
  br label %105

68:                                               ; preds = %57
  %69 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %70 = call i32 @i2400m_tx_fits(%struct.i2400m* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %77 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %76, i32 0, i32 3
  %78 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %77, align 8
  %79 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %75, %72
  %83 = phi i1 [ false, %72 ], [ %81, %75 ]
  br label %84

84:                                               ; preds = %82, %68
  %85 = phi i1 [ true, %68 ], [ %83, %82 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %92 = call i32 @i2400m_tx_fits(%struct.i2400m* %91)
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %95 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %94, i32 0, i32 3
  %96 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %95, align 8
  %97 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93, i64 %98)
  %100 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %101 = call i32 @i2400m_tx_close(%struct.i2400m* %100)
  %102 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %103 = call i32 @i2400m_tx_new(%struct.i2400m* %102)
  br label %104

104:                                              ; preds = %89, %84
  br label %105

105:                                              ; preds = %104, %65
  %106 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %107 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %106, i32 0, i32 3
  %108 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %107, align 8
  %109 = icmp eq %struct.i2400m_msg_hdr* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %254

111:                                              ; preds = %105
  %112 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %113 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %112, i32 0, i32 3
  %114 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %113, align 8
  %115 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %116, %117
  %119 = load i64, i64* @I2400M_TX_MSG_SIZE, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load %struct.device*, %struct.device** %10, align 8
  %123 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %124 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %125 = call i32 @i2400m_tx_close(%struct.i2400m* %124)
  %126 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %127 = call i32 @i2400m_tx_new(%struct.i2400m* %126)
  br label %128

128:                                              ; preds = %121, %111
  %129 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %130 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %129, i32 0, i32 3
  %131 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %130, align 8
  %132 = icmp eq %struct.i2400m_msg_hdr* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %254

134:                                              ; preds = %128
  %135 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %138 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i8* @i2400m_tx_fifo_push(%struct.i2400m* %135, i64 %136, i32 %139, i32 %140)
  store i8* %141, i8** %13, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i8*, i8** @TAIL_FULL, align 8
  %144 = icmp eq i8* %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %134
  %146 = load %struct.device*, %struct.device** %10, align 8
  %147 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %148 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %149 = call i32 @i2400m_tx_close(%struct.i2400m* %148)
  %150 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %151 = call i32 @i2400m_tx_skip_tail(%struct.i2400m* %150)
  store i32 1, i32* %14, align 4
  br label %57

152:                                              ; preds = %134
  %153 = load i8*, i8** %13, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32, i32* @ENOSPC, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %9, align 4
  %158 = load %struct.device*, %struct.device** %10, align 8
  %159 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %252

160:                                              ; preds = %152
  %161 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %162 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %161, i32 0, i32 3
  %163 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %162, align 8
  store %struct.i2400m_msg_hdr* %163, %struct.i2400m_msg_hdr** %16, align 8
  %164 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %165 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i8* @le16_to_cpu(i32 %167)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %17, align 4
  %170 = load i8*, i8** %13, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @memcpy(i8* %170, i8* %171, i64 %172)
  %174 = load i8*, i8** %13, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr i8, i8* %174, i64 %175
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %7, align 8
  %179 = sub i64 %177, %178
  %180 = call i32 @memset(i8* %176, i32 173, i64 %179)
  %181 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %182 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = load i64, i64* %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @i2400m_pld_set(%struct.TYPE_2__* %186, i64 %187, i32 %188)
  %190 = load %struct.device*, %struct.device** %10, align 8
  %191 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %192 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le32_to_cpu(i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = load i64, i64* %7, align 8
  %202 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %199, i32 %200, i64 %201)
  %203 = load i32, i32* %17, align 4
  %204 = add i32 %203, 1
  %205 = call i8* @le16_to_cpu(i32 %204)
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %208 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %211 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, %209
  store i64 %213, i64* %211, align 8
  %214 = load %struct.device*, %struct.device** %10, align 8
  %215 = load i64, i64* %12, align 8
  %216 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %217 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* %17, align 4
  %220 = add i32 %219, 1
  %221 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %214, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %215, i64 %218, i32 %220)
  %222 = load %struct.device*, %struct.device** %10, align 8
  %223 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %224 = bitcast %struct.i2400m_msg_hdr* %223 to i8*
  %225 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %226 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = ptrtoint i8* %224 to i64
  %229 = ptrtoint i8* %227 to i64
  %230 = sub i64 %228, %229
  %231 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %16, align 8
  %232 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = add i32 %234, 1
  %236 = load i8*, i8** %13, align 8
  %237 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %238 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = ptrtoint i8* %236 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* %12, align 8
  %245 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %222, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i64 %230, i64 %233, i32 %235, i64 %242, i64 %243, i64 %244)
  store i32 0, i32* %9, align 4
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %160
  %249 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %250 = call i32 @i2400m_tx_close(%struct.i2400m* %249)
  br label %251

251:                                              ; preds = %248, %160
  br label %252

252:                                              ; preds = %251, %155
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %133, %110, %53
  %255 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %256 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %255, i32 0, i32 2
  %257 = load i64, i64* %11, align 8
  %258 = call i32 @spin_unlock_irqrestore(i32* %256, i64 %257)
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @ESHUTDOWN, align 4
  %261 = sub nsw i32 0, %260
  %262 = icmp ne i32 %259, %261
  %263 = zext i1 %262 to i32
  %264 = call i64 @likely(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %254
  %267 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %268 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %267, i32 0, i32 1
  %269 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %268, align 8
  %270 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %271 = call i32 %269(%struct.i2400m* %270)
  br label %272

272:                                              ; preds = %266, %254
  %273 = load %struct.device*, %struct.device** %10, align 8
  %274 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %275 = load i8*, i8** %6, align 8
  %276 = load i64, i64* %7, align 8
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @d_fnend(i32 3, %struct.device* %273, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), %struct.i2400m* %274, i8* %275, i64 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %9, align 4
  ret i32 %280
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, i8*, i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i2400m_tx_new(%struct.i2400m*) #1

declare dso_local i32 @i2400m_tx_fits(%struct.i2400m*) #1

declare dso_local i32 @i2400m_tx_close(%struct.i2400m*) #1

declare dso_local i8* @i2400m_tx_fifo_push(%struct.i2400m*, i64, i32, i32) #1

declare dso_local i32 @i2400m_tx_skip_tail(%struct.i2400m*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @i2400m_pld_set(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
