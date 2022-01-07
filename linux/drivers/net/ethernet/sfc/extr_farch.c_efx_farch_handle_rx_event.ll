; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i8*, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }
%struct.efx_rx_queue = type { i32, i32, i32 }

@FSF_AZ_RX_EV_JUMBO_CONT = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_SOP = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_Q_LABEL = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_DESC_PTR = common dso_local global i32 0, align 4
@EFX_RX_PKT_DISCARD = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_BYTE_CNT = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_PKT_OK = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_HDR_TYPE = common dso_local global i32 0, align 4
@EFX_RX_PKT_TCP = common dso_local global i32 0, align 4
@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_MCAST_PKT = common dso_local global i32 0, align 4
@FSF_AZ_RX_EV_MCAST_HASH_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, i32*)* @efx_farch_handle_rx_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_handle_rx_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.efx_rx_queue*, align 8
  %15 = alloca %struct.efx_nic*, align 8
  %16 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %18 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %17, i32 0, i32 3
  %19 = load %struct.efx_nic*, %struct.efx_nic** %18, align 8
  store %struct.efx_nic* %19, %struct.efx_nic** %15, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %15, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %245

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FSF_AZ_RX_EV_JUMBO_CONT, align 4
  %31 = call i8* @EFX_QWORD_FIELD(i32 %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FSF_AZ_RX_EV_SOP, align 4
  %36 = call i8* @EFX_QWORD_FIELD(i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FSF_AZ_RX_EV_Q_LABEL, align 4
  %41 = call i8* @EFX_QWORD_FIELD(i32 %39, i32 %40)
  %42 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %43 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %49 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %48)
  store %struct.efx_rx_queue* %49, %struct.efx_rx_queue** %14, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FSF_AZ_RX_EV_DESC_PTR, align 4
  %53 = call i8* @EFX_QWORD_FIELD(i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %56 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %59 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %57, %60
  %62 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %63 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %27
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %75 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = icmp ne i32 %73, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %145

83:                                               ; preds = %72, %27
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @efx_farch_handle_rx_bad_index(%struct.efx_rx_queue* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %245

93:                                               ; preds = %87, %83
  %94 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %95 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %93
  %99 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %100 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %101 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %104 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  %107 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %108 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %111 = call i32 @efx_rx_packet(%struct.efx_rx_queue* %99, i32 %106, i32 %109, i32 0, i32 %110)
  %112 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %113 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %116 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %120 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %98, %93
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %245

126:                                              ; preds = %121
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %126
  %130 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %131 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %132 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %135 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %133, %136
  %138 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %139 = call i32 @efx_rx_packet(%struct.efx_rx_queue* %130, i32 %137, i32 1, i32 0, i32 %138)
  %140 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %141 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %245

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %72
  %146 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %147 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %245

153:                                              ; preds = %145
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @FSF_AZ_RX_EV_BYTE_CNT, align 4
  %157 = call i8* @EFX_QWORD_FIELD(i32 %155, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %6, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @FSF_AZ_RX_EV_PKT_OK, align 4
  %162 = call i8* @EFX_QWORD_FIELD(i32 %160, i32 %161)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @FSF_AZ_RX_EV_HDR_TYPE, align 4
  %167 = call i8* @EFX_QWORD_FIELD(i32 %165, i32 %166)
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @likely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %153
  store i32 0, i32* %13, align 4
  %173 = load i32, i32* %7, align 4
  switch i32 %173, label %183 [
    i32 129, label %174
    i32 128, label %178
    i32 130, label %182
    i32 131, label %182
  ]

174:                                              ; preds = %172
  %175 = load i32, i32* @EFX_RX_PKT_TCP, align 4
  %176 = load i32, i32* %13, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %172, %174
  %179 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
  %180 = load i32, i32* %13, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %172, %172, %178
  br label %183

183:                                              ; preds = %172, %182
  br label %188

184:                                              ; preds = %153
  %185 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @efx_farch_handle_rx_not_ok(%struct.efx_rx_queue* %185, i32* %186)
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %184, %183
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @FSF_AZ_RX_EV_MCAST_PKT, align 4
  %192 = call i8* @EFX_QWORD_FIELD(i32 %190, i32 %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %188
  %197 = load i32*, i32** %4, align 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @FSF_AZ_RX_EV_MCAST_HASH_MATCH, align 4
  %200 = call i8* @EFX_QWORD_FIELD(i32 %198, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = call i64 @unlikely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %196
  %209 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %210 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %214 = load i32, i32* %13, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %208, %196
  br label %217

217:                                              ; preds = %216, %188
  %218 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %219 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 2
  store i32 %221, i32* %219, align 8
  %222 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %223 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %224 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %227 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %225, %228
  %230 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %231 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @efx_rx_packet(%struct.efx_rx_queue* %222, i32 %229, i32 %232, i32 %233, i32 %234)
  %236 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %237 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %240 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %14, align 8
  %244 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %243, i32 0, i32 1
  store i32 0, i32* %244, align 4
  br label %245

245:                                              ; preds = %217, %152, %129, %125, %92, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i8* @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @efx_farch_handle_rx_bad_index(%struct.efx_rx_queue*, i32) #1

declare dso_local i32 @efx_rx_packet(%struct.efx_rx_queue*, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @efx_farch_handle_rx_not_ok(%struct.efx_rx_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
