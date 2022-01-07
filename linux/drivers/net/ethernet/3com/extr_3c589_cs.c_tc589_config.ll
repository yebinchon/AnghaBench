; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_tc589_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_tc589_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i64, i32, i32, %struct.TYPE_2__**, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32, i64, i32 }

@tc589_config.ram_split = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"5:3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3:1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"3:5\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"3c589_config\0A\00", align 1
@MANFID_3COM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"hmmm, is this really a 3Com card??\0A\00", align 1
@PRODID_3COM_3C562 = common dso_local global i64 0, align 8
@el3_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"IO port conflict at 0x%03lx-0x%03lx\0A\00", align 1
@if_port = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"invalid if_port requested\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"3Com 3c%s, io %#3lx, irq %d, hw_addr %pM\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"562\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"589\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"  %dK FIFO split %s Rx:Tx, %s xcvr\0A\00", align 1
@if_names = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @tc589_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc589_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 6
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 3
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %5, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MANFID_3COM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 3
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PRODID_3COM_3C562, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 2
  store i32 16, i32* %41, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %68, %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 1024
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %68

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %8, align 4
  %55 = xor i32 %54, 768
  %56 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %57 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %63 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %71

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 16
  store i32 %70, i32* %8, align 4
  br label %42

71:                                               ; preds = %66, %42
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %240

75:                                               ; preds = %71
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %77 = load i32, i32* @el3_interrupt, align 4
  %78 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %240

82:                                               ; preds = %75
  %83 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %84 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %240

88:                                               ; preds = %82
  %89 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %90 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %95 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %11, align 4
  %106 = call i32 @EL3WINDOW(i32 0)
  %107 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %108 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %107, i32 136, i32** %12)
  store i64 %108, i64* %13, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %137

111:                                              ; preds = %88
  %112 = load i64, i64* %13, align 8
  %113 = icmp uge i64 %112, 6
  br i1 %113, label %114, label %137

114:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %131, %114
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 3
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %7, align 4
  %121 = mul nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le16_to_cpu(i32 %124)
  %126 = call i32 @htons(i32 %125)
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %115

134:                                              ; preds = %115
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @kfree(i32* %135)
  br label %173

137:                                              ; preds = %111, %88
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @kfree(i32* %138)
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %152, %137
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @read_eeprom(i32 %144, i32 %145)
  %147 = call i32 @htons(i32 %146)
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %140

155:                                              ; preds = %140
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @htons(i32 24672)
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %163 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %162, i32 0, i32 3
  %164 = load %struct.net_device*, %struct.net_device** %4, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add i32 %169, 15
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %166, i32 %170)
  br label %240

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172, %134
  %174 = load i32, i32* %11, align 4
  %175 = add i32 %174, 8
  %176 = call i32 @outw(i32 16128, i32 %175)
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @inl(i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* @if_port, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load i32, i32* @if_port, align 4
  %183 = icmp sle i32 %182, 3
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* @if_port, align 4
  %186 = load %struct.net_device*, %struct.net_device** %4, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %192

188:                                              ; preds = %181, %173
  %189 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %190 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %189, i32 0, i32 3
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %192

192:                                              ; preds = %188, %184
  %193 = load %struct.net_device*, %struct.net_device** %4, align 8
  %194 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %195 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %194, i32 0, i32 3
  %196 = call i32 @SET_NETDEV_DEV(%struct.net_device* %193, i32* %195)
  %197 = load %struct.net_device*, %struct.net_device** %4, align 8
  %198 = call i64 @register_netdev(%struct.net_device* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %192
  %201 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %202 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %201, i32 0, i32 3
  %203 = call i32 (i32*, i8*, ...) @dev_err(i32* %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %240

204:                                              ; preds = %192
  %205 = load %struct.net_device*, %struct.net_device** %4, align 8
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %210 = load %struct.net_device*, %struct.net_device** %4, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.net_device*, %struct.net_device** %4, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.net_device*, %struct.net_device** %4, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %205, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %209, i32 %212, i32 %215, i64 %218)
  %220 = load %struct.net_device*, %struct.net_device** %4, align 8
  %221 = load i32, i32* %10, align 4
  %222 = and i32 %221, 7
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 32, i32 8
  %226 = load i32, i32* %10, align 4
  %227 = ashr i32 %226, 16
  %228 = and i32 %227, 3
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i8*], [4 x i8*]* @tc589_config.ram_split, i64 0, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = load i32*, i32** @if_names, align 8
  %233 = load %struct.net_device*, %struct.net_device** %4, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %220, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %225, i8* %231, i32 %238)
  store i32 0, i32* %2, align 4
  br label %245

240:                                              ; preds = %200, %161, %87, %81, %74
  %241 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %242 = call i32 @tc589_release(%struct.pcmcia_device* %241)
  %243 = load i32, i32* @ENODEV, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %240, %204
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i32**) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @read_eeprom(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @tc589_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
