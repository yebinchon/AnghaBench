; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_validate_sec_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_validate_sec_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { i32 }
%struct.iwl_firmware_pieces = type { i32 }
%struct.iwl_cfg = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"f/w package hdr runtime inst size = %zd\0A\00", align 1
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@IWL_UCODE_SECTION_INST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"f/w package hdr runtime data size = %zd\0A\00", align 1
@IWL_UCODE_SECTION_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"f/w package hdr init inst size = %zd\0A\00", align 1
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"f/w package hdr init data size = %zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"uCode instr len %zd too large to fit in\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"uCode data len %zd too large to fit in\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"uCode init instr len %zd too large to fit in\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"uCode init data len %zd too large to fit in\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, %struct.iwl_firmware_pieces*, %struct.iwl_cfg*)* @validate_sec_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_sec_sizes(%struct.iwl_drv* %0, %struct.iwl_firmware_pieces* %1, %struct.iwl_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_drv*, align 8
  %6 = alloca %struct.iwl_firmware_pieces*, align 8
  %7 = alloca %struct.iwl_cfg*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %5, align 8
  store %struct.iwl_firmware_pieces* %1, %struct.iwl_firmware_pieces** %6, align 8
  store %struct.iwl_cfg* %2, %struct.iwl_cfg** %7, align 8
  %8 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %9 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %10 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %11 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %12 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %9, i32 %10, i32 %11)
  %13 = call i32 @IWL_DEBUG_INFO(%struct.iwl_drv* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %15 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %16 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %17 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %18 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %15, i32 %16, i32 %17)
  %19 = call i32 @IWL_DEBUG_INFO(%struct.iwl_drv* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %21 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %22 = load i32, i32* @IWL_UCODE_INIT, align 4
  %23 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %24 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %21, i32 %22, i32 %23)
  %25 = call i32 @IWL_DEBUG_INFO(%struct.iwl_drv* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %27 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %28 = load i32, i32* @IWL_UCODE_INIT, align 4
  %29 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %30 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %27, i32 %28, i32 %29)
  %31 = call i32 @IWL_DEBUG_INFO(%struct.iwl_drv* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %30)
  %32 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %33 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %34 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %35 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %32, i32 %33, i32 %34)
  %36 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %42 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %43 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %44 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %45 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %42, i32 %43, i32 %44)
  %46 = call i32 @IWL_ERR(%struct.iwl_drv* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  store i32 -1, i32* %4, align 4
  br label %96

47:                                               ; preds = %3
  %48 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %49 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %50 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %51 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %48, i32 %49, i32 %50)
  %52 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %58 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %59 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %60 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %61 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %58, i32 %59, i32 %60)
  %62 = call i32 @IWL_ERR(%struct.iwl_drv* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %61)
  store i32 -1, i32* %4, align 4
  br label %96

63:                                               ; preds = %47
  %64 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %65 = load i32, i32* @IWL_UCODE_INIT, align 4
  %66 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %67 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %64, i32 %65, i32 %66)
  %68 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %69 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %74 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %75 = load i32, i32* @IWL_UCODE_INIT, align 4
  %76 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %77 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %74, i32 %75, i32 %76)
  %78 = call i32 @IWL_ERR(%struct.iwl_drv* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %77)
  store i32 -1, i32* %4, align 4
  br label %96

79:                                               ; preds = %63
  %80 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %81 = load i32, i32* @IWL_UCODE_INIT, align 4
  %82 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %83 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %80, i32 %81, i32 %82)
  %84 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %90 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %91 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %92 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %93 = call i64 @get_sec_size(%struct.iwl_firmware_pieces* %90, i32 %91, i32 %92)
  %94 = call i32 @IWL_ERR(%struct.iwl_drv* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %93)
  store i32 -1, i32* %4, align 4
  br label %96

95:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %88, %72, %56, %40
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_drv*, i8*, i64) #1

declare dso_local i64 @get_sec_size(%struct.iwl_firmware_pieces*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_drv*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
