; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.pnp_dev = type { i32 }
%struct.corkscrew_private = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"3c515\00", align 1
@MAX_UNITS = common dso_local global i32 0, align 4
@options = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: 3Com %s at %#3x,\00", align 1
@corkscrew_timer = common dso_local global i32 0, align 4
@EEPROM_Read = common dso_local global i64 0, align 8
@Wn0EepromCmd = common dso_local global i32 0, align 4
@Wn0EepromData = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c" ***INVALID CHECKSUM %4.4x*** \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %pM\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c", DMA %d allocation failed\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", DMA %d\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c", IRQ %d\0A\00", align 1
@corkscrew_debug = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c" *** Warning: this IRQ is unlikely to work! ***\0A\00", align 1
@corkscrew_setup.ram_split = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"5:3\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"3:1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"3:5\00", align 1
@Wn3_Options = common dso_local global i32 0, align 4
@Wn3_Config = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"  Internal config register is %4.4x, transceivers %#x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"  %dK %s-wide RAM %s Rx:Tx split, %s%s interface.\0A\00", align 1
@Ram_size = common dso_local global i32 0, align 4
@Ram_width = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@Ram_split = common dso_local global i32 0, align 4
@Ram_split_shift = common dso_local global i32 0, align 4
@Autoselect = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"autoselect/\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@media_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@Xcvr = common dso_local global i32 0, align 4
@Xcvr_shift = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"  Media override to transceiver type %d (%s).\0A\00", align 1
@netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@root_corkscrew_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.pnp_dev*, i32)* @corkscrew_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_setup(%struct.net_device* %0, i32 %1, %struct.pnp_dev* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnp_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.corkscrew_private*, align 8
  %10 = alloca [64 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pnp_dev* %2, %struct.pnp_dev** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %17)
  store %struct.corkscrew_private* %18, %struct.corkscrew_private** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 8194
  %21 = call i32 @inw(i32 %20)
  %22 = and i32 %21, 15
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 8192
  %31 = call i32 @inw(i32 %30)
  %32 = and i32 %31, 7
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %36 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %41 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %44 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %43, i32 0, i32 14
  store %struct.net_device* %42, %struct.net_device** %44, align 8
  %45 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %46 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MAX_UNITS, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %55 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 8
  br label %64

56:                                               ; preds = %49
  %57 = load i32*, i32** @options, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %63 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %53
  br label %65

65:                                               ; preds = %64, %4
  %66 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %67 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  %71 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %72 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 7
  %75 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %76 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %78 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %83 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %86 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 8
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %93 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %95 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 16
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %102 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  br label %110

103:                                              ; preds = %65
  %104 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %105 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %104, i32 0, i32 2
  store i32 7, i32* %105, align 4
  %106 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %107 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %106, i32 0, i32 3
  store i32 0, i32* %107, align 8
  %108 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %109 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %108, i32 0, i32 4
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %84
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %115 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %113, i8* %116, i32 %117)
  %119 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %120 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %119, i32 0, i32 12
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %123 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %122, i32 0, i32 11
  %124 = load i32, i32* @corkscrew_timer, align 4
  %125 = call i32 @timer_setup(i32* %123, i32 %124, i32 0)
  %126 = call i32 @EL3WINDOW(i32 0)
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %187, %110
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 24
  br i1 %129, label %130, label %190

130:                                              ; preds = %127
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = zext i32 %133 to i64
  %135 = inttoptr i64 %134 to i32*
  store i32* %135, i32** %14, align 8
  %136 = load i64, i64* @EEPROM_Read, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @Wn0EepromCmd, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i32 @outw(i64 %139, i32 %142)
  store i32 4, i32* %15, align 4
  br label %144

144:                                              ; preds = %157, %130
  %145 = load i32, i32* %15, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = call i32 @udelay(i32 162)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @Wn0EepromCmd, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @inw(i32 %151)
  %153 = and i32 %152, 512
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %160

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %15, align 4
  br label %144

