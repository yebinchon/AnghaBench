; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_flash_BEx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_flash_BEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_comp = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.be_dma_mem = type { i32 }
%struct.flash_section_info = type { i32 }

@be_flash_BEx.gen3_flash_types = internal constant [10 x %struct.flash_comp] [%struct.flash_comp { i64 155, i64 133, i64 161, i32 143, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 148, i64 128, i64 149, i32 147, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 156, i64 137, i64 162, i32 139, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 150, i64 129, i64 162, i32 138, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 159, i64 136, i64 162, i32 140, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 157, i64 132, i64 161, i32 145, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 158, i64 135, i64 161, i32 144, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 160, i64 134, i64 161, i32 146, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 153, i64 131, i64 154, i32 141, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 151, i64 130, i64 152, i32 142, i32 0, i32 0, i32 0, i32 0 }], align 16
@be_flash_BEx.gen2_flash_types = internal constant [8 x %struct.flash_comp] [%struct.flash_comp { i64 166, i64 133, i64 172, i32 143, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 163, i64 128, i64 164, i32 147, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 167, i64 137, i64 173, i32 139, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 165, i64 129, i64 173, i32 138, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 170, i64 136, i64 173, i32 140, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 168, i64 132, i64 172, i32 145, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 169, i64 135, i64 172, i32 144, i32 0, i32 0, i32 0, i32 0 }, %struct.flash_comp { i64 171, i64 134, i64 172, i32 146, i32 0, i32 0, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [43 x i8] c"Invalid Cookie. FW image may be corrupted\0A\00", align 1
@NCSI_UPDATE_LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not get CRC for 0x%x region\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Flashing section type 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32)* @be_flash_BEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_flash_BEx(%struct.be_adapter* %0, %struct.firmware* %1, %struct.be_dma_mem* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.flash_section_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.flash_comp*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %11, align 8
  store %struct.flash_section_info* null, %struct.flash_section_info** %12, align 8
  %28 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %29 = call i64 @BE3_chip(%struct.be_adapter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  store %struct.flash_comp* getelementptr inbounds ([10 x %struct.flash_comp], [10 x %struct.flash_comp]* @be_flash_BEx.gen3_flash_types, i64 0, i64 0), %struct.flash_comp** %17, align 8
  store i32 4, i32* %15, align 4
  %32 = call i32 @ARRAY_SIZE(%struct.flash_comp* getelementptr inbounds ([10 x %struct.flash_comp], [10 x %struct.flash_comp]* @be_flash_BEx.gen3_flash_types, i64 0, i64 0))
  store i32 %32, i32* %16, align 4
  br label %35

33:                                               ; preds = %4
  store %struct.flash_comp* getelementptr inbounds ([8 x %struct.flash_comp], [8 x %struct.flash_comp]* @be_flash_BEx.gen2_flash_types, i64 0, i64 0), %struct.flash_comp** %17, align 8
  store i32 4, i32* %15, align 4
  %34 = call i32 @ARRAY_SIZE(%struct.flash_comp* getelementptr inbounds ([8 x %struct.flash_comp], [8 x %struct.flash_comp]* @be_flash_BEx.gen2_flash_types, i64 0, i64 0))
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.firmware*, %struct.firmware** %7, align 8
  %41 = call %struct.flash_section_info* @get_fsec_info(%struct.be_adapter* %36, i32 %39, %struct.firmware* %40)
  store %struct.flash_section_info* %41, %struct.flash_section_info** %12, align 8
  %42 = load %struct.flash_section_info*, %struct.flash_section_info** %12, align 8
  %43 = icmp ne %struct.flash_section_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %11, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %214

47:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %210, %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %213

52:                                               ; preds = %48
  %53 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %54 = load %struct.flash_section_info*, %struct.flash_section_info** %12, align 8
  %55 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %55, i64 %57
  %59 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @is_comp_in_ufi(%struct.be_adapter* %53, %struct.flash_section_info* %54, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %210

64:                                               ; preds = %52
  %65 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %65, i64 %67
  %69 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 131
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @be_fw_ncsi_supported(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load %struct.device*, %struct.device** %11, align 8
  %80 = load i32, i32* @NCSI_UPDATE_LOG, align 4
  %81 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_info(%struct.device* %79, i32 %80, i32 %83)
  br label %210

85:                                               ; preds = %72, %64
  %86 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %86, i64 %88
  %90 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 130
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %95 = call i32 @phy_flashing_required(%struct.be_adapter* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %210

98:                                               ; preds = %93, %85
  %99 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %99, i64 %101
  %103 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 128
  br i1 %105, label %106, label %143

106:                                              ; preds = %98
  %107 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %108 = load %struct.firmware*, %struct.firmware** %7, align 8
  %109 = getelementptr inbounds %struct.firmware, %struct.firmware* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %111, i64 %113
  %115 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %117, i64 %119
  %121 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @be_check_flash_crc(%struct.be_adapter* %107, i32* %110, i32 %116, i32 %122, i32 %125, i64 128, i32* %18)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %106
  %130 = load %struct.device*, %struct.device** %11, align 8
  %131 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %131, i64 %133
  %135 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  br label %210

138:                                              ; preds = %106
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %210

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142, %98
  %144 = load %struct.firmware*, %struct.firmware** %7, align 8
  %145 = getelementptr inbounds %struct.firmware, %struct.firmware* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %150, i64 %152
  %154 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %149, i64 %156
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32* %160, i32** %19, align 8
  %161 = load i32*, i32** %19, align 8
  %162 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %162, i64 %164
  %166 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %161, i64 %168
  %170 = load %struct.firmware*, %struct.firmware** %7, align 8
  %171 = getelementptr inbounds %struct.firmware, %struct.firmware* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.firmware*, %struct.firmware** %7, align 8
  %174 = getelementptr inbounds %struct.firmware, %struct.firmware* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = icmp ugt i32* %169, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %143
  store i32 -1, i32* %5, align 4
  br label %214

180:                                              ; preds = %143
  %181 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %182 = load i32*, i32** %19, align 8
  %183 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %184 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %184, i64 %186
  %188 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %190, i64 %192
  %194 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @be_flash(%struct.be_adapter* %181, i32* %182, %struct.be_dma_mem* %183, i64 %189, i32 %195, i32 0)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %180
  %200 = load %struct.device*, %struct.device** %11, align 8
  %201 = load %struct.flash_comp*, %struct.flash_comp** %17, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %201, i64 %203
  %205 = getelementptr inbounds %struct.flash_comp, %struct.flash_comp* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %206)
  %208 = load i32, i32* %13, align 4
  store i32 %208, i32* %5, align 4
  br label %214

209:                                              ; preds = %180
  br label %210

210:                                              ; preds = %209, %141, %129, %97, %78, %63
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %48

213:                                              ; preds = %48
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %199, %179, %44
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.flash_comp*) #1

declare dso_local %struct.flash_section_info* @get_fsec_info(%struct.be_adapter*, i32, %struct.firmware*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @is_comp_in_ufi(%struct.be_adapter*, %struct.flash_section_info*, i64) #1

declare dso_local i32 @be_fw_ncsi_supported(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i32, i32) #1

declare dso_local i32 @phy_flashing_required(%struct.be_adapter*) #1

declare dso_local i32 @be_check_flash_crc(%struct.be_adapter*, i32*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @be_flash(%struct.be_adapter*, i32*, %struct.be_dma_mem*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
