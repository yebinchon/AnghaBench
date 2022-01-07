; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_packetizeRx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_packetizeRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_net = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Rx %d bytes\0A\00", align 1
@DEFAULT_MRU = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid frame (%d) length\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not allocate memory\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" W_S\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_net*, i8*, i32, i8)* @packetizeRx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packetizeRx(%struct.hso_net* %0, i8* %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.hso_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.hso_net* %0, %struct.hso_net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  store i16 0, i16* %10, align 2
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @min(i32 128, i32 %15)
  %17 = call i32 @DUMP(i8* %14, i32 %16)
  br label %18

18:                                               ; preds = %239, %117, %96, %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %240

21:                                               ; preds = %18
  %22 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %23 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %235 [
    i32 129, label %25
    i32 130, label %140
    i32 128, label %233
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %28 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %35 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %9, align 2
  %40 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %41 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %40, i32 0, i32 5
  %42 = bitcast %struct.TYPE_8__* %41 to i8*
  %43 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %44 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8*, i8** %6, align 8
  %49 = load i16, i16* %10, align 2
  %50 = zext i16 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i16, i16* %9, align 2
  %54 = call i32 @memcpy(i8* %47, i8* %52, i16 zeroext %53)
  %55 = load i16, i16* %9, align 2
  %56 = zext i16 %55 to i32
  %57 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %58 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i16, i16* %9, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %64, %62
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %10, align 2
  %67 = load i16, i16* %9, align 2
  %68 = zext i16 %67 to i32
  %69 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %70 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i16, i16* %9, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %78 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %139, label %81

81:                                               ; preds = %37
  %82 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %83 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call zeroext i16 @ntohs(i32 %85)
  store i16 %86, i16* %11, align 2
  %87 = load i16, i16* %11, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* @DEFAULT_MRU, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %81
  %93 = load i16, i16* %11, align 2
  %94 = zext i16 %93 to i64
  %95 = icmp ult i64 %94, 4
  br i1 %95, label %96, label %105

96:                                               ; preds = %92, %81
  %97 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %98 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %97, i32 0, i32 3
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i16, i16* %11, align 2
  %102 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %101)
  %103 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %104 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %103, i32 0, i32 0
  store i32 128, i32* %104, align 8
  br label %18

105:                                              ; preds = %92
  %106 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %107 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %106, i32 0, i32 3
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i16, i16* %11, align 2
  %110 = call %struct.TYPE_10__* @netdev_alloc_skb(%struct.TYPE_11__* %108, i16 zeroext %109)
  %111 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %112 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %111, i32 0, i32 4
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %112, align 8
  %113 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %114 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %113, i32 0, i32 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = icmp ne %struct.TYPE_10__* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %105
  %118 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %120 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %119, i32 0, i32 0
  store i32 128, i32* %120, align 8
  br label %18

121:                                              ; preds = %105
  %122 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %123 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %122, i32 0, i32 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %126 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %125, i32 0, i32 5
  %127 = bitcast %struct.TYPE_8__* %126 to i8*
  %128 = call i32 (%struct.TYPE_10__*, ...) @skb_put_data(%struct.TYPE_10__* %124, i8* %127, i64 4)
  %129 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %130 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %129, i32 0, i32 2
  store i32 4, i32* %130, align 8
  %131 = load i16, i16* %11, align 2
  %132 = zext i16 %131 to i64
  %133 = sub i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %136 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %138 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %137, i32 0, i32 0
  store i32 130, i32* %138, align 8
  br label %139

139:                                              ; preds = %121, %37
  br label %239

140:                                              ; preds = %21
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %143 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  br label %152

148:                                              ; preds = %140
  %149 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %150 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  br label %152

152:                                              ; preds = %148, %146
  %153 = phi i32 [ %147, %146 ], [ %151, %148 ]
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %9, align 2
  %155 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %156 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %155, i32 0, i32 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = load i16, i16* %10, align 2
  %160 = zext i16 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i16, i16* %9, align 2
  %164 = zext i16 %163 to i32
  %165 = call i32 (%struct.TYPE_10__*, ...) @skb_put_data(%struct.TYPE_10__* %157, i8* %162, i32 %164)
  %166 = load i16, i16* %9, align 2
  %167 = zext i16 %166 to i32
  %168 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %169 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load i16, i16* %9, align 2
  %173 = zext i16 %172 to i32
  %174 = load i32, i32* %7, align 4
  %175 = sub i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load i16, i16* %9, align 2
  %177 = zext i16 %176 to i32
  %178 = load i16, i16* %10, align 2
  %179 = zext i16 %178 to i32
  %180 = add nsw i32 %179, %177
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %10, align 2
  %182 = load i16, i16* %9, align 2
  %183 = zext i16 %182 to i32
  %184 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %185 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %189 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %232, label %192

192:                                              ; preds = %152
  %193 = load i32, i32* @ETH_P_IP, align 4
  %194 = call i32 @cpu_to_be16(i32 %193)
  %195 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %196 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %195, i32 0, i32 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  store i32 %194, i32* %198, align 4
  %199 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %200 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %199, i32 0, i32 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = call i32 @skb_reset_mac_header(%struct.TYPE_10__* %201)
  %203 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %204 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %203, i32 0, i32 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = call i32 @netif_rx(%struct.TYPE_10__* %205)
  %207 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %208 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %207, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %208, align 8
  %209 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %210 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %209, i32 0, i32 3
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  %216 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %217 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %220 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %219, i32 0, i32 3
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %218
  store i32 %225, i32* %223, align 4
  %226 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %227 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %226, i32 0, i32 2
  store i32 0, i32* %227, align 8
  %228 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %229 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %228, i32 0, i32 1
  store i32 4, i32* %229, align 4
  %230 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %231 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %230, i32 0, i32 0
  store i32 129, i32* %231, align 8
  br label %232

232:                                              ; preds = %192, %152
  br label %239

233:                                              ; preds = %21
  %234 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %239

235:                                              ; preds = %21
  %236 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %237 = load i32, i32* %7, align 4
  %238 = add i32 %237, -1
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %235, %233, %232, %139
  br label %18

240:                                              ; preds = %18
  %241 = load i8, i8* %8, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %240
  %244 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %245 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 128
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %250 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %249, i32 0, i32 0
  store i32 129, i32* %250, align 8
  %251 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %252 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %251, i32 0, i32 2
  store i32 0, i32* %252, align 8
  %253 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %254 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %253, i32 0, i32 1
  store i32 4, i32* %254, align 4
  br label %255

255:                                              ; preds = %248, %243
  br label %256

256:                                              ; preds = %255, %240
  ret void
}

declare dso_local i32 @hso_dbg(i32, i8*, ...) #1

declare dso_local i32 @DUMP(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 zeroext) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i16 zeroext) #1

declare dso_local %struct.TYPE_10__* @netdev_alloc_skb(%struct.TYPE_11__*, i16 zeroext) #1

declare dso_local i32 @skb_put_data(%struct.TYPE_10__*, ...) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.TYPE_10__*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
