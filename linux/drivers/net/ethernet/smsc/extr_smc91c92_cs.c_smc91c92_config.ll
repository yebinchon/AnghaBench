; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc91c92_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc91c92_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, i32 }
%struct.smc_private = type { i32, i64, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"smc91c92_config\0A\00", align 1
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@PRODID_MEGAHERTZ_VARIOUS = common dso_local global i64 0, align 8
@PRODID_MEGAHERTZ_EM3288 = common dso_local global i64 0, align 8
@smc_interrupt = common dso_local global i32 0, align 4
@if_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid if_port requested\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to find hardware address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"92\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"96\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"94\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"95\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"100-FD\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"110\00", align 1
@MEMINFO = common dso_local global i64 0, align 8
@MEMCFG = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i64 0, align 8
@CFG_AUI_SELECT = common dso_local global i32 0, align 4
@CFG_NO_WAIT = common dso_local global i32 0, align 4
@CFG_16BIT = common dso_local global i32 0, align 4
@CFG_STATIC = common dso_local global i32 0, align 4
@CFG_IRQ_SEL_1 = common dso_local global i32 0, align 4
@CFG_IRQ_SEL_0 = common dso_local global i32 0, align 4
@CFG_MII_SELECT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"smc91c%s rev %d: io %#3lx, irq %d, hw_addr %pM\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"  %lu byte\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"  %lu kb\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c" buffer, %s xcvr\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"MII\00", align 1
@if_names = common dso_local global i8** null, align 8
@.str.17 = private unnamed_addr constant [42 x i8] c"  MII transceiver at index %d, status %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"  No MII transceivers found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @smc91c92_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc91c92_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 4
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.smc_private* @netdev_priv(%struct.net_device* %16)
  store %struct.smc_private* %17, %struct.smc_private** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 2
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %25 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %30 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %32 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 130
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %37 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = call i32 @osi_config(%struct.pcmcia_device* %42)
  store i32 %43, i32* %7, align 4
  br label %73

44:                                               ; preds = %35, %1
  %45 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %46 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 132
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %51 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 133
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %56 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PRODID_MEGAHERTZ_VARIOUS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %62 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PRODID_MEGAHERTZ_EM3288, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %54, %44
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %68 = call i32 @mhz_mfc_config(%struct.pcmcia_device* %67)
  store i32 %68, i32* %7, align 4
  br label %72

69:                                               ; preds = %60, %49
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %71 = call i32 @smc_config(%struct.pcmcia_device* %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %382

77:                                               ; preds = %73
  %78 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %79 = load i32, i32* @smc_interrupt, align 4
  %80 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %382

84:                                               ; preds = %77
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %86 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %382

90:                                               ; preds = %84
  %91 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %92 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 132
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = call i32 @mot_config(%struct.pcmcia_device* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %100 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @if_port, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load i32, i32* @if_port, align 4
  %108 = icmp sle i32 %107, 2
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @if_port, align 4
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %117

113:                                              ; preds = %106, %98
  %114 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %115 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %114, i32 0, i32 2
  %116 = call i32 @dev_notice(i32* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %119 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %137 [
    i32 130, label %121
    i32 129, label %121
    i32 128, label %130
    i32 131, label %130
    i32 296, label %133
    i32 133, label %133
    i32 132, label %136
  ]

121:                                              ; preds = %117, %117
  %122 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %123 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %124 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %127 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @osi_setup(%struct.pcmcia_device* %122, i32 %125, i64 %128)
  store i32 %129, i32* %7, align 4
  br label %140

130:                                              ; preds = %117, %117
  %131 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %132 = call i32 @smc_setup(%struct.pcmcia_device* %131)
  store i32 %132, i32* %7, align 4
  br label %140

133:                                              ; preds = %117, %117
  %134 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %135 = call i32 @mhz_setup(%struct.pcmcia_device* %134)
  store i32 %135, i32* %7, align 4
  br label %140

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %117, %136
  %138 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %139 = call i32 @mot_setup(%struct.pcmcia_device* %138)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %137, %133, %130, %121
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %145 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %144, i32 0, i32 2
  %146 = call i32 @dev_notice(i32* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %382

147:                                              ; preds = %140
  %148 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %149 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %148, i32 0, i32 5
  store i64 0, i64* %149, align 8
  %150 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %151 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %150, i32 0, i32 4
  store i64 0, i64* %151, align 8
  %152 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %153 = call i32 @check_sig(%struct.pcmcia_device* %152)
  store i32 %153, i32* %8, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %147
  %157 = load i32, i32* %8, align 4
  %158 = ashr i32 %157, 4
  switch i32 %158, label %170 [
    i32 3, label %159
    i32 4, label %160
    i32 5, label %166
    i32 7, label %167
    i32 8, label %168
    i32 9, label %169
  ]

159:                                              ; preds = %156
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %170

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = and i32 %161, 15
  %163 = icmp sge i32 %162, 6
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  store i8* %165, i8** %6, align 8
  br label %170

166:                                              ; preds = %156
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %170

167:                                              ; preds = %156
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %170

168:                                              ; preds = %156
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %170

169:                                              ; preds = %156
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %170

170:                                              ; preds = %156, %169, %168, %167, %166, %160, %159
  br label %171

171:                                              ; preds = %170, %147
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %253

177:                                              ; preds = %171
  %178 = call i32 @SMC_SELECT_BANK(i32 0)
  %179 = load i32, i32* %10, align 4
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* @MEMINFO, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @inw(i64 %182)
  %184 = and i32 %183, 255
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %185, 255
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %187, %177
  %191 = load i32, i32* %8, align 4
  %192 = ashr i32 %191, 4
  %193 = icmp sgt i32 %192, 3
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* %10, align 4
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* @MEMCFG, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @inw(i64 %198)
  br label %201

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %194
  %202 = phi i32 [ %199, %194 ], [ 512, %200 ]
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = ashr i32 %203, 9
  %205 = and i32 %204, 7
  %206 = shl i32 1, %205
  %207 = mul nsw i32 128, %206
  %208 = load i32, i32* %11, align 4
  %209 = mul nsw i32 %208, %207
  store i32 %209, i32* %11, align 4
  %210 = call i32 @SMC_SELECT_BANK(i32 1)
  %211 = load i32, i32* %10, align 4
  %212 = zext i32 %211 to i64
  %213 = load i64, i64* @CONFIG, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @inw(i64 %214)
  %216 = load i32, i32* @CFG_AUI_SELECT, align 4
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  %219 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %220 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @CFG_NO_WAIT, align 4
  %222 = load i32, i32* @CFG_16BIT, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CFG_STATIC, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %227 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %231 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 130
  br i1 %233, label %234, label %242

234:                                              ; preds = %201
  %235 = load i32, i32* @CFG_IRQ_SEL_1, align 4
  %236 = load i32, i32* @CFG_IRQ_SEL_0, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %239 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %234, %201
  %243 = load i32, i32* %8, align 4
  %244 = ashr i32 %243, 4
  %245 = icmp sge i32 %244, 7
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = load i32, i32* @CFG_MII_SELECT, align 4
  %248 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %249 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %246, %242
  br label %254

253:                                              ; preds = %171
  store i32 0, i32* %11, align 4
  br label %254

254:                                              ; preds = %253, %252
  %255 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %256 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @CFG_MII_SELECT, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %292

261:                                              ; preds = %254
  %262 = call i32 @SMC_SELECT_BANK(i32 3)
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %277, %261
  %264 = load i32, i32* %7, align 4
  %265 = icmp slt i32 %264, 32
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load %struct.net_device*, %struct.net_device** %4, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @mdio_read(%struct.net_device* %267, i32 %268, i32 1)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 65535
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  br label %280

276:                                              ; preds = %272, %266
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %263

280:                                              ; preds = %275, %263
  %281 = load i32, i32* %7, align 4
  %282 = icmp slt i32 %281, 32
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i32, i32* %7, align 4
  br label %286

285:                                              ; preds = %280
  br label %286

286:                                              ; preds = %285, %283
  %287 = phi i32 [ %284, %283 ], [ -1, %285 ]
  %288 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %289 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  store i32 %287, i32* %290, align 4
  %291 = call i32 @SMC_SELECT_BANK(i32 0)
  br label %292

292:                                              ; preds = %286, %254
  %293 = load %struct.net_device*, %struct.net_device** %4, align 8
  %294 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %295 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %294, i32 0, i32 2
  %296 = call i32 @SET_NETDEV_DEV(%struct.net_device* %293, i32* %295)
  %297 = load %struct.net_device*, %struct.net_device** %4, align 8
  %298 = call i64 @register_netdev(%struct.net_device* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %292
  %301 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %302 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %301, i32 0, i32 2
  %303 = call i32 @dev_err(i32* %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %379

304:                                              ; preds = %292
  %305 = load %struct.net_device*, %struct.net_device** %4, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = load i32, i32* %8, align 4
  %308 = and i32 %307, 15
  %309 = load %struct.net_device*, %struct.net_device** %4, align 8
  %310 = getelementptr inbounds %struct.net_device, %struct.net_device* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.net_device*, %struct.net_device** %4, align 8
  %313 = getelementptr inbounds %struct.net_device, %struct.net_device* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.net_device*, %struct.net_device** %4, align 8
  %316 = getelementptr inbounds %struct.net_device, %struct.net_device* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %305, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8* %306, i32 %308, i32 %311, i32 %314, i32 %317)
  %319 = load i32, i32* %8, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %353

321:                                              ; preds = %304
  %322 = load i32, i32* %11, align 4
  %323 = and i32 %322, 1023
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load %struct.net_device*, %struct.net_device** %4, align 8
  %327 = load i32, i32* %11, align 4
  %328 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %327)
  br label %334

329:                                              ; preds = %321
  %330 = load %struct.net_device*, %struct.net_device** %4, align 8
  %331 = load i32, i32* %11, align 4
  %332 = ashr i32 %331, 10
  %333 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %329, %325
  %335 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %336 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @CFG_MII_SELECT, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %334
  br label %350

342:                                              ; preds = %334
  %343 = load i8**, i8*** @if_names, align 8
  %344 = load %struct.net_device*, %struct.net_device** %4, align 8
  %345 = getelementptr inbounds %struct.net_device, %struct.net_device* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %343, i64 %347
  %349 = load i8*, i8** %348, align 8
  br label %350

350:                                              ; preds = %342, %341
  %351 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %341 ], [ %349, %342 ]
  %352 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %351)
  br label %353

353:                                              ; preds = %350, %304
  %354 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %355 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @CFG_MII_SELECT, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %378

360:                                              ; preds = %353
  %361 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %362 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, -1
  br i1 %365, label %366, label %374

366:                                              ; preds = %360
  %367 = load %struct.net_device*, %struct.net_device** %4, align 8
  %368 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %369 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %9, align 4
  %373 = call i32 @netdev_dbg(%struct.net_device* %367, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %371, i32 %372)
  br label %377

374:                                              ; preds = %360
  %375 = load %struct.net_device*, %struct.net_device** %4, align 8
  %376 = call i32 @netdev_notice(%struct.net_device* %375, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %377

377:                                              ; preds = %374, %366
  br label %378

378:                                              ; preds = %377, %353
  store i32 0, i32* %2, align 4
  br label %389

379:                                              ; preds = %300
  %380 = load %struct.net_device*, %struct.net_device** %4, align 8
  %381 = call i32 @unregister_netdev(%struct.net_device* %380)
  br label %382

382:                                              ; preds = %379, %143, %89, %83, %76
  %383 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %384 = call i32 @smc91c92_release(%struct.pcmcia_device* %383)
  %385 = load %struct.net_device*, %struct.net_device** %4, align 8
  %386 = call i32 @free_netdev(%struct.net_device* %385)
  %387 = load i32, i32* @ENODEV, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %2, align 4
  br label %389

389:                                              ; preds = %382, %378
  %390 = load i32, i32* %2, align 4
  ret i32 %390
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @osi_config(%struct.pcmcia_device*) #1

declare dso_local i32 @mhz_mfc_config(%struct.pcmcia_device*) #1

declare dso_local i32 @smc_config(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @mot_config(%struct.pcmcia_device*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @osi_setup(%struct.pcmcia_device*, i32, i64) #1

declare dso_local i32 @smc_setup(%struct.pcmcia_device*) #1

declare dso_local i32 @mhz_setup(%struct.pcmcia_device*) #1

declare dso_local i32 @mot_setup(%struct.pcmcia_device*) #1

declare dso_local i32 @check_sig(%struct.pcmcia_device*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @smc91c92_release(%struct.pcmcia_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
