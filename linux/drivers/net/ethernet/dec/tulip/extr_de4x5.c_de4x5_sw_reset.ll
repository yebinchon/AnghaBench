; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.de4x5_private = type { i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i64, i64, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@OMR_SDP = common dso_local global i64 0, align 8
@OMR_PS = common dso_local global i64 0, align 8
@OMR_HBD = common dso_local global i64 0, align 8
@OMR_TTM = common dso_local global i64 0, align 8
@DC21140 = common dso_local global i32 0, align 4
@PBL_8 = common dso_local global i64 0, align 8
@PBL_4 = common dso_local global i64 0, align 8
@DESC_SKIP_LEN = common dso_local global i64 0, align 8
@DE4X5_CACHE_ALIGN = common dso_local global i64 0, align 8
@DC2114x = common dso_local global i32 0, align 4
@BMR_RML = common dso_local global i64 0, align 8
@DE4X5_BMR = common dso_local global i32 0, align 4
@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_PR = common dso_local global i64 0, align 8
@OMR_SB = common dso_local global i64 0, align 8
@PERFECT = common dso_local global i32 0, align 4
@DE4X5_RRBA = common dso_local global i32 0, align 4
@NUM_RX_DESC = common dso_local global i32 0, align 4
@DE4X5_TRBA = common dso_local global i32 0, align 4
@R_OWN = common dso_local global i32 0, align 4
@PERFECT_F = common dso_local global i32 0, align 4
@TD_SET = common dso_local global i32 0, align 4
@SETUP_FRAME_LEN = common dso_local global i32 0, align 4
@OMR_ST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: Setup frame timed out, status %08x\0A\00", align 1
@DE4X5_STS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_sw_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %10)
  store %struct.de4x5_private* %11, %struct.de4x5_private** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %16 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %15, i32 0, i32 15
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %1
  %20 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %21 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %20, i32 0, i32 14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %24 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load i64, i64* @OMR_SDP, align 8
  %32 = load i64, i64* @OMR_PS, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @OMR_HBD, align 8
  %35 = or i64 %33, %34
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 13
  store i64 %35, i64* %37, align 8
  br label %44

38:                                               ; preds = %19
  %39 = load i64, i64* @OMR_SDP, align 8
  %40 = load i64, i64* @OMR_TTM, align 8
  %41 = or i64 %39, %40
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 13
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %30
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @de4x5_switch_mac_port(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %49 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DC21140, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @PBL_8, align 8
  br label %57

55:                                               ; preds = %47
  %56 = load i64, i64* @PBL_4, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = load i64, i64* @DESC_SKIP_LEN, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @DE4X5_CACHE_ALIGN, align 8
  %62 = or i64 %60, %61
  store i64 %62, i64* %8, align 8
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -256
  %67 = load i32, i32* @DC2114x, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i64, i64* @BMR_RML, align 8
  br label %72

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i64 [ %70, %69 ], [ 0, %71 ]
  %74 = load i64, i64* %8, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @DE4X5_BMR, align 4
  %78 = call i32 @outl(i64 %76, i32 %77)
  %79 = load i32, i32* @DE4X5_OMR, align 4
  %80 = call i64 @inl(i32 %79)
  %81 = load i64, i64* @OMR_PR, align 8
  %82 = xor i64 %81, -1
  %83 = and i64 %80, %82
  store i64 %83, i64* %9, align 8
  %84 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %85 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DC21140, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %72
  %90 = load i64, i64* @OMR_SDP, align 8
  %91 = load i64, i64* @OMR_SB, align 8
  %92 = or i64 %90, %91
  %93 = load i64, i64* %9, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %89, %72
  %96 = load i32, i32* @PERFECT, align 4
  %97 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %98 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %97, i32 0, i32 12
  store i32 %96, i32* %98, align 8
  %99 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %100 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @DE4X5_RRBA, align 4
  %103 = call i32 @outl(i64 %101, i32 %102)
  %104 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %105 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @NUM_RX_DESC, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = add i64 %106, %109
  %111 = load i32, i32* @DE4X5_TRBA, align 4
  %112 = call i32 @outl(i64 %110, i32 %111)
  %113 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %114 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %116 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %115, i32 0, i32 11
  store i64 0, i64* %116, align 8
  %117 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %118 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %120 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %137, %95
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %124 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load i32, i32* @R_OWN, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %131 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %130, i32 0, i32 9
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i8* %129, i8** %136, align 8
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %121

140:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %156, %140
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %144 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = call i8* @cpu_to_le32(i32 0)
  %149 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %150 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %149, i32 0, i32 7
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i8* %148, i8** %155, align 8
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %141

159:                                              ; preds = %141
  %160 = call i32 (...) @barrier()
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 @SetMulticastFilter(%struct.net_device* %161)
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %165 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @PERFECT_F, align 4
  %168 = load i32, i32* @TD_SET, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @SETUP_FRAME_LEN, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @load_packet(%struct.net_device* %163, i32 %166, i32 %171, %struct.sk_buff* inttoptr (i64 1 to %struct.sk_buff*))
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @OMR_ST, align 8
  %175 = or i64 %173, %174
  %176 = load i32, i32* @DE4X5_OMR, align 4
  %177 = call i32 @outl(i64 %175, i32 %176)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %201, %159
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %179, 500
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %182, 0
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ false, %178 ], [ %183, %181 ]
  br i1 %185, label %186, label %204

186:                                              ; preds = %184
  %187 = call i32 @mdelay(i32 1)
  %188 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %189 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %188, i32 0, i32 7
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %192 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @le32_to_cpu(i8* %196)
  %198 = icmp sge i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %186
  store i32 1, i32* %6, align 4
  br label %200

200:                                              ; preds = %199, %186
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  br label %178

204:                                              ; preds = %184
  %205 = load i64, i64* %9, align 8
  %206 = load i32, i32* @DE4X5_OMR, align 4
  %207 = call i32 @outl(i64 %205, i32 %206)
  %208 = load i32, i32* %6, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %204
  %211 = load %struct.net_device*, %struct.net_device** %2, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @DE4X5_STS, align 4
  %215 = call i64 @inl(i32 %214)
  %216 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %213, i64 %215)
  %217 = load i32, i32* @EIO, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %210, %204
  %220 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %221 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %222, 1
  %224 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %225 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = urem i64 %223, %227
  %229 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %230 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  %231 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %232 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %235 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %234, i32 0, i32 4
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_switch_mac_port(%struct.net_device*) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @SetMulticastFilter(%struct.net_device*) #1

declare dso_local i32 @load_packet(%struct.net_device*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
