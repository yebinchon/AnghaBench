; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i64, i32, %struct.goya_device* }
%struct.goya_device = type { i32 }

@HW_CAP_CPU = common dso_local global i32 0, align 4
@DRAM_PHYS_BASE = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to map DDR bar to DRAM base address\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_WARM_REBOOT = common dso_local global i32 0, align 4
@CPU_BOOT_STATUS_DRAM_RDY = common dso_local global i32 0, align 4
@CPU_BOOT_STATUS_SRAM_AVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error in ARM u-boot!\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ARM status %d - BTL did NOT run\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ARM status %d - Inside WFE loop\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ARM status %d - Stuck in BTL\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"ARM status %d - Stuck in Preboot\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ARM status %d - Stuck in SPL\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ARM status %d - Stuck in u-boot\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"ARM status %d - DDR initialization failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"ARM status %d - u-boot stopped by user\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"ARM status %d - Invalid status code\0A\00", align 1
@FW_COMP_UBOOT = common dso_local global i32 0, align 4
@FW_COMP_PREBOOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Skip loading FW\0A\00", align 1
@mmPSOC_GLOBAL_CONF_UBOOT_MAGIC = common dso_local global i32 0, align 4
@KMD_MSG_FIT_RDY = common dso_local global i32 0, align 4
@CPU_BOOT_STATUS_FIT_CORRUPTED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"ARM u-boot reports FIT image is corrupted\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"ARM Linux failed to load, %d\0A\00", align 1
@KMD_MSG_NA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"Successfully loaded firmware to device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32)* @goya_init_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_init_cpu(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.goya_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 4
  %11 = load %struct.goya_device*, %struct.goya_device** %10, align 8
  store %struct.goya_device* %11, %struct.goya_device** %6, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %207

17:                                               ; preds = %2
  %18 = load %struct.goya_device*, %struct.goya_device** %6, align 8
  %19 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HW_CAP_CPU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %207

25:                                               ; preds = %17
  %26 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %27 = load i32, i32* @DRAM_PHYS_BASE, align 4
  %28 = call i64 @goya_set_ddr_bar_base(%struct.hl_device* %26, i32 %27)
  %29 = load i64, i64* @U64_MAX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %207

38:                                               ; preds = %25
  %39 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %45 = call i32 @goya_pldm_init_cpu(%struct.hl_device* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %207

50:                                               ; preds = %43
  br label %201

51:                                               ; preds = %38
  %52 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %53 = load i32, i32* @mmPSOC_GLOBAL_CONF_WARM_REBOOT, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @CPU_BOOT_STATUS_DRAM_RDY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CPU_BOOT_STATUS_SRAM_AVAIL, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi i1 [ true, %51 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @hl_poll_timeout(%struct.hl_device* %52, i32 %53, i32 %54, i32 %64, i32 10000, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %62
  %70 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %123 [
    i32 129, label %75
    i32 130, label %81
    i32 134, label %87
    i32 133, label %93
    i32 132, label %99
    i32 131, label %105
    i32 135, label %111
    i32 128, label %117
  ]

75:                                               ; preds = %69
  %76 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %77 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %129

81:                                               ; preds = %69
  %82 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %83 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %129

87:                                               ; preds = %69
  %88 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %89 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %129

93:                                               ; preds = %69
  %94 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %129

99:                                               ; preds = %69
  %100 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %101 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %129

105:                                              ; preds = %69
  %106 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %107 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32, i8*, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  br label %129

111:                                              ; preds = %69
  %112 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %113 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  br label %129

117:                                              ; preds = %69
  %118 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %119 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %121)
  br label %129

123:                                              ; preds = %69
  %124 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %125 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %123, %117, %111, %105, %99, %93, %87, %81, %75
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %207

132:                                              ; preds = %62
  %133 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %134 = load i32, i32* @FW_COMP_UBOOT, align 4
  %135 = call i32 @goya_read_device_fw_version(%struct.hl_device* %133, i32 %134)
  %136 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %137 = load i32, i32* @FW_COMP_PREBOOT, align 4
  %138 = call i32 @goya_read_device_fw_version(%struct.hl_device* %136, i32 %137)
  %139 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %140 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %132
  %144 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %145 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dev_info(i32 %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %201

148:                                              ; preds = %132
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @CPU_BOOT_STATUS_SRAM_AVAIL, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %201

153:                                              ; preds = %148
  %154 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %155 = call i32 @goya_push_linux_to_device(%struct.hl_device* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %207

160:                                              ; preds = %153
  %161 = load i32, i32* @mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, align 4
  %162 = load i32, i32* @KMD_MSG_FIT_RDY, align 4
  %163 = call i32 @WREG32(i32 %161, i32 %162)
  %164 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %165 = load i32, i32* @mmPSOC_GLOBAL_CONF_WARM_REBOOT, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @CPU_BOOT_STATUS_SRAM_AVAIL, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @hl_poll_timeout(%struct.hl_device* %164, i32 %165, i32 %166, i32 %170, i32 10000, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %160
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @CPU_BOOT_STATUS_FIT_CORRUPTED, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %181 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i32, i8*, ...) @dev_err(i32 %182, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %190

184:                                              ; preds = %175
  %185 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %186 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 (i32, i8*, ...) @dev_err(i32 %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* @mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, align 4
  %192 = load i32, i32* @KMD_MSG_NA, align 4
  %193 = call i32 @WREG32(i32 %191, i32 %192)
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %207

196:                                              ; preds = %160
  %197 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %198 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @dev_info(i32 %199, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  br label %201

201:                                              ; preds = %196, %152, %143, %50
  %202 = load i32, i32* @HW_CAP_CPU, align 4
  %203 = load %struct.goya_device*, %struct.goya_device** %6, align 8
  %204 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %201, %190, %158, %129, %48, %31, %24, %16
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i64 @goya_set_ddr_bar_base(%struct.hl_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @goya_pldm_init_cpu(%struct.hl_device*) #1

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @goya_read_device_fw_version(%struct.hl_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @goya_push_linux_to_device(%struct.hl_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
