; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_ser_fdx.c_ser12_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_ser_fdx.c_ser12_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i64, i8 }
%struct.TYPE_4__ = type { i32 }
%struct.timespec64 = type { i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.baycom_state*, %struct.timespec64*, i8)* @ser12_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ser12_rx(%struct.net_device* %0, %struct.baycom_state* %1, %struct.timespec64* %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.baycom_state*, align 8
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.baycom_state* %1, %struct.baycom_state** %6, align 8
  store %struct.timespec64* %2, %struct.timespec64** %7, align 8
  store i8 %3, i8* %8, align 1
  %13 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %14 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %10, align 4
  %17 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %18 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %11, align 4
  %21 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %22 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %26 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NSEC_PER_USEC, align 4
  %29 = sdiv i32 %27, %28
  %30 = add nsw i32 1000000, %29
  %31 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %32 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %30, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %40, %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 500000
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1000000
  store i32 %42, i32* %9, align 4
  br label %37

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %50 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %55 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %58 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %56
  store i32 %62, i32* %60, align 8
  %63 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %64 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %70 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %48
  %76 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %77 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %76, i32 0, i32 3
  %78 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %79 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 1
  %83 = xor i32 %82, 65535
  %84 = call i32 @hdlcdrv_putbits(i32* %77, i32 %83)
  %85 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %86 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 65536, i32* %87, align 8
  br label %88

88:                                               ; preds = %75, %48
  %89 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %90 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %44

94:                                               ; preds = %44
  %95 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %96 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %94
  %102 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %103 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %101
  %107 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %108 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %107, i32 0, i32 3
  %109 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %110 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %116 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %122 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %120, %125
  %127 = icmp slt i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @hdlcdrv_setdcd(i32* %108, i32 %128)
  br label %130

130:                                              ; preds = %106, %101
  %131 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %132 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %137 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  store i64 %135, i64* %139, align 8
  %140 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %141 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %147 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i64 %145, i64* %149, align 8
  %150 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %151 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  store i32 2, i32* %153, align 8
  %154 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %155 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 120
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %130, %94
  %161 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %162 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  %165 = load i8, i8* %164, align 8
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* %8, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %220

170:                                              ; preds = %160
  %171 = load i8, i8* %8, align 1
  %172 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %173 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 5
  store i8 %171, i8* %175, align 8
  %176 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %177 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, 65536
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %9, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %170
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %186 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, %184
  store i32 %190, i32* %188, align 8
  br label %200

191:                                              ; preds = %170
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 1000000, %192
  %194 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %195 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, %193
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %191, %183
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @abs(i32 %201) #3
  %203 = load i32, i32* %11, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %207 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 4
  store i32 %211, i32* %209, align 8
  br label %219

212:                                              ; preds = %200
  %213 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %214 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %212, %205
  br label %220

220:                                              ; preds = %219, %160
  br label %221

221:                                              ; preds = %228, %220
  %222 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %223 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sge i32 %226, 1000000
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %230 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1000000
  store i32 %234, i32* %232, align 8
  br label %221

235:                                              ; preds = %221
  ret void
}

declare dso_local i32 @hdlcdrv_putbits(i32*, i32) #1

declare dso_local i32 @hdlcdrv_setdcd(i32*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
