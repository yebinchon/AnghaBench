; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i32, i32, i32, %struct.TYPE_3__**, i64, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32, i64*, i64 }
%struct.local_info = type { i8*, i32, i64, i64, i32*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"config\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"manfid not found in CIS\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Xircom\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Accton\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Compaq\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Toshiba\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unknown Card Manufacturer ID: 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"found %s card\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"this card is not supported\0A\00", align 1
@CISTPL_FUNCE_LAN_NODE_ID = common dso_local global i64 0, align 8
@CISTPL_FUNCE = common dso_local global i32 0, align 4
@pcmcia_get_mac_ce = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"node-id not found in CIS\0A\00", align 1
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@xirc2ps_config_modem = common dso_local global i32 0, align 4
@xirc2ps_config_check = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"no ports available\0A\00", align 1
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@xirc2ps_interrupt = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@do_sound = common dso_local global i64 0, align 8
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CISREG_IOBASE_0 = common dso_local global i32 0, align 4
@CISREG_IOBASE_1 = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_AM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@CISREG_COR = common dso_local global i32 0, align 4
@if_port = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid if_port requested\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: port %#3lx, irq %d, hwaddr %pM\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @xirc2ps_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xirc2ps_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.local_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 7
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.local_info* @netdev_priv(%struct.net_device* %15)
  store %struct.local_info* %16, %struct.local_info** %5, align 8
  %17 = load %struct.local_info*, %struct.local_info** %5, align 8
  %18 = getelementptr inbounds %struct.local_info, %struct.local_info* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 3
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %476

28:                                               ; preds = %1
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %47 [
    i32 128, label %32
    i32 133, label %35
    i32 132, label %38
    i32 131, label %38
    i32 130, label %41
    i32 129, label %44
  ]

32:                                               ; preds = %28
  %33 = load %struct.local_info*, %struct.local_info** %5, align 8
  %34 = getelementptr inbounds %struct.local_info, %struct.local_info* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  br label %52

35:                                               ; preds = %28
  %36 = load %struct.local_info*, %struct.local_info** %5, align 8
  %37 = getelementptr inbounds %struct.local_info, %struct.local_info* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 8
  br label %52

38:                                               ; preds = %28, %28
  %39 = load %struct.local_info*, %struct.local_info** %5, align 8
  %40 = getelementptr inbounds %struct.local_info, %struct.local_info* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 8
  br label %52

41:                                               ; preds = %28
  %42 = load %struct.local_info*, %struct.local_info** %5, align 8
  %43 = getelementptr inbounds %struct.local_info, %struct.local_info* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %43, align 8
  br label %52

44:                                               ; preds = %28
  %45 = load %struct.local_info*, %struct.local_info** %5, align 8
  %46 = getelementptr inbounds %struct.local_info, %struct.local_info* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %46, align 8
  br label %52

47:                                               ; preds = %28
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  br label %476

52:                                               ; preds = %44, %41, %38, %35, %32
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 3
  %55 = load %struct.local_info*, %struct.local_info** %5, align 8
  %56 = getelementptr inbounds %struct.local_info, %struct.local_info* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %57)
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = call i32 @set_card_type(%struct.pcmcia_device* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %476

64:                                               ; preds = %52
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @pcmcia_get_mac_from_cis(%struct.pcmcia_device* %65, %struct.net_device* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %109

70:                                               ; preds = %64
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %71, i32 137, i64** %8)
  store i64 %72, i64* %9, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = load i64, i64* %9, align 8
  %77 = icmp eq i64 %76, 8
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = load i64*, i64** %8, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CISTPL_FUNCE_LAN_NODE_ID, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  store i32 2, i32* %10, align 4
  br label %84

84:                                               ; preds = %100, %83
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 6
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i64*, i64** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %84

103:                                              ; preds = %84
  br label %105

104:                                              ; preds = %78
  store i32 -1, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %75, %70
  %107 = load i64*, i64** %8, align 8
  %108 = call i32 @kfree(i64* %107)
  br label %109

109:                                              ; preds = %106, %64
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %114 = load i32, i32* @CISTPL_FUNCE, align 4
  %115 = load i32, i32* @pcmcia_get_mac_ce, align 4
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i32 @pcmcia_loop_tuple(%struct.pcmcia_device* %113, i32 %114, i32 %115, %struct.net_device* %116)
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %112, %109
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %476

123:                                              ; preds = %118
  %124 = load %struct.local_info*, %struct.local_info** %5, align 8
  %125 = getelementptr inbounds %struct.local_info, %struct.local_info* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %162

128:                                              ; preds = %123
  %129 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %130 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %131 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.local_info*, %struct.local_info** %5, align 8
  %135 = getelementptr inbounds %struct.local_info, %struct.local_info* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %128
  %139 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %140 = load i32, i32* @xirc2ps_config_modem, align 4
  %141 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %139, i32 %140, i32* null)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %212

