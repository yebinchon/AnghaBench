; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_bmon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_bmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i64, %struct.hl_debug_params_bmon*, i64 }
%struct.hl_debug_params_bmon = type { i32, i32, i32, i32, i32, i32, i32 }

@debug_bmon_regs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid register index in BMON\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@GOYA_BMON_PCIE_MSTR_RD = common dso_local global i64 0, align 8
@GOYA_BMON_PCIE_MSTR_WR = common dso_local global i64 0, align 8
@GOYA_BMON_PCIE_SLV_RD = common dso_local global i64 0, align 8
@GOYA_BMON_PCIE_SLV_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_debug_params*)* @goya_config_bmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_config_bmon(%struct.hl_device* %0, %struct.hl_debug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_debug_params*, align 8
  %6 = alloca %struct.hl_debug_params_bmon*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_debug_params* %1, %struct.hl_debug_params** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %10 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** @debug_bmon_regs, align 8
  %13 = call i64 @ARRAY_SIZE(i64* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %239

22:                                               ; preds = %2
  %23 = load i64*, i64** @debug_bmon_regs, align 8
  %24 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %25 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CFG_BASE, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 260
  %33 = call i32 @WREG32(i64 %32, i32 1)
  %34 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %35 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %183

38:                                               ; preds = %22
  %39 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %40 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %39, i32 0, i32 1
  %41 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %40, align 8
  store %struct.hl_debug_params_bmon* %41, %struct.hl_debug_params_bmon** %6, align 8
  %42 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %43 = icmp ne %struct.hl_debug_params_bmon* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %239

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, 512
  %50 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %51 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lower_32_bits(i32 %52)
  %54 = call i32 @WREG32(i64 %49, i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 516
  %57 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %58 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @upper_32_bits(i32 %59)
  %61 = call i32 @WREG32(i64 %56, i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 520
  %64 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %65 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lower_32_bits(i32 %66)
  %68 = call i32 @WREG32(i64 %63, i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, 524
  %71 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %72 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = call i32 @WREG32(i64 %70, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, 576
  %78 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %79 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @lower_32_bits(i32 %80)
  %82 = call i32 @WREG32(i64 %77, i32 %81)
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 580
  %85 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %86 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @upper_32_bits(i32 %87)
  %89 = call i32 @WREG32(i64 %84, i32 %88)
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 584
  %92 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %93 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @lower_32_bits(i32 %94)
  %96 = call i32 @WREG32(i64 %91, i32 %95)
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, 588
  %99 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %100 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @upper_32_bits(i32 %101)
  %103 = call i32 @WREG32(i64 %98, i32 %102)
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %104, 548
  %106 = call i32 @WREG32(i64 %105, i32 0)
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, 564
  %109 = call i32 @WREG32(i64 %108, i32 0)
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %110, 780
  %112 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %113 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @WREG32(i64 %111, i32 %114)
  %116 = load i64, i64* %7, align 8
  %117 = add nsw i64 %116, 776
  %118 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %119 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @WREG32(i64 %117, i32 %120)
  %122 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %123 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GOYA_BMON_PCIE_MSTR_RD, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %47
  %128 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %129 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @GOYA_BMON_PCIE_MSTR_WR, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %135 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @GOYA_BMON_PCIE_SLV_RD, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %141 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @GOYA_BMON_PCIE_SLV_WR, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 167772160, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %139, %133, %127, %47
  %147 = load i64, i64* %7, align 8
  %148 = add nsw i64 %147, 1792
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, 2816
  %151 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %152 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 12
  %155 = or i32 %150, %154
  %156 = call i32 @WREG32(i64 %148, i32 %155)
  %157 = load i64, i64* %7, align 8
  %158 = add nsw i64 %157, 1800
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, 2560
  %161 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %162 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 12
  %165 = or i32 %160, %164
  %166 = call i32 @WREG32(i64 %158, i32 %165)
  %167 = load i64, i64* %7, align 8
  %168 = add nsw i64 %167, 1804
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, 3072
  %171 = load %struct.hl_debug_params_bmon*, %struct.hl_debug_params_bmon** %6, align 8
  %172 = getelementptr inbounds %struct.hl_debug_params_bmon, %struct.hl_debug_params_bmon* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 12
  %175 = or i32 %170, %174
  %176 = call i32 @WREG32(i64 %168, i32 %175)
  %177 = load i64, i64* %7, align 8
  %178 = add nsw i64 %177, 256
  %179 = call i32 @WREG32(i64 %178, i32 17)
  %180 = load i64, i64* %7, align 8
  %181 = add nsw i64 %180, 772
  %182 = call i32 @WREG32(i64 %181, i32 1)
  br label %238

183:                                              ; preds = %22
  %184 = load i64, i64* %7, align 8
  %185 = add nsw i64 %184, 512
  %186 = call i32 @WREG32(i64 %185, i32 0)
  %187 = load i64, i64* %7, align 8
  %188 = add nsw i64 %187, 516
  %189 = call i32 @WREG32(i64 %188, i32 0)
  %190 = load i64, i64* %7, align 8
  %191 = add nsw i64 %190, 520
  %192 = call i32 @WREG32(i64 %191, i32 -1)
  %193 = load i64, i64* %7, align 8
  %194 = add nsw i64 %193, 524
  %195 = call i32 @WREG32(i64 %194, i32 -1)
  %196 = load i64, i64* %7, align 8
  %197 = add nsw i64 %196, 576
  %198 = call i32 @WREG32(i64 %197, i32 0)
  %199 = load i64, i64* %7, align 8
  %200 = add nsw i64 %199, 580
  %201 = call i32 @WREG32(i64 %200, i32 0)
  %202 = load i64, i64* %7, align 8
  %203 = add nsw i64 %202, 584
  %204 = call i32 @WREG32(i64 %203, i32 -1)
  %205 = load i64, i64* %7, align 8
  %206 = add nsw i64 %205, 588
  %207 = call i32 @WREG32(i64 %206, i32 -1)
  %208 = load i64, i64* %7, align 8
  %209 = add nsw i64 %208, 548
  %210 = call i32 @WREG32(i64 %209, i32 -1)
  %211 = load i64, i64* %7, align 8
  %212 = add nsw i64 %211, 564
  %213 = call i32 @WREG32(i64 %212, i32 67343)
  %214 = load i64, i64* %7, align 8
  %215 = add nsw i64 %214, 780
  %216 = call i32 @WREG32(i64 %215, i32 0)
  %217 = load i64, i64* %7, align 8
  %218 = add nsw i64 %217, 776
  %219 = call i32 @WREG32(i64 %218, i32 65535)
  %220 = load i64, i64* %7, align 8
  %221 = add nsw i64 %220, 1792
  %222 = call i32 @WREG32(i64 %221, i32 167774976)
  %223 = load i64, i64* %7, align 8
  %224 = add nsw i64 %223, 1800
  %225 = call i32 @WREG32(i64 %224, i32 167774720)
  %226 = load i64, i64* %7, align 8
  %227 = add nsw i64 %226, 1804
  %228 = call i32 @WREG32(i64 %227, i32 167775232)
  %229 = load i64, i64* %7, align 8
  %230 = add nsw i64 %229, 256
  %231 = call i32 @WREG32(i64 %230, i32 1)
  %232 = load i64, i64* %7, align 8
  %233 = add nsw i64 %232, 772
  %234 = call i32 @WREG32(i64 %233, i32 0)
  %235 = load i64, i64* %7, align 8
  %236 = add nsw i64 %235, 260
  %237 = call i32 @WREG32(i64 %236, i32 0)
  br label %238

238:                                              ; preds = %183, %146
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %238, %44, %15
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