160:                                              ; preds = %155, %144
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @Wn0EepromData, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @inw(i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %166
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %11, align 4
  %173 = xor i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %176, label %186

176:                                              ; preds = %160
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @htons(i32 %180)
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %176, %160
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %127

190:                                              ; preds = %127
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = lshr i32 %192, 8
  %194 = xor i32 %191, %193
  %195 = and i32 %194, 255
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %198, %190
  %202 = load %struct.net_device*, %struct.net_device** %5, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 16
  %207 = load i32, i32* %206, align 16
  %208 = icmp eq i32 %207, 4551
  br i1 %208, label %209, label %228

209:                                              ; preds = %201
  %210 = load %struct.net_device*, %struct.net_device** %5, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @request_dma(i32 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %209
  %216 = load %struct.net_device*, %struct.net_device** %5, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @pr_cont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  %220 = load %struct.net_device*, %struct.net_device** %5, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 2
  store i32 0, i32* %221, align 8
  br label %227

222:                                              ; preds = %209
  %223 = load %struct.net_device*, %struct.net_device** %5, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %222, %215
  br label %228

228:                                              ; preds = %227, %201
  %229 = load %struct.net_device*, %struct.net_device** %5, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @corkscrew_debug, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %228
  %236 = load %struct.net_device*, %struct.net_device** %5, align 8
  %237 = getelementptr inbounds %struct.net_device, %struct.net_device* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp sle i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %235
  %241 = load %struct.net_device*, %struct.net_device** %5, align 8
  %242 = getelementptr inbounds %struct.net_device, %struct.net_device* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %243, 15
  br i1 %244, label %245, label %247

245:                                              ; preds = %240, %235
  %246 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %240, %228
  %248 = call i32 @EL3WINDOW(i32 3)
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* @Wn3_Options, align 4
  %251 = add nsw i32 %249, %250
  %252 = call i32 @inw(i32 %251)
  %253 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %254 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* @Wn3_Config, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @inl(i64 %258)
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* @corkscrew_debug, align 4
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %262, label %269

262:                                              ; preds = %247
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @Wn3_Options, align 4
  %266 = add nsw i32 %264, %265
  %267 = call i32 @inw(i32 %266)
  %268 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 %263, i32 %267)
  br label %269

269:                                              ; preds = %262, %247
  %270 = load i32, i32* %16, align 4
  %271 = shl i32 8, %270
  %272 = load i32, i32* @Ram_size, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @Ram_width, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* @Ram_split, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* @Ram_split_shift, align 4
  %284 = ashr i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8*], [4 x i8*]* @corkscrew_setup.ram_split, i64 0, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* @Autoselect, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** @media_tbl, align 8
  %295 = load i32, i32* %16, align 4
  %296 = load i32, i32* @Xcvr, align 4
  %297 = and i32 %295, %296
  %298 = load i32, i32* @Xcvr_shift, align 4
  %299 = ashr i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %273, i8* %279, i8* %287, i8* %293, i32 %303)
  %305 = load i32, i32* %16, align 4
  %306 = load i32, i32* @Xcvr, align 4
  %307 = and i32 %305, %306
  %308 = load i32, i32* @Xcvr_shift, align 4
  %309 = ashr i32 %307, %308
  %310 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %311 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %310, i32 0, i32 6
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* @Autoselect, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 1, i32 0
  %318 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %319 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %318, i32 0, i32 7
  store i32 %317, i32* %319, align 8
  %320 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %321 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.net_device*, %struct.net_device** %5, align 8
  %324 = getelementptr inbounds %struct.net_device, %struct.net_device* %323, i32 0, i32 5
  store i32 %322, i32* %324, align 4
  %325 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %326 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 7
  br i1 %328, label %329, label %347

329:                                              ; preds = %269
  %330 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %331 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** @media_tbl, align 8
  %334 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %335 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %332, i32 %340)
  %342 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %343 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.net_device*, %struct.net_device** %5, align 8
  %346 = getelementptr inbounds %struct.net_device, %struct.net_device* %345, i32 0, i32 5
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %329, %269
  %348 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 16
  %349 = load i32, i32* %348, align 16
  %350 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %351 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 4
  %352 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %353 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %352, i32 0, i32 8
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 32
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 1, i32 0
  %359 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %360 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %359, i32 0, i32 9
  store i32 %358, i32* %360, align 8
  %361 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %362 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %361, i32 0, i32 8
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, 32
  %365 = icmp ne i32 %364, 0
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i32 1, i32 0
  %368 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %369 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %368, i32 0, i32 10
  store i32 %367, i32* %369, align 4
  %370 = load %struct.net_device*, %struct.net_device** %5, align 8
  %371 = getelementptr inbounds %struct.net_device, %struct.net_device* %370, i32 0, i32 8
  store i32* @netdev_ops, i32** %371, align 8
  %372 = load i32, i32* @HZ, align 4
  %373 = mul nsw i32 400, %372
  %374 = sdiv i32 %373, 1000
  %375 = load %struct.net_device*, %struct.net_device** %5, align 8
  %376 = getelementptr inbounds %struct.net_device, %struct.net_device* %375, i32 0, i32 6
  store i32 %374, i32* %376, align 8
  %377 = load %struct.net_device*, %struct.net_device** %5, align 8
  %378 = getelementptr inbounds %struct.net_device, %struct.net_device* %377, i32 0, i32 7
  store i32* @netdev_ethtool_ops, i32** %378, align 8
  %379 = load %struct.net_device*, %struct.net_device** %5, align 8
  %380 = call i32 @register_netdev(%struct.net_device* %379)
  ret i32 %380
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @outw(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i64 @request_dma(i32, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
