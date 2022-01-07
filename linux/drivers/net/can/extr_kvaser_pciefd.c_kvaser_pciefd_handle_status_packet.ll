; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_status_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_status_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i64, %struct.kvaser_pciefd_can** }
%struct.kvaser_pciefd_can = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.kvaser_pciefd_rx_packet = type { i32* }

@KVASER_PCIEFD_PACKET_CHID_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_STAT_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_STAT_SEQNO_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPACK_IRM = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPACK_RMCD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPACK_AUTO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_PACKET_SEQ_MSK = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_STAT_IDLE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_ABD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_CMD_AT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_TFD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SPACK_IDET = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_TX_NPACKETS_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_CTRL_EFLUSH = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CTRL_REG = common dso_local global i64 0, align 8
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@KVASER_PCIEFD_BEC_POLL_FREQ = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_STAT_BUS_OFF_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_handle_status_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_handle_status_packet(%struct.kvaser_pciefd* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd*, align 8
  %5 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %4, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %12 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %13 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KVASER_PCIEFD_PACKET_CHID_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %245

29:                                               ; preds = %2
  %30 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %31 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %30, i32 0, i32 1
  %32 = load %struct.kvaser_pciefd_can**, %struct.kvaser_pciefd_can*** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %32, i64 %33
  %35 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %34, align 8
  store %struct.kvaser_pciefd_can* %35, %struct.kvaser_pciefd_can** %6, align 8
  %36 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %37 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KVASER_PCIEFD_KCAN_STAT_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_SEQNO_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 255
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  %47 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %48 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @KVASER_PCIEFD_SPACK_IRM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %29
  %56 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %57 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @KVASER_PCIEFD_SPACK_RMCD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %120

64:                                               ; preds = %55
  %65 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %66 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @KVASER_PCIEFD_SPACK_AUTO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %120

73:                                               ; preds = %64
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %76 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @KVASER_PCIEFD_PACKET_SEQ_MSK, align 8
  %82 = and i64 %80, %81
  %83 = icmp eq i64 %74, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_IDLE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ABD, align 4
  %91 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %92 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @iowrite32(i32 %90, i64 %95)
  %97 = load i32, i32* @KVASER_PCIEFD_KCAN_CMD_AT, align 4
  store i32 %97, i32* %10, align 4
  %98 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %99 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %108 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @KVASER_PCIEFD_KCAN_CMD_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @iowrite32(i32 %106, i64 %111)
  %113 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TFD, align 4
  %114 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %115 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @iowrite32(i32 %113, i64 %118)
  br label %244

120:                                              ; preds = %84, %73, %64, %55, %29
  %121 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %122 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @KVASER_PCIEFD_SPACK_IDET, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %174

129:                                              ; preds = %120
  %130 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %131 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @KVASER_PCIEFD_SPACK_IRM, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %129
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %141 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* @KVASER_PCIEFD_PACKET_SEQ_MSK, align 8
  %147 = and i64 %145, %146
  %148 = icmp eq i64 %139, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %138
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_IDLE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %156 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @KVASER_PCIEFD_KCAN_TX_NPACKETS_REG, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @ioread32(i64 %159)
  %161 = and i32 %160, 255
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %11, align 8
  %163 = load i64, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %154
  %166 = load i32, i32* @KVASER_PCIEFD_KCAN_CTRL_EFLUSH, align 4
  %167 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %168 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @KVASER_PCIEFD_KCAN_CTRL_REG, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @iowrite32(i32 %166, i64 %171)
  br label %173

173:                                              ; preds = %165, %154
  br label %243

174:                                              ; preds = %149, %138, %129, %120
  %175 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %176 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @KVASER_PCIEFD_SPACK_AUTO, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %217, label %183

183:                                              ; preds = %174
  %184 = load i64, i64* %7, align 8
  %185 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %186 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @KVASER_PCIEFD_PACKET_SEQ_MSK, align 8
  %192 = and i64 %190, %191
  %193 = icmp eq i64 %184, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %183
  %195 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %196 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %197 = call i32 @kvaser_pciefd_handle_status_resp(%struct.kvaser_pciefd_can* %195, %struct.kvaser_pciefd_rx_packet* %196)
  %198 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %199 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %194
  %205 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %206 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %204
  %212 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %213 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %212, i32 0, i32 2
  %214 = load i32, i32* @KVASER_PCIEFD_BEC_POLL_FREQ, align 4
  %215 = call i32 @mod_timer(i32* %213, i32 %214)
  br label %216

216:                                              ; preds = %211, %204, %194
  br label %242

217:                                              ; preds = %183, %174
  %218 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %219 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @KVASER_PCIEFD_SPACK_RMCD, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %217
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_BUS_OFF_MSK, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %226
  %232 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %233 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %232, i32 0, i32 1
  %234 = call i32 @completion_done(i32* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %238 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %237, i32 0, i32 1
  %239 = call i32 @complete(i32* %238)
  br label %240

240:                                              ; preds = %236, %231
  br label %241

241:                                              ; preds = %240, %226, %217
  br label %242

242:                                              ; preds = %241, %216
  br label %243

243:                                              ; preds = %242, %173
  br label %244

244:                                              ; preds = %243, %89
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %26
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @kvaser_pciefd_handle_status_resp(%struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