144:                                              ; preds = %138
  br label %160

145:                                              ; preds = %128
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %156, %145
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %151 = load i32, i32* @xirc2ps_config_check, align 4
  %152 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %150, i32 %151, i32* %11)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  br label %212

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %146

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %144
  %161 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %211

162:                                              ; preds = %123
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %164 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %163, i32 0, i32 2
  store i32 10, i32* %164, align 4
  %165 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %166 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %165, i32 0, i32 4
  %167 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %167, i64 0
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i32 16, i32* %170, align 4
  %171 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %172 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %173 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %172, i32 0, i32 4
  %174 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %174, i64 0
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %171
  store i32 %179, i32* %177, align 4
  store i32 768, i32* %6, align 4
  br label %180

180:                                              ; preds = %196, %162
  %181 = load i32, i32* %6, align 4
  %182 = icmp ult i32 %181, 1024
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %186 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %185, i32 0, i32 4
  %187 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %187, i64 0
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store i32 %184, i32* %190, align 4
  %191 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %192 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %191)
  store i32 %192, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %183
  br label %212

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %6, align 4
  %198 = add i32 %197, 16
  store i32 %198, i32* %6, align 4
  br label %180

199:                                              ; preds = %180
  %200 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %201 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %200, i32 0, i32 4
  %202 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %202, i64 0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  store i32 0, i32* %205, align 4
  %206 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %207 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %206)
  store i32 %207, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %471

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210, %160
  br label %212

212:                                              ; preds = %211, %194, %154, %143
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %471

216:                                              ; preds = %212
  %217 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %218 = load i32, i32* @xirc2ps_interrupt, align 4
  %219 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %217, i32 %218)
  store i32 %219, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %471

222:                                              ; preds = %216
  %223 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %224 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %225 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load i64, i64* @do_sound, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %222
  %231 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %232 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %233 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %230, %222
  %237 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %238 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %237)
  store i32 %238, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %471

241:                                              ; preds = %236
  %242 = load %struct.local_info*, %struct.local_info** %5, align 8
  %243 = getelementptr inbounds %struct.local_info, %struct.local_info* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %392

246:                                              ; preds = %241
  %247 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %248 = load i32, i32* @CISREG_IOBASE_0, align 4
  %249 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %250 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %249, i32 0, i32 4
  %251 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %251, i64 1
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  %257 = and i64 %256, 255
  %258 = trunc i64 %257 to i32
  %259 = call i32 @pcmcia_write_config_byte(%struct.pcmcia_device* %247, i32 %248, i32 %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %246
  br label %471

263:                                              ; preds = %246
  %264 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %265 = load i32, i32* @CISREG_IOBASE_1, align 4
  %266 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %267 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %266, i32 0, i32 4
  %268 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %268, i64 1
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = lshr i32 %272, 8
  %274 = and i32 %273, 255
  %275 = call i32 @pcmcia_write_config_byte(%struct.pcmcia_device* %264, i32 %265, i32 %274)
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %263
  br label %471

279:                                              ; preds = %263
  %280 = load i32, i32* @WIN_DATA_WIDTH_8, align 4
  %281 = load i32, i32* @WIN_MEMORY_TYPE_AM, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @WIN_ENABLE, align 4
  %284 = or i32 %282, %283
  %285 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %286 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %285, i32 0, i32 4
  %287 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %287, i64 2
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  store i32 %284, i32* %290, align 4
  %291 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %292 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %291, i32 0, i32 4
  %293 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %293, i64 2
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  store i32 0, i32* %296, align 4
  %297 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %298 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %297, i32 0, i32 4
  %299 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %299, i64 2
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  store i32 0, i32* %302, align 4
  %303 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %304 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %305 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %304, i32 0, i32 4
  %306 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %306, i64 2
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %307, align 8
  %309 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %303, %struct.TYPE_3__* %308, i32 0)
  store i32 %309, i32* %7, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %279
  br label %471

