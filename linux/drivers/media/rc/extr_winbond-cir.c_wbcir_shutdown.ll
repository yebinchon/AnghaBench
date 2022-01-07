; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.wbcir_data = type { i32, i64, %struct.rc_dev* }
%struct.rc_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IR_PROTOCOL_RC5 = common dso_local global i32 0, align 4
@IR_PROTOCOL_NEC = common dso_local global i32 0, align 4
@IR_PROTOCOL_RC6 = common dso_local global i32 0, align 4
@RC_PROTO_RC6_6A_20 = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_INDEX = common dso_local global i64 0, align 8
@WBCIR_REGSEL_COMPARE = common dso_local global i32 0, align 4
@WBCIR_REG_ADDR0 = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_DATA = common dso_local global i64 0, align 8
@WBCIR_REGSEL_MASK = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_CSL = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_STS = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@WBCIR_IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @wbcir_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_shutdown(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wbcir_data*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [11 x i32], align 16
  %8 = alloca [11 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %3, align 8
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %17 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %16)
  store %struct.wbcir_data* %17, %struct.wbcir_data** %4, align 8
  %18 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %19 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %18, i32 0, i32 2
  %20 = load %struct.rc_dev*, %struct.rc_dev** %19, align 8
  store %struct.rc_dev* %20, %struct.rc_dev** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %30 = call i32 @memset(i32* %29, i32 0, i32 44)
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %32 = call i32 @memset(i32* %31, i32 0, i32 44)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 @device_may_wakeup(%struct.device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %1
  store i32 0, i32* %6, align 4
  br label %356

40:                                               ; preds = %35
  %41 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %354 [
    i32 132, label %44
    i32 135, label %88
    i32 133, label %118
    i32 134, label %149
    i32 131, label %181
    i32 130, label %219
    i32 129, label %219
    i32 128, label %219
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, 63
  %47 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 768
  %50 = ashr i32 %49, 2
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 16
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 7168
  %56 = ashr i32 %55, 10
  %57 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 64
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 16
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %61, %44
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 63
  %68 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 768
  %71 = ashr i32 %70, 2
  %72 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 16
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 7168
  %77 = ashr i32 %76, 10
  %78 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 64
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 16
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %82, %65
  %87 = load i32, i32* @IR_PROTOCOL_RC5, align 4
  store i32 %87, i32* %10, align 4
  br label %355

88:                                               ; preds = %40
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @bitrev8(i32 %89)
  %91 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %93, i32* %94, align 16
  %95 = load i32, i32* %12, align 4
  %96 = ashr i32 %95, 8
  %97 = call i32 @bitrev8(i32 %96)
  %98 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @bitrev8(i32 %102)
  %104 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, -1
  %108 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %107, i32* %108, align 16
  %109 = load i32, i32* %11, align 4
  %110 = ashr i32 %109, 8
  %111 = call i32 @bitrev8(i32 %110)
  %112 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, -1
  %116 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* @IR_PROTOCOL_NEC, align 4
  store i32 %117, i32* %10, align 4
  br label %355

118:                                              ; preds = %40
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @bitrev8(i32 %119)
  %121 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %123, i32* %124, align 16
  %125 = load i32, i32* %12, align 4
  %126 = ashr i32 %125, 8
  %127 = call i32 @bitrev8(i32 %126)
  %128 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %127, i32* %128, align 8
  %129 = load i32, i32* %12, align 4
  %130 = ashr i32 %129, 16
  %131 = call i32 @bitrev8(i32 %130)
  %132 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @bitrev8(i32 %133)
  %135 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %137, -1
  %139 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %138, i32* %139, align 16
  %140 = load i32, i32* %11, align 4
  %141 = ashr i32 %140, 8
  %142 = call i32 @bitrev8(i32 %141)
  %143 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %142, i32* %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = ashr i32 %144, 16
  %146 = call i32 @bitrev8(i32 %145)
  %147 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @IR_PROTOCOL_NEC, align 4
  store i32 %148, i32* %10, align 4
  br label %355

149:                                              ; preds = %40
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @bitrev8(i32 %150)
  %152 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %151, i32* %152, align 16
  %153 = load i32, i32* %12, align 4
  %154 = ashr i32 %153, 8
  %155 = call i32 @bitrev8(i32 %154)
  %156 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = ashr i32 %157, 16
  %159 = call i32 @bitrev8(i32 %158)
  %160 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = ashr i32 %161, 24
  %163 = call i32 @bitrev8(i32 %162)
  %164 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @bitrev8(i32 %165)
  %167 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %166, i32* %167, align 16
  %168 = load i32, i32* %11, align 4
  %169 = ashr i32 %168, 8
  %170 = call i32 @bitrev8(i32 %169)
  %171 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %11, align 4
  %173 = ashr i32 %172, 16
  %174 = call i32 @bitrev8(i32 %173)
  %175 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 24
  %178 = call i32 @bitrev8(i32 %177)
  %179 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @IR_PROTOCOL_NEC, align 4
  store i32 %180, i32* %10, align 4
  br label %355

181:                                              ; preds = %40
  %182 = load i32, i32* %11, align 4
  %183 = ashr i32 %182, 0
  %184 = call i32 @wbcir_to_rc6cells(i32 %183)
  %185 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %184, i32* %185, align 16
  %186 = load i32, i32* %12, align 4
  %187 = ashr i32 %186, 0
  %188 = call i32 @wbcir_to_rc6cells(i32 %187)
  %189 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %188, i32* %189, align 16
  %190 = load i32, i32* %11, align 4
  %191 = ashr i32 %190, 4
  %192 = call i32 @wbcir_to_rc6cells(i32 %191)
  %193 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %12, align 4
  %195 = ashr i32 %194, 4
  %196 = call i32 @wbcir_to_rc6cells(i32 %195)
  %197 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %198, 8
  %200 = call i32 @wbcir_to_rc6cells(i32 %199)
  %201 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %200, i32* %201, align 8
  %202 = load i32, i32* %12, align 4
  %203 = ashr i32 %202, 8
  %204 = call i32 @wbcir_to_rc6cells(i32 %203)
  %205 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %204, i32* %205, align 8
  %206 = load i32, i32* %11, align 4
  %207 = ashr i32 %206, 12
  %208 = call i32 @wbcir_to_rc6cells(i32 %207)
  %209 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* %12, align 4
  %211 = ashr i32 %210, 12
  %212 = call i32 @wbcir_to_rc6cells(i32 %211)
  %213 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %212, i32* %213, align 4
  %214 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 4
  store i32 80, i32* %214, align 16
  %215 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 4
  store i32 240, i32* %215, align 16
  %216 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 5
  store i32 9, i32* %216, align 4
  %217 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 5
  store i32 15, i32* %217, align 4
  store i32 44, i32* %9, align 4
  %218 = load i32, i32* @IR_PROTOCOL_RC6, align 4
  store i32 %218, i32* %10, align 4
  br label %355

219:                                              ; preds = %40, %40, %40
  store i32 0, i32* %13, align 4
  %220 = load i32, i32* %11, align 4
  %221 = ashr i32 %220, 0
  %222 = call i32 @wbcir_to_rc6cells(i32 %221)
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %224
  store i32 %222, i32* %225, align 4
  %226 = load i32, i32* %12, align 4
  %227 = ashr i32 %226, 0
  %228 = call i32 @wbcir_to_rc6cells(i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %231
  store i32 %228, i32* %232, align 4
  %233 = load i32, i32* %11, align 4
  %234 = ashr i32 %233, 4
  %235 = call i32 @wbcir_to_rc6cells(i32 %234)
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %237
  store i32 %235, i32* %238, align 4
  %239 = load i32, i32* %12, align 4
  %240 = ashr i32 %239, 4
  %241 = call i32 @wbcir_to_rc6cells(i32 %240)
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %244
  store i32 %241, i32* %245, align 4
  %246 = load i32, i32* %11, align 4
  %247 = ashr i32 %246, 8
  %248 = call i32 @wbcir_to_rc6cells(i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %250
  store i32 %248, i32* %251, align 4
  %252 = load i32, i32* %12, align 4
  %253 = ashr i32 %252, 8
  %254 = call i32 @wbcir_to_rc6cells(i32 %253)
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %257
  store i32 %254, i32* %258, align 4
  %259 = load i32, i32* %11, align 4
  %260 = ashr i32 %259, 12
  %261 = call i32 @wbcir_to_rc6cells(i32 %260)
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %263
  store i32 %261, i32* %264, align 4
  %265 = load i32, i32* %12, align 4
  %266 = ashr i32 %265, 12
  %267 = call i32 @wbcir_to_rc6cells(i32 %266)
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %270
  store i32 %267, i32* %271, align 4
  %272 = load i32, i32* %11, align 4
  %273 = ashr i32 %272, 16
  %274 = call i32 @wbcir_to_rc6cells(i32 %273)
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %276
  store i32 %274, i32* %277, align 4
  %278 = load i32, i32* %12, align 4
  %279 = ashr i32 %278, 16
  %280 = call i32 @wbcir_to_rc6cells(i32 %279)
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %13, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %283
  store i32 %280, i32* %284, align 4
  %285 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %286 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @RC_PROTO_RC6_6A_20, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %219
  store i32 52, i32* %9, align 4
  br label %338

291:                                              ; preds = %219
  %292 = load i32, i32* %11, align 4
  %293 = ashr i32 %292, 20
  %294 = call i32 @wbcir_to_rc6cells(i32 %293)
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %296
  store i32 %294, i32* %297, align 4
  %298 = load i32, i32* %12, align 4
  %299 = ashr i32 %298, 20
  %300 = call i32 @wbcir_to_rc6cells(i32 %299)
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %303
  store i32 %300, i32* %304, align 4
  %305 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %306 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 130
  br i1 %308, label %309, label %310

309:                                              ; preds = %291
  store i32 60, i32* %9, align 4
  br label %337

310:                                              ; preds = %291
  %311 = load i32, i32* %11, align 4
  %312 = ashr i32 %311, 24
  %313 = call i32 @wbcir_to_rc6cells(i32 %312)
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %315
  store i32 %313, i32* %316, align 4
  %317 = load i32, i32* %12, align 4
  %318 = ashr i32 %317, 24
  %319 = call i32 @wbcir_to_rc6cells(i32 %318)
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %13, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %322
  store i32 %319, i32* %323, align 4
  %324 = load i32, i32* %11, align 4
  %325 = ashr i32 %324, 28
  %326 = call i32 @wbcir_to_rc6cells(i32 %325)
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %328
  store i32 %326, i32* %329, align 4
  %330 = load i32, i32* %12, align 4
  %331 = ashr i32 %330, 28
  %332 = call i32 @wbcir_to_rc6cells(i32 %331)
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %335
  store i32 %332, i32* %336, align 4
  store i32 76, i32* %9, align 4
  br label %337

337:                                              ; preds = %310, %309
  br label %338

338:                                              ; preds = %337, %290
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %340
  store i32 147, i32* %341, align 4
  %342 = load i32, i32* %13, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %13, align 4
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %344
  store i32 255, i32* %345, align 4
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %347
  store i32 10, i32* %348, align 4
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %13, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %351
  store i32 15, i32* %352, align 4
  %353 = load i32, i32* @IR_PROTOCOL_RC6, align 4
  store i32 %353, i32* %10, align 4
  br label %355

354:                                              ; preds = %40
  store i32 0, i32* %6, align 4
  br label %355

355:                                              ; preds = %354, %338, %181, %149, %118, %88, %86
  br label %356

356:                                              ; preds = %355, %39
  %357 = load i32, i32* %6, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %420

359:                                              ; preds = %356
  %360 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %361 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @WBCIR_REG_WCEIR_INDEX, align 8
  %364 = add nsw i64 %362, %363
  %365 = load i32, i32* @WBCIR_REGSEL_COMPARE, align 4
  %366 = load i32, i32* @WBCIR_REG_ADDR0, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @wbcir_set_bits(i64 %364, i32 %367, i32 63)
  %369 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %370 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @WBCIR_REG_WCEIR_DATA, align 8
  %373 = add nsw i64 %371, %372
  %374 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %375 = call i32 @outsb(i64 %373, i32* %374, i32 11)
  %376 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %377 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @WBCIR_REG_WCEIR_INDEX, align 8
  %380 = add nsw i64 %378, %379
  %381 = load i32, i32* @WBCIR_REGSEL_MASK, align 4
  %382 = load i32, i32* @WBCIR_REG_ADDR0, align 4
  %383 = or i32 %381, %382
  %384 = call i32 @wbcir_set_bits(i64 %380, i32 %383, i32 63)
  %385 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %386 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @WBCIR_REG_WCEIR_DATA, align 8
  %389 = add nsw i64 %387, %388
  %390 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %391 = call i32 @outsb(i64 %389, i32* %390, i32 11)
  %392 = load i32, i32* %9, align 4
  %393 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %394 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @WBCIR_REG_WCEIR_CSL, align 8
  %397 = add nsw i64 %395, %396
  %398 = call i32 @outb(i32 %392, i64 %397)
  %399 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %400 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @WBCIR_REG_WCEIR_STS, align 8
  %403 = add nsw i64 %401, %402
  %404 = call i32 @wbcir_set_bits(i64 %403, i32 23, i32 23)
  %405 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %406 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %409 = add nsw i64 %407, %408
  %410 = call i32 @wbcir_set_bits(i64 %409, i32 1, i32 7)
  %411 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %412 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %415 = add nsw i64 %413, %414
  %416 = load i32, i32* %10, align 4
  %417 = shl i32 %416, 4
  %418 = or i32 %417, 1
  %419 = call i32 @wbcir_set_bits(i64 %415, i32 %418, i32 49)
  br label %433

420:                                              ; preds = %356
  %421 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %422 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %425 = add nsw i64 %423, %424
  %426 = call i32 @wbcir_set_bits(i64 %425, i32 0, i32 7)
  %427 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %428 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %431 = add nsw i64 %429, %430
  %432 = call i32 @wbcir_set_bits(i64 %431, i32 0, i32 1)
  br label %433

433:                                              ; preds = %420, %359
  %434 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %435 = load i32, i32* @WBCIR_IRQ_NONE, align 4
  %436 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %434, i32 %435)
  %437 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %438 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @disable_irq(i32 %439)
  ret void
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @wbcir_to_rc6cells(i32) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @outsb(i64, i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wbcir_set_irqmask(%struct.wbcir_data*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
