; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_tc574_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_tc574_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i8**, i32, %struct.TYPE_2__**, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i64, i32 }
%struct.el3_private = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"3c574_config()\0A\00", align 1
@el3_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"IO port conflict at 0x%03lx-0x%03lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"3Com 3c574\00", align 1
@RunnerRdCtrl = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"  ASIC rev %d,\00", align 1
@Wn3_Config = common dso_local global i64 0, align 8
@Xcvr = common dso_local global i32 0, align 4
@Xcvr_shift = common dso_local global i32 0, align 4
@Autoselect = common dso_local global i32 0, align 4
@media_check = common dso_local global i32 0, align 4
@Wn3_Options = common dso_local global i64 0, align 8
@TxReset = common dso_local global i32 0, align 4
@RxReset = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"  MII transceiver at index %d, status %x.\0A\00", align 1
@mii_preamble_required = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"  No MII transceivers found!\0A\00", align 1
@full_duplex = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s at io %#3lx, irq %d, hw_addr %pM\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c" %dK FIFO split %s Rx:Tx, %sMII interface.\0A\00", align 1
@Ram_size = common dso_local global i32 0, align 4
@ram_split = common dso_local global i32* null, align 8
@Ram_split = common dso_local global i32 0, align 4
@Ram_split_shift = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"autoselect \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @tc574_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc574_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.el3_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 5
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.el3_private* @netdev_priv(%struct.net_device* %21)
  store %struct.el3_private* %22, %struct.el3_private** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 2
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  store i32 16, i32* %31, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %1
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 1024
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = xor i32 %36, 768
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 4
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %53

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 32
  store i32 %52, i32* %8, align 4
  br label %32

53:                                               ; preds = %48, %32
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %349

57:                                               ; preds = %53
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = load i32, i32* @el3_interrupt, align 4
  %60 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %349

64:                                               ; preds = %57
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %349

70:                                               ; preds = %64
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %9, align 4
  %88 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %89 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %88, i32 136, i32** %13)
  store i64 %89, i64* %14, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %70
  %93 = load i64, i64* %14, align 8
  %94 = icmp uge i64 %93, 6
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %112, %95
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %7, align 4
  %102 = mul nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = call i32 @htons(i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @kfree(i32* %116)
  br label %154

118:                                              ; preds = %92, %70
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @kfree(i32* %119)
  %121 = call i32 @EL3WINDOW(i32 0)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %135, %118
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 10
  %129 = call i32 @read_eeprom(i32 %126, i32 %128)
  %130 = call i32 @htons(i32 %129)
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %122

138:                                              ; preds = %122
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @htons(i32 24672)
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.net_device*, %struct.net_device** %4, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add i32 %150, 15
  %152 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %151)
  br label %349

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %115
  %155 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %156 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %163 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %11, align 8
  br label %168

167:                                              ; preds = %154
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %168

168:                                              ; preds = %167, %161
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* @RunnerRdCtrl, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @outw(i32 4096, i64 %172)
  %174 = load i32, i32* %9, align 4
  %175 = add i32 %174, 2
  %176 = call i32 @inb(i32 %175)
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* @RunnerRdCtrl, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outw(i32 0, i64 %180)
  %182 = load i32, i32* %15, align 4
  %183 = ashr i32 %182, 3
  %184 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = call i32 @EL3WINDOW(i32 3)
  %186 = load i32, i32* %9, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* @Wn3_Config, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @inl(i64 %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @Xcvr, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @Xcvr_shift, align 4
  %195 = ashr i32 %193, %194
  %196 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %197 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @Autoselect, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 1, i32 0
  %204 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %205 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %207 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %206, i32 0, i32 4
  %208 = load i32, i32* @media_check, align 4
  %209 = call i32 @timer_setup(i32* %207, i32 %208, i32 0)
  %210 = load i32, i32* %9, align 4
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* @Wn3_Options, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @outw(i32 32832, i64 %213)
  %215 = call i32 @mdelay(i32 1)
  %216 = load i32, i32* %9, align 4
  %217 = zext i32 %216 to i64
  %218 = load i64, i64* @Wn3_Options, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @outw(i32 49216, i64 %219)
  %221 = load %struct.net_device*, %struct.net_device** %4, align 8
  %222 = load i32, i32* @TxReset, align 4
  %223 = call i32 @tc574_wait_for_completion(%struct.net_device* %221, i32 %222)
  %224 = load %struct.net_device*, %struct.net_device** %4, align 8
  %225 = load i32, i32* @RxReset, align 4
  %226 = call i32 @tc574_wait_for_completion(%struct.net_device* %224, i32 %225)
  %227 = call i32 @mdelay(i32 1)
  %228 = load i32, i32* %9, align 4
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* @Wn3_Options, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @outw(i32 32832, i64 %231)
  %233 = call i32 @EL3WINDOW(i32 4)
  store i32 1, i32* %16, align 4
  br label %234

234:                                              ; preds = %262, %168
  %235 = load i32, i32* %16, align 4
  %236 = icmp sle i32 %235, 32
  br i1 %236, label %237, label %265

237:                                              ; preds = %234
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @mdio_sync(i32 %238, i32 32)
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %16, align 4
  %242 = and i32 %241, 31
  %243 = call i32 @mdio_read(i32 %240, i32 %242, i32 1)
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 65535
  br i1 %245, label %246, label %261

246:                                              ; preds = %237
  %247 = load i32, i32* %16, align 4
  %248 = and i32 %247, 31
  %249 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %250 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 4
  %251 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %252 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %251, i32 0, i32 2
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %17, align 4
  %255 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %252, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %253, i32 %254)
  %256 = load i32, i32* %17, align 4
  %257 = and i32 %256, 64
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %246
  store i32 1, i32* @mii_preamble_required, align 4
  br label %260

