; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"   In rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RxStatus = common dso_local global i64 0, align 8
@RxErrors = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c" Rx error: status %2.2x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Receiving packet size %d status %4.4x.\0A\00", align 1
@RX_FIFO = common dso_local global i64 0, align 8
@RxDiscard = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@CmdInProgress = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: Couldn't allocate a sk_buff of size %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @corkscrew_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @corkscrew_debug, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @EL3_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call signext i16 @inw(i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @RxStatus, align 8
  %23 = add nsw i64 %21, %22
  %24 = call signext i16 @inw(i64 %23)
  %25 = sext i16 %24 to i32
  %26 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i16 signext %19, i32 %25)
  br label %27

27:                                               ; preds = %14, %1
  br label %28

28:                                               ; preds = %242, %198, %27
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @RxStatus, align 8
  %32 = add nsw i64 %30, %31
  %33 = call signext i16 @inw(i64 %32)
  store i16 %33, i16* %5, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %243

36:                                               ; preds = %28
  %37 = load i16, i16* %5, align 2
  %38 = sext i16 %37 to i32
  %39 = and i32 %38, 16384
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %114

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @RxErrors, align 8
  %45 = add nsw i64 %43, %44
  %46 = call zeroext i8 @inb(i64 %45)
  store i8 %46, i8* %6, align 1
  %47 = load i32, i32* @corkscrew_debug, align 4
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i16
  %52 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i16 signext %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i8, i8* %6, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 16
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  br label %211

114:                                              ; preds = %36
  %115 = load i16, i16* %5, align 2
  %116 = sext i16 %115 to i32
  %117 = and i32 %116, 8191
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %7, align 2
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i16, i16* %7, align 2
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %121, 5
  %123 = add nsw i32 %122, 2
  %124 = trunc i32 %123 to i16
  %125 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %119, i16 signext %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %8, align 8
  %126 = load i32, i32* @corkscrew_debug, align 4
  %127 = icmp sgt i32 %126, 4
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = load i16, i16* %7, align 2
  %130 = load i16, i16* %5, align 2
  %131 = sext i16 %130 to i32
  %132 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i16 signext %129, i32 %131)
  br label %133

133:                                              ; preds = %128, %114
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = icmp ne %struct.sk_buff* %134, null
  br i1 %135, label %136, label %199

136:                                              ; preds = %133
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i32 @skb_reserve(%struct.sk_buff* %137, i32 2)
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @RX_FIFO, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %144 = load i16, i16* %7, align 2
  %145 = call i32 @skb_put(%struct.sk_buff* %143, i16 signext %144)
  %146 = load i16, i16* %7, align 2
  %147 = sext i16 %146 to i32
  %148 = add nsw i32 %147, 3
  %149 = ashr i32 %148, 2
  %150 = trunc i32 %149 to i16
  %151 = call i32 @insl(i64 %142, i32 %145, i16 signext %150)
  %152 = load i32, i32* @RxDiscard, align 4
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* @EL3_CMD, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @outw(i32 %152, i64 %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = call i32 @eth_type_trans(%struct.sk_buff* %158, %struct.net_device* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = call i32 @netif_rx(%struct.sk_buff* %163)
  %165 = load %struct.net_device*, %struct.net_device** %2, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load i16, i16* %7, align 2
  %171 = sext i16 %170 to i32
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i16, i16* %174, align 4
  %176 = sext i16 %175 to i32
  %177 = add nsw i32 %176, %171
  %178 = trunc i32 %177 to i16
  store i16 %178, i16* %174, align 4
  store i32 200, i32* %4, align 4
  br label %179

179:                                              ; preds = %195, %136
  %180 = load i32, i32* %4, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %179
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @EL3_STATUS, align 8
  %186 = add nsw i64 %184, %185
  %187 = call signext i16 @inw(i64 %186)
  %188 = sext i16 %187 to i32
  %189 = load i16, i16* @CmdInProgress, align 2
  %190 = sext i16 %189 to i32
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %182
  br label %198

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %4, align 4
  br label %179

198:                                              ; preds = %193, %179
  br label %28

199:                                              ; preds = %133
  %200 = load i32, i32* @corkscrew_debug, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load %struct.net_device*, %struct.net_device** %2, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 1
  %205 = load i16, i16* %204, align 4
  %206 = load i16, i16* %7, align 2
  %207 = sext i16 %206 to i32
  %208 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i16 signext %205, i32 %207)
  br label %209

209:                                              ; preds = %202, %199
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %113
  %212 = load i32, i32* @RxDiscard, align 4
  %213 = load i32, i32* %3, align 4
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* @EL3_CMD, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @outw(i32 %212, i64 %216)
  %218 = load %struct.net_device*, %struct.net_device** %2, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  store i32 200, i32* %4, align 4
  br label %223

223:                                              ; preds = %239, %211
  %224 = load i32, i32* %4, align 4
  %225 = icmp sge i32 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %223
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* @EL3_STATUS, align 8
  %230 = add nsw i64 %228, %229
  %231 = call signext i16 @inw(i64 %230)
  %232 = sext i16 %231 to i32
  %233 = load i16, i16* @CmdInProgress, align 2
  %234 = sext i16 %233 to i32
  %235 = and i32 %232, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %226
  br label %242

238:                                              ; preds = %226
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %4, align 4
  br label %223

242:                                              ; preds = %237, %223
  br label %28

243:                                              ; preds = %28
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i16 signext, ...) #1

declare dso_local signext i16 @inw(i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insl(i64, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