312:                                              ; preds = %279
  %313 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %314 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %313, i32 0, i32 4
  %315 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %315, i64 2
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32* @ioremap(i32 %319, i32 4096)
  %321 = getelementptr inbounds i32, i32* %320, i64 2048
  %322 = load %struct.local_info*, %struct.local_info** %5, align 8
  %323 = getelementptr inbounds %struct.local_info, %struct.local_info* %322, i32 0, i32 4
  store i32* %321, i32** %323, align 8
  %324 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %325 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %326 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %325, i32 0, i32 4
  %327 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %327, i64 2
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %328, align 8
  %330 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %324, %struct.TYPE_3__* %329, i32 0)
  store i32 %330, i32* %7, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %312
  br label %471

333:                                              ; preds = %312
  %334 = load %struct.local_info*, %struct.local_info** %5, align 8
  %335 = getelementptr inbounds %struct.local_info, %struct.local_info* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* @CISREG_COR, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = call i32 @writeb(i32 71, i32* %339)
  %341 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %342 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %341, i32 0, i32 4
  %343 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %343, i64 0
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %6, align 4
  %349 = and i32 %348, 255
  %350 = load %struct.local_info*, %struct.local_info** %5, align 8
  %351 = getelementptr inbounds %struct.local_info, %struct.local_info* %350, i32 0, i32 4
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* @CISREG_IOBASE_0, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = call i32 @writeb(i32 %349, i32* %355)
  %357 = load i32, i32* %6, align 4
  %358 = lshr i32 %357, 8
  %359 = and i32 %358, 255
  %360 = load %struct.local_info*, %struct.local_info** %5, align 8
  %361 = getelementptr inbounds %struct.local_info, %struct.local_info* %360, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* @CISREG_IOBASE_1, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = call i32 @writeb(i32 %359, i32* %365)
  %367 = load %struct.local_info*, %struct.local_info** %5, align 8
  %368 = getelementptr inbounds %struct.local_info, %struct.local_info* %367, i32 0, i32 4
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 32
  %371 = call i32 @writeb(i32 1, i32* %370)
  %372 = load %struct.local_info*, %struct.local_info** %5, align 8
  %373 = getelementptr inbounds %struct.local_info, %struct.local_info* %372, i32 0, i32 4
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 34
  %376 = call i32 @writeb(i32 12, i32* %375)
  %377 = load %struct.local_info*, %struct.local_info** %5, align 8
  %378 = getelementptr inbounds %struct.local_info, %struct.local_info* %377, i32 0, i32 4
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 36
  %381 = call i32 @writeb(i32 0, i32* %380)
  %382 = load %struct.local_info*, %struct.local_info** %5, align 8
  %383 = getelementptr inbounds %struct.local_info, %struct.local_info* %382, i32 0, i32 4
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 38
  %386 = call i32 @writeb(i32 0, i32* %385)
  %387 = load %struct.local_info*, %struct.local_info** %5, align 8
  %388 = getelementptr inbounds %struct.local_info, %struct.local_info* %387, i32 0, i32 4
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 40
  %391 = call i32 @writeb(i32 0, i32* %390)
  br label %392

392:                                              ; preds = %333, %241
  %393 = load %struct.local_info*, %struct.local_info** %5, align 8
  %394 = getelementptr inbounds %struct.local_info, %struct.local_info* %393, i32 0, i32 1
  store i32 0, i32* %394, align 8
  %395 = load i32, i32* @if_port, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %392
  %398 = load %struct.net_device*, %struct.net_device** %4, align 8
  %399 = getelementptr inbounds %struct.net_device, %struct.net_device* %398, i32 0, i32 0
  store i32 1, i32* %399, align 8
  %400 = load %struct.local_info*, %struct.local_info** %5, align 8
  %401 = getelementptr inbounds %struct.local_info, %struct.local_info* %400, i32 0, i32 1
  store i32 1, i32* %401, align 8
  br label %423

402:                                              ; preds = %392
  %403 = load i32, i32* @if_port, align 4
  %404 = icmp sge i32 %403, 1
  br i1 %404, label %405, label %408

405:                                              ; preds = %402
  %406 = load i32, i32* @if_port, align 4
  %407 = icmp sle i32 %406, 2
  br i1 %407, label %416, label %408