260:                                              ; preds = %259, %246
  br label %265

261:                                              ; preds = %237
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %16, align 4
  br label %234

265:                                              ; preds = %260, %234
  %266 = load i32, i32* %16, align 4
  %267 = icmp sgt i32 %266, 32
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %349

270:                                              ; preds = %265
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %273 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @mdio_read(i32 %271, i32 %274, i32 16)
  %276 = or i32 %275, 64
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %279 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @mdio_write(i32 %277, i32 %280, i32 16, i32 %281)
  %283 = load i32, i32* %9, align 4
  %284 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %285 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @mdio_read(i32 %283, i32 %286, i32 4)
  %288 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %289 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 4
  %290 = load i64, i64* @full_duplex, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %270
  %293 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %294 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, -673
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* %9, align 4
  %298 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %299 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %302 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @mdio_write(i32 %297, i32 %300, i32 4, i32 %303)
  br label %305

305:                                              ; preds = %292, %270
  %306 = load %struct.net_device*, %struct.net_device** %4, align 8
  %307 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %308 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %307, i32 0, i32 2
  %309 = call i32 @SET_NETDEV_DEV(%struct.net_device* %306, i32* %308)
  %310 = load %struct.net_device*, %struct.net_device** %4, align 8
  %311 = call i64 @register_netdev(%struct.net_device* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %305
  %314 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %349

315:                                              ; preds = %305
  %316 = load %struct.net_device*, %struct.net_device** %4, align 8
  %317 = load i8*, i8** %11, align 8
  %318 = load %struct.net_device*, %struct.net_device** %4, align 8
  %319 = getelementptr inbounds %struct.net_device, %struct.net_device* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.net_device*, %struct.net_device** %4, align 8
  %322 = getelementptr inbounds %struct.net_device, %struct.net_device* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.net_device*, %struct.net_device** %4, align 8
  %325 = getelementptr inbounds %struct.net_device, %struct.net_device* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %316, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %317, i32 %320, i32 %323, i64 %326)
  %328 = load %struct.net_device*, %struct.net_device** %4, align 8
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* @Ram_size, align 4
  %331 = and i32 %329, %330
  %332 = shl i32 8, %331
  %333 = load i32*, i32** @ram_split, align 8
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* @Ram_split, align 4
  %336 = and i32 %334, %335
  %337 = load i32, i32* @Ram_split_shift, align 4
  %338 = ashr i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %333, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* @Autoselect, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %348 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %328, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %332, i32 %341, i8* %347)
  store i32 0, i32* %2, align 4
  br label %354

349:                                              ; preds = %313, %268, %144, %69, %63, %56
  %350 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %351 = call i32 @tc574_release(%struct.pcmcia_device* %350)
  %352 = load i32, i32* @ENODEV, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %349, %315
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i32**) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @read_eeprom(i32, i32) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @tc574_wait_for_completion(%struct.net_device*, i32) #1

declare dso_local i32 @mdio_sync(i32, i32) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @tc574_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
