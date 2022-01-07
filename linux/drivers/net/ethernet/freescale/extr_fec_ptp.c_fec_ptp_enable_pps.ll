; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_enable_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_enable_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fec_enet_private = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timespec64 = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"No ptp stack is running\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_PPS_CHANNEL = common dso_local global i32 0, align 4
@PPS_OUPUT_RELOAD_PERIOD = common dso_local global i32 0, align 4
@FEC_T_TF_MASK = common dso_local global i32 0, align 4
@FEC_T_TMODE_MASK = common dso_local global i32 0, align 4
@FEC_ATIME_CTRL = common dso_local global i64 0, align 8
@FEC_T_CTRL_CAPTURE = common dso_local global i32 0, align 4
@FEC_ATIME = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@FEC_T_CTRL_PINPER = common dso_local global i32 0, align 4
@FEC_T_TF_OFFSET = common dso_local global i32 0, align 4
@FEC_T_TIE_OFFSET = common dso_local global i32 0, align 4
@FEC_T_TDRE_OFFSET = common dso_local global i32 0, align 4
@FEC_HIGH_PULSE = common dso_local global i32 0, align 4
@FEC_T_TMODE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fec_enet_private*, i64)* @fec_ptp_enable_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_ptp_enable_pps(%struct.fec_enet_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec64, align 8
  store %struct.fec_enet_private* %0, %struct.fec_enet_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %13 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %23 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %22, i32 0, i32 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %271

29:                                               ; preds = %16, %2
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %271

36:                                               ; preds = %29
  %37 = load i32, i32* @DEFAULT_PPS_CHANNEL, align 4
  %38 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %39 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @PPS_OUPUT_RELOAD_PERIOD, align 4
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %44 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %43, i32 0, i32 3
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %253

49:                                               ; preds = %36
  %50 = load i32, i32* @FEC_T_TF_MASK, align 4
  %51 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %52 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %55 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @FEC_TCSR(i32 %56)
  %58 = add nsw i64 %53, %57
  %59 = call i32 @writel(i32 %50, i64 %58)
  %60 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %61 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %64 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @FEC_TCSR(i32 %65)
  %67 = add nsw i64 %62, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %93, %49
  %70 = load i32, i32* @FEC_T_TMODE_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %76 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %79 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @FEC_TCSR(i32 %80)
  %82 = add nsw i64 %77, %81
  %83 = call i32 @writel(i32 %74, i64 %82)
  %84 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %85 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %88 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @FEC_TCSR(i32 %89)
  %91 = add nsw i64 %86, %90
  %92 = call i32 @readl(i64 %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %69
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @FEC_T_TMODE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %69, label %98

98:                                               ; preds = %93
  %99 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %100 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %99, i32 0, i32 7
  %101 = call i32 @timecounter_read(i32* %100)
  %102 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %103 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FEC_ATIME_CTRL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl(i64 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* @FEC_T_CTRL_CAPTURE, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %113 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FEC_ATIME_CTRL, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %119 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FEC_ATIME, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readl(i64 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %125 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %124, i32 0, i32 7
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @timecounter_cyc2time(i32* %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @ns_to_timespec64(i32 %128)
  %130 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  store i64 %129, i64* %130, align 8
  %131 = bitcast %struct.timespec64* %9 to i8*
  %132 = bitcast %struct.timespec64* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 8, i1 false)
  %133 = load i32, i32* @NSEC_PER_SEC, align 4
  %134 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = sub nsw i32 %133, %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* @NSEC_PER_SEC, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %144 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %151 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %154 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @FEC_TCCR(i32 %155)
  %157 = add nsw i64 %152, %156
  %158 = call i32 @writel(i32 %149, i64 %157)
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %161 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %165 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %163, %167
  %169 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %170 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  %171 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %172 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @FEC_ATIME_CTRL, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @readl(i64 %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* @FEC_T_CTRL_PINPER, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %182 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @FEC_ATIME_CTRL, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %188 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %191 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @FEC_TCSR(i32 %192)
  %194 = add nsw i64 %189, %193
  %195 = call i32 @readl(i64 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* @FEC_T_TF_OFFSET, align 4
  %197 = shl i32 1, %196
  %198 = load i32, i32* @FEC_T_TIE_OFFSET, align 4
  %199 = shl i32 1, %198
  %200 = or i32 %197, %199
  %201 = load i32, i32* %7, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* @FEC_T_TDRE_OFFSET, align 4
  %204 = shl i32 1, %203
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %7, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* @FEC_T_TMODE_MASK, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* @FEC_HIGH_PULSE, align 4
  %213 = load i32, i32* @FEC_T_TMODE_OFFSET, align 4
  %214 = shl i32 %212, %213
  %215 = load i32, i32* %7, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %219 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %222 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @FEC_TCSR(i32 %223)
  %225 = add nsw i64 %220, %224
  %226 = call i32 @writel(i32 %217, i64 %225)
  %227 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %228 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %231 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %234 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @FEC_TCCR(i32 %235)
  %237 = add nsw i64 %232, %236
  %238 = call i32 @writel(i32 %229, i64 %237)
  %239 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %240 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %243 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %241, %244
  %246 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %247 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %245, %249
  %251 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %252 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 4
  br label %263

253:                                              ; preds = %36
  %254 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %255 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %258 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @FEC_TCSR(i32 %259)
  %261 = add nsw i64 %256, %260
  %262 = call i32 @writel(i32 0, i64 %261)
  br label %263

263:                                              ; preds = %253, %98
  %264 = load i64, i64* %5, align 8
  %265 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %266 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %265, i32 0, i32 0
  store i64 %264, i64* %266, align 8
  %267 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %268 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %267, i32 0, i32 3
  %269 = load i64, i64* %6, align 8
  %270 = call i32 @spin_unlock_irqrestore(i32* %268, i64 %269)
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %263, %35, %21
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @FEC_TCSR(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @timecounter_read(i32*) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i64 @ns_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @FEC_TCCR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