408:                                              ; preds = %405, %402
  %409 = load %struct.local_info*, %struct.local_info** %5, align 8
  %410 = getelementptr inbounds %struct.local_info, %struct.local_info* %409, i32 0, i32 3
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %408
  %414 = load i32, i32* @if_port, align 4
  %415 = icmp eq i32 %414, 4
  br i1 %415, label %416, label %420

416:                                              ; preds = %413, %405
  %417 = load i32, i32* @if_port, align 4
  %418 = load %struct.net_device*, %struct.net_device** %4, align 8
  %419 = getelementptr inbounds %struct.net_device, %struct.net_device* %418, i32 0, i32 0
  store i32 %417, i32* %419, align 8
  br label %422

420:                                              ; preds = %413, %408
  %421 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %422

422:                                              ; preds = %420, %416
  br label %423

423:                                              ; preds = %422, %397
  %424 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %425 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.net_device*, %struct.net_device** %4, align 8
  %428 = getelementptr inbounds %struct.net_device, %struct.net_device* %427, i32 0, i32 3
  store i64 %426, i64* %428, align 8
  %429 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %430 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %429, i32 0, i32 4
  %431 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %431, i64 0
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.net_device*, %struct.net_device** %4, align 8
  %437 = getelementptr inbounds %struct.net_device, %struct.net_device* %436, i32 0, i32 1
  store i32 %435, i32* %437, align 4
  %438 = load %struct.local_info*, %struct.local_info** %5, align 8
  %439 = getelementptr inbounds %struct.local_info, %struct.local_info* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %423
  %443 = load %struct.net_device*, %struct.net_device** %4, align 8
  %444 = call i32 @do_reset(%struct.net_device* %443, i32 1)
  br label %445

445:                                              ; preds = %442, %423
  %446 = load %struct.net_device*, %struct.net_device** %4, align 8
  %447 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %448 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %447, i32 0, i32 3
  %449 = call i32 @SET_NETDEV_DEV(%struct.net_device* %446, i32* %448)
  %450 = load %struct.net_device*, %struct.net_device** %4, align 8
  %451 = call i32 @register_netdev(%struct.net_device* %450)
  store i32 %451, i32* %7, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %445
  %454 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %471

455:                                              ; preds = %445
  %456 = load %struct.net_device*, %struct.net_device** %4, align 8
  %457 = load %struct.local_info*, %struct.local_info** %5, align 8
  %458 = getelementptr inbounds %struct.local_info, %struct.local_info* %457, i32 0, i32 0
  %459 = load i8*, i8** %458, align 8
  %460 = load %struct.net_device*, %struct.net_device** %4, align 8
  %461 = getelementptr inbounds %struct.net_device, %struct.net_device* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.net_device*, %struct.net_device** %4, align 8
  %464 = getelementptr inbounds %struct.net_device, %struct.net_device* %463, i32 0, i32 3
  %465 = load i64, i64* %464, align 8
  %466 = trunc i64 %465 to i32
  %467 = load %struct.net_device*, %struct.net_device** %4, align 8
  %468 = getelementptr inbounds %struct.net_device, %struct.net_device* %467, i32 0, i32 2
  %469 = load i64*, i64** %468, align 8
  %470 = call i32 @netdev_info(%struct.net_device* %456, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %459, i32 %462, i32 %466, i64* %469)
  store i32 0, i32* %2, align 4
  br label %479

471:                                              ; preds = %453, %332, %311, %278, %262, %240, %221, %215, %209
  %472 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %473 = call i32 @xirc2ps_release(%struct.pcmcia_device* %472)
  %474 = load i32, i32* @ENODEV, align 4
  %475 = sub nsw i32 0, %474
  store i32 %475, i32* %2, align 4
  br label %479

476:                                              ; preds = %121, %62, %47, %26
  %477 = load i32, i32* @ENODEV, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %2, align 4
  br label %479

479:                                              ; preds = %476, %471, %455
  %480 = load i32, i32* %2, align 4
  ret i32 %480
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @set_card_type(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_get_mac_from_cis(%struct.pcmcia_device*, %struct.net_device*) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i64**) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @pcmcia_loop_tuple(%struct.pcmcia_device*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_write_config_byte(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @do_reset(%struct.net_device*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, i32, i32, i64*) #1

declare dso_local i32 @xirc2ps_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
