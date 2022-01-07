; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, %struct.iwl_cfg* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_cfg = type { i64, i64, i8* }

@IWL_DEVICE_FAMILY_9000 = common dso_local global i64 0, align 8
@SILICON_B_STEP = common dso_local global i64 0, align 8
@SILICON_C_STEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Only HW steps B and C are currently supported (0x%0x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"no suitable firmware found!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s%d is required\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"minimum version required: %s%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"maximum version supported: %s%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"check git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"%s%s.ucode\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"attempting to load firmware '%s'\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iwl_req_fw_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, i32)* @iwl_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_request_firmware(%struct.iwl_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_cfg*, align 8
  %7 = alloca [8 x i8], align 1
  store %struct.iwl_drv* %0, %struct.iwl_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load %struct.iwl_cfg*, %struct.iwl_cfg** %11, align 8
  store %struct.iwl_cfg* %12, %struct.iwl_cfg** %6, align 8
  %13 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWL_DEVICE_FAMILY_9000, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CSR_HW_REV_STEP(i32 %27)
  %29 = load i64, i64* @SILICON_B_STEP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %22
  %32 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @CSR_HW_REV_STEP(i32 %36)
  %38 = load i64, i64* @SILICON_C_STEP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %42 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %41, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %150

50:                                               ; preds = %31, %22, %2
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %60 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %74

64:                                               ; preds = %50
  %65 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %70 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %64, %53
  %75 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %79 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %74
  %83 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %84 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %86 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %94 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %98 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %96, i64 %99)
  br label %118

101:                                              ; preds = %82
  %102 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %103 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %104 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %105, i64 %108)
  %110 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %111 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %112 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %115 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %113, i64 %116)
  br label %118

118:                                              ; preds = %101, %92
  %119 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %120 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %119, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %150

123:                                              ; preds = %74
  %124 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %128 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %131 = call i32 @snprintf(i32 %126, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %129, i8* %130)
  %132 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %133 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %134 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @IWL_DEBUG_FW_INFO(%struct.iwl_drv* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @THIS_MODULE, align 4
  %138 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %139 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %142 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %148 = load i32, i32* @iwl_req_fw_callback, align 4
  %149 = call i32 @request_firmware_nowait(i32 %137, i32 1, i32 %140, i32 %145, i32 %146, %struct.iwl_drv* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %123, %118, %40
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_drv*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @IWL_DEBUG_FW_INFO(%struct.iwl_drv*, i8*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32, i32, %struct.iwl_drv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
