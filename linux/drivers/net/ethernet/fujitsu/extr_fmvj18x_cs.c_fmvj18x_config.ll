; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fmvj18x_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fmvj18x_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__**, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32, i8**, i32 }
%struct.local_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fmvj18x_config\0A\00", align 1
@CISTPL_FUNCE = common dso_local global i32 0, align 4
@fmvj18x_ioprobe = common dso_local global i32 0, align 4
@PRODID_TDK_GN3410 = common dso_local global i32 0, align 4
@PRODID_TDK_NP9610 = common dso_local global i32 0, align 4
@PRODID_TDK_MN3200 = common dso_local global i32 0, align 4
@PRODID_FUJITSU_MBH10302 = common dso_local global i32 0, align 4
@PRODID_FUJITSU_MBH10304 = common dso_local global i32 0, align 4
@fjn_interrupt = common dso_local global i32 0, align 4
@sram_config = common dso_local global i64 0, align 8
@CONFIG0_RST = common dso_local global i32 0, align 4
@CONFIG_0 = common dso_local global i64 0, align 8
@CONFIG0_RST_1 = common dso_local global i32 0, align 4
@BANK_0 = common dso_local global i32 0, align 4
@CONFIG_1 = common dso_local global i64 0, align 8
@BANK_0U = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FMV-J182\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TDK LAK-CD021\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"LA501\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PK-UG-J001\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Panasonic\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"C-NET(PC)C\00", align 1
@UNGERMANN_MAC_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"Access/CARD\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"unable to read hardware net address\0A\00", align 1
@MAC_ID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"FMV-J181\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s, sram %s, port %#3lx, irq %d, hw_addr %pM\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"4K TX*2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"8K TX*2\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @fmvj18x_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmvj18x_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.local_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8*], align 16
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 8
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.local_info* @netdev_priv(%struct.net_device* %17)
  store %struct.local_info* %18, %struct.local_info** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 4
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = load i32, i32* @CISTPL_FUNCE, align 4
  %26 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %24, i32 %25, i8*** %11)
  store i64 %26, i64* %12, align 8
  %27 = load i8**, i8*** %11, align 8
  %28 = call i32 @kfree(i8** %27)
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %121

31:                                               ; preds = %1
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = load i32, i32* @fmvj18x_ioprobe, align 4
  %34 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %32, i32 %33, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %420

38:                                               ; preds = %31
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %119 [
    i32 135, label %42
    i32 136, label %72
    i32 137, label %83
    i32 139, label %94
    i32 138, label %95
  ]

42:                                               ; preds = %38
  store i32 130, i32* %9, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PRODID_TDK_GN3410, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PRODID_TDK_NP9610, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PRODID_TDK_MN3200, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54, %48, %42
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %61, i32 0, i32 2
  store i32 2048, i32* %62, align 8
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %64 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %63, i32 0, i32 3
  store i32 71, i32* %64, align 4
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 8, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %54
  br label %120

72:                                               ; preds = %38
  store i32 131, i32* %9, align 4
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 2
  store i32 2048, i32* %74, align 8
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 3
  store i32 71, i32* %76, align 4
  %77 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %78 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %77, i32 0, i32 5
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 8, i32* %82, align 4
  br label %120

83:                                               ; preds = %38
  store i32 141, i32* %9, align 4
  %84 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %85 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %84, i32 0, i32 2
  store i32 2048, i32* %85, align 8
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %87 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %86, i32 0, i32 3
  store i32 71, i32* %87, align 4
  %88 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %89 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %88, i32 0, i32 5
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 8, i32* %93, align 4
  br label %120

94:                                               ; preds = %38
  store i32 142, i32* %9, align 4
  br label %120

95:                                               ; preds = %38
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 4064
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 133, i32* %9, align 4
  br label %118

101:                                              ; preds = %95
  %102 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %103 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PRODID_FUJITSU_MBH10302, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 132, i32* %9, align 4
  br label %117

108:                                              ; preds = %101
  %109 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %110 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PRODID_FUJITSU_MBH10304, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 132, i32* %9, align 4
  br label %116

