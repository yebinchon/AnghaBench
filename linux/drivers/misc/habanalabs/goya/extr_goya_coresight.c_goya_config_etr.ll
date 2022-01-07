; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_etr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_etr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i32, i64, %struct.hl_debug_params_etr*, i64 }
%struct.hl_debug_params_etr = type { i32, i32, i32 }

@mmPSOC_ETR_BASE = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i32 0, align 4
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to %s ETR on timeout, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ETR buffer size should be bigger than 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"buffer address is not valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_debug_params*)* @goya_config_etr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_config_etr(%struct.hl_device* %0, %struct.hl_debug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_debug_params*, align 8
  %6 = alloca %struct.hl_debug_params_etr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_debug_params* %1, %struct.hl_debug_params** %5, align 8
  %12 = load i32, i32* @mmPSOC_ETR_BASE, align 4
  %13 = load i32, i32* @CFG_BASE, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 4016
  %17 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %18 = call i32 @WREG32(i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 772
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, 4096
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 772
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 772
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 772
  %37 = call i32 @goya_coresight_timeout(%struct.hl_device* %34, i32 %36, i32 6, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %45 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %206

53:                                               ; preds = %2
  %54 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 12
  %57 = call i32 @goya_coresight_timeout(%struct.hl_device* %54, i32 %56, i32 2, i32 1)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %62 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %65 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %206

73:                                               ; preds = %53
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 32
  %76 = call i32 @WREG32(i32 %75, i32 0)
  %77 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %78 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %161

81:                                               ; preds = %73
  %82 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %83 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %82, i32 0, i32 2
  %84 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %83, align 8
  store %struct.hl_debug_params_etr* %84, %struct.hl_debug_params_etr** %6, align 8
  %85 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %86 = icmp ne %struct.hl_debug_params_etr* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %206

90:                                               ; preds = %81
  %91 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %92 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %97 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %206

102:                                              ; preds = %90
  %103 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %104 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %105 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %108 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @goya_etr_validate_address(%struct.hl_device* %103, i32 %106, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %102
  %113 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %114 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %206

119:                                              ; preds = %102
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 52
  %122 = call i32 @WREG32(i32 %121, i32 16380)
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 4
  %125 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %126 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @WREG32(i32 %124, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 40
  %131 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %132 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @WREG32(i32 %130, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 272
  %137 = call i32 @WREG32(i32 %136, i32 1792)
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 280
  %140 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %141 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @lower_32_bits(i32 %142)
  %144 = call i32 @WREG32(i32 %139, i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 284
  %147 = load %struct.hl_debug_params_etr*, %struct.hl_debug_params_etr** %6, align 8
  %148 = getelementptr inbounds %struct.hl_debug_params_etr, %struct.hl_debug_params_etr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @upper_32_bits(i32 %149)
  %151 = call i32 @WREG32(i32 %146, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 772
  %154 = call i32 @WREG32(i32 %153, i32 3)
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 776
  %157 = call i32 @WREG32(i32 %156, i32 10)
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 32
  %160 = call i32 @WREG32(i32 %159, i32 1)
  br label %205

161:                                              ; preds = %73
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 52
  %164 = call i32 @WREG32(i32 %163, i32 0)
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 4
  %167 = call i32 @WREG32(i32 %166, i32 1024)
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 280
  %170 = call i32 @WREG32(i32 %169, i32 0)
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 284
  %173 = call i32 @WREG32(i32 %172, i32 0)
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 776
  %176 = call i32 @WREG32(i32 %175, i32 0)
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 40
  %179 = call i32 @WREG32(i32 %178, i32 0)
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 772
  %182 = call i32 @WREG32(i32 %181, i32 0)
  %183 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %184 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = icmp uge i64 %186, 4
  br i1 %187, label %188, label %204

188:                                              ; preds = %161
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 24
  %191 = call i32 @RREG32(i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 60
  %194 = call i32 @RREG32(i32 %193)
  %195 = and i32 %194, 255
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = shl i32 %196, 32
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %197, %198
  %200 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %201 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i32*
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %188, %161
  br label %205

205:                                              ; preds = %204, %119
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %112, %95, %87, %60, %40
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @goya_coresight_timeout(%struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @goya_etr_validate_address(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