115:                                              ; preds = %108
  store i32 140, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116, %107
  br label %118

118:                                              ; preds = %117, %100
  br label %120

119:                                              ; preds = %38
  store i32 132, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %118, %94, %83, %72, %71
  br label %143

121:                                              ; preds = %1
  %122 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %123 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %139 [
    i32 138, label %125
    i32 134, label %138
  ]

125:                                              ; preds = %121
  %126 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %127 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PRODID_FUJITSU_MBH10304, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  store i32 128, i32* %9, align 4
  %132 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %133 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %132, i32 0, i32 3
  store i32 32, i32* %133, align 4
  br label %137

134:                                              ; preds = %125
  store i32 133, i32* %9, align 4
  %135 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %136 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %135, i32 0, i32 3
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %142

138:                                              ; preds = %121
  store i32 129, i32* %9, align 4
  br label %142

139:                                              ; preds = %121
  store i32 133, i32* %9, align 4
  %140 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %141 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %140, i32 0, i32 3
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %138, %137
  br label %143

143:                                              ; preds = %142, %120
  %144 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %145 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %144, i32 0, i32 5
  %146 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %146, i64 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %154 = call i32 @mfc_try_io_port(%struct.pcmcia_device* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %420

158:                                              ; preds = %152
  br label %177

159:                                              ; preds = %143
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 129
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %164 = call i32 @ungermann_try_io_port(%struct.pcmcia_device* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %420

168:                                              ; preds = %162
  br label %176

169:                                              ; preds = %159
  %170 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %171 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %420

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %168
  br label %177

177:                                              ; preds = %176, %158
  %178 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %179 = load i32, i32* @fjn_interrupt, align 4
  %180 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %420

184:                                              ; preds = %177
  %185 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %186 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %420

190:                                              ; preds = %184
  %191 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %192 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.net_device*, %struct.net_device** %4, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %197 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %196, i32 0, i32 5
  %198 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %198, i64 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.net_device*, %struct.net_device** %4, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %206 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %205, i32 0, i32 5
  %207 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %207, i64 1
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = call i64 @resource_size(%struct.TYPE_2__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %190
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %214 = call i32 @fmvj18x_setup_mfc(%struct.pcmcia_device* %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %420

218:                                              ; preds = %212
  br label %219

219:                                              ; preds = %218, %190
  %220 = load %struct.net_device*, %struct.net_device** %4, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %8, align 4
  %223 = load i64, i64* @sram_config, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load i32, i32* @CONFIG0_RST, align 4
  %227 = load i32, i32* %8, align 4
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* @CONFIG_0, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outb(i32 %226, i64 %230)
  br label %239

232:                                              ; preds = %219
  %233 = load i32, i32* @CONFIG0_RST_1, align 4
  %234 = load i32, i32* %8, align 4
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* @CONFIG_0, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @outb(i32 %233, i64 %237)
  br label %239

239:                                              ; preds = %232, %225
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 133
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load i32, i32* @BANK_0, align 4
  %244 = load i32, i32* %8, align 4
  %245 = zext i32 %244 to i64
  %246 = load i64, i64* @CONFIG_1, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @outb(i32 %243, i64 %247)
  br label %256

249:                                              ; preds = %239
  %250 = load i32, i32* @BANK_0U, align 4
  %251 = load i32, i32* %8, align 4
  %252 = zext i32 %251 to i64
  %253 = load i64, i64* @CONFIG_1, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @outb(i32 %250, i64 %254)
  br label %256

256:                                              ; preds = %249, %242
  %257 = load i32, i32* %9, align 4
  switch i32 %257, label %369 [
    i32 132, label %258
    i32 130, label %258
    i32 140, label %258
    i32 142, label %258
    i32 131, label %258
    i32 141, label %258
    i32 129, label %321
    i32 128, label %342
    i32 133, label %368
  ]

258:                                              ; preds = %256, %256, %256, %256, %256, %256
  %259 = load i32, i32* %9, align 4
  %260 = icmp eq i32 %259, 132
  br i1 %260, label %261, label %293

261:                                              ; preds = %258
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %262 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %263 = load i32, i32* @CISTPL_FUNCE, align 4
  %264 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %262, i32 %263, i8*** %11)
  store i64 %264, i64* %12, align 8
  %265 = load i64, i64* %12, align 8
  %266 = icmp ult i64 %265, 11
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load i8**, i8*** %11, align 8
  %269 = call i32 @kfree(i8** %268)
  br label %420

270:                                              ; preds = %261
  store i32 0, i32* %6, align 4
  br label %271

271:                                              ; preds = %287, %270
  %272 = load i32, i32* %6, align 4
  %273 = icmp slt i32 %272, 6
  br i1 %273, label %274, label %290

274:                                              ; preds = %271
  %275 = load i8**, i8*** %11, align 8
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 5
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %275, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.net_device*, %struct.net_device** %4, align 8
  %282 = getelementptr inbounds %struct.net_device, %struct.net_device* %281, i32 0, i32 1
  %283 = load i8**, i8*** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  store i8* %280, i8** %286, align 8
  br label %287

287:                                              ; preds = %274
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  br label %271

290:                                              ; preds = %271
  %291 = load i8**, i8*** %11, align 8
  %292 = call i32 @kfree(i8** %291)
  br label %320

293:                                              ; preds = %258
  %294 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %295 = load %struct.net_device*, %struct.net_device** %4, align 8
  %296 = call i32 @pcmcia_get_mac_from_cis(%struct.pcmcia_device* %294, %struct.net_device* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %420

299:                                              ; preds = %293
  %300 = load i32, i32* %9, align 4
  %301 = icmp eq i32 %300, 130
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %319

303:                                              ; preds = %299
  %304 = load i32, i32* %9, align 4
  %305 = icmp eq i32 %304, 140
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %318

307:                                              ; preds = %303
  %308 = load i32, i32* %9, align 4
  %309 = icmp eq i32 %308, 131
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %317

311:                                              ; preds = %307
  %312 = load i32, i32* %9, align 4
  %313 = icmp eq i32 %312, 141
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %316

315:                                              ; preds = %311
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %316

316:                                              ; preds = %315, %314
  br label %317

317:                                              ; preds = %316, %310
  br label %318

318:                                              ; preds = %317, %306
  br label %319

319:                                              ; preds = %318, %302
  br label %320

320:                                              ; preds = %319, %290
  br label %390

321:                                              ; preds = %256
  store i32 0, i32* %6, align 4
  br label %322

322:                                              ; preds = %338, %321
  %323 = load i32, i32* %6, align 4
  %324 = icmp slt i32 %323, 6
  br i1 %324, label %325, label %341

325:                                              ; preds = %322
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @UNGERMANN_MAC_ID, align 4
  %328 = add i32 %326, %327
  %329 = load i32, i32* %6, align 4
  %330 = add i32 %328, %329
  %331 = call i8* @inb(i32 %330)
  %332 = load %struct.net_device*, %struct.net_device** %4, align 8
  %333 = getelementptr inbounds %struct.net_device, %struct.net_device* %332, i32 0, i32 1
  %334 = load i8**, i8*** %333, align 8
  %335 = load i32, i32* %6, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8*, i8** %334, i64 %336
  store i8* %331, i8** %337, align 8
  br label %338

338:                                              ; preds = %325
  %339 = load i32, i32* %6, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %6, align 4
  br label %322

341:                                              ; preds = %322
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %390

342:                                              ; preds = %256
  %343 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %344 = getelementptr inbounds [32 x i8*], [32 x i8*]* %13, i64 0, i64 0
  %345 = call i32 @fmvj18x_get_hwinfo(%struct.pcmcia_device* %343, i8** %344)
  %346 = icmp eq i32 %345, -1
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %420

349:                                              ; preds = %342
  store i32 0, i32* %6, align 4
  br label %350

350:                                              ; preds = %364, %349
  %351 = load i32, i32* %6, align 4
  %352 = icmp slt i32 %351, 6
  br i1 %352, label %353, label %367

353:                                              ; preds = %350
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [32 x i8*], [32 x i8*]* %13, i64 0, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = load %struct.net_device*, %struct.net_device** %4, align 8
  %359 = getelementptr inbounds %struct.net_device, %struct.net_device* %358, i32 0, i32 1
  %360 = load i8**, i8*** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %360, i64 %362
  store i8* %357, i8** %363, align 8
  br label %364

364:                                              ; preds = %353
  %365 = load i32, i32* %6, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %6, align 4
  br label %350

367:                                              ; preds = %350
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %390

368:                                              ; preds = %256
  br label %369

369:                                              ; preds = %256, %368
  store i32 0, i32* %6, align 4
  br label %370

370:                                              ; preds = %386, %369
  %371 = load i32, i32* %6, align 4
  %372 = icmp slt i32 %371, 6
  br i1 %372, label %373, label %389

373:                                              ; preds = %370
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @MAC_ID, align 4
  %376 = add i32 %374, %375
  %377 = load i32, i32* %6, align 4
  %378 = add i32 %376, %377
  %379 = call i8* @inb(i32 %378)
  %380 = load %struct.net_device*, %struct.net_device** %4, align 8
  %381 = getelementptr inbounds %struct.net_device, %struct.net_device* %380, i32 0, i32 1
  %382 = load i8**, i8*** %381, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %382, i64 %384
  store i8* %379, i8** %385, align 8
  br label %386

386:                                              ; preds = %373
  %387 = load i32, i32* %6, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %6, align 4
  br label %370

389:                                              ; preds = %370
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %390

390:                                              ; preds = %389, %367, %341, %320
  %391 = load i32, i32* %9, align 4
  %392 = load %struct.local_info*, %struct.local_info** %5, align 8
  %393 = getelementptr inbounds %struct.local_info, %struct.local_info* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 4
  %394 = load %struct.net_device*, %struct.net_device** %4, align 8
  %395 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %396 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %395, i32 0, i32 4
  %397 = call i32 @SET_NETDEV_DEV(%struct.net_device* %394, i32* %396)
  %398 = load %struct.net_device*, %struct.net_device** %4, align 8
  %399 = call i64 @register_netdev(%struct.net_device* %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %390
  %402 = call i32 @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %420

403:                                              ; preds = %390
  %404 = load %struct.net_device*, %struct.net_device** %4, align 8
  %405 = load i8*, i8** %10, align 8
  %406 = load i64, i64* @sram_config, align 8
  %407 = icmp eq i64 %406, 0
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)
  %410 = load %struct.net_device*, %struct.net_device** %4, align 8
  %411 = getelementptr inbounds %struct.net_device, %struct.net_device* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.net_device*, %struct.net_device** %4, align 8
  %414 = getelementptr inbounds %struct.net_device, %struct.net_device* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.net_device*, %struct.net_device** %4, align 8
  %417 = getelementptr inbounds %struct.net_device, %struct.net_device* %416, i32 0, i32 1
  %418 = load i8**, i8*** %417, align 8
  %419 = call i32 @netdev_info(%struct.net_device* %404, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %405, i8* %409, i32 %412, i32 %415, i8** %418)
  store i32 0, i32* %2, align 4
  br label %425

420:                                              ; preds = %401, %347, %298, %267, %217, %189, %183, %174, %167, %157, %37
  %421 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %422 = call i32 @fmvj18x_release(%struct.pcmcia_device* %421)
  %423 = load i32, i32* @ENODEV, align 4
  %424 = sub nsw i32 0, %423
  store i32 %424, i32* %2, align 4
  br label %425

425:                                              ; preds = %420, %403
  %426 = load i32, i32* %2, align 4
  ret i32 %426
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i8***) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @mfc_try_io_port(%struct.pcmcia_device*) #1

declare dso_local i32 @ungermann_try_io_port(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i64 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @fmvj18x_setup_mfc(%struct.pcmcia_device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcmcia_get_mac_from_cis(%struct.pcmcia_device*, %struct.net_device*) #1

declare dso_local i8* @inb(i32) #1

declare dso_local i32 @fmvj18x_get_hwinfo(%struct.pcmcia_device*, i8**) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, i8*, i32, i32, i8**) #1

declare dso_local i32 @fmvj18x_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
