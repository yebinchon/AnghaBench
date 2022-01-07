; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"Failed to find '%s'\0A\00", align 1
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Flashing '%s' - firmware's data at %p, size is %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown command %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Command %08x failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed getting MCP response\0A\00", align 1
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"MFW returns error: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i8*)* @qed_nvm_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvm_flash(%struct.qed_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %15 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %6, i8* %13, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (%struct.qed_dev*, i8*, ...) @DP_ERR(%struct.qed_dev* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %2
  %27 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %28 = load i32, i32* @NETIF_MSG_DRV, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.firmware*, %struct.firmware** %6, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DP_VERBOSE(%struct.qed_dev* %27, i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32* %32, i32 %35)
  %37 = load %struct.firmware*, %struct.firmware** %6, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.firmware*, %struct.firmware** %6, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32* %45, i32** %8, align 8
  %46 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %47 = load %struct.firmware*, %struct.firmware** %6, align 8
  %48 = call i32 @qed_nvm_flash_image_validate(%struct.qed_dev* %46, %struct.firmware* %47, i32** %7)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  br label %112

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %110, %52
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ult i32* %54, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %73 [
    i32 131, label %61
    i32 130, label %64
    i32 128, label %67
    i32 129, label %70
  ]

61:                                               ; preds = %57
  %62 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %63 = call i32 @qed_nvm_flash_image_file_data(%struct.qed_dev* %62, i32** %7, i32* %11)
  store i32 %63, i32* %10, align 4
  br label %79

64:                                               ; preds = %57
  %65 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %66 = call i32 @qed_nvm_flash_image_file_start(%struct.qed_dev* %65, i32** %7, i32* %11)
  store i32 %66, i32* %10, align 4
  br label %79

67:                                               ; preds = %57
  %68 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %69 = call i32 @qed_nvm_flash_image_access(%struct.qed_dev* %68, i32** %7, i32* %11)
  store i32 %69, i32* %10, align 4
  br label %79

70:                                               ; preds = %57
  %71 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %72 = call i32 @qed_nvm_flash_cfg_write(%struct.qed_dev* %71, i32** %7)
  store i32 %72, i32* %10, align 4
  br label %79

73:                                               ; preds = %57
  %74 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.qed_dev*, i8*, ...) @DP_ERR(%struct.qed_dev* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %112

79:                                               ; preds = %70, %67, %64, %61
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.qed_dev*, i8*, ...) @DP_ERR(%struct.qed_dev* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %112

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  %90 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %91 = call i64 @qed_mcp_nvm_resp(%struct.qed_dev* %90, i32* %12)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %95 = call i32 (%struct.qed_dev*, i8*, ...) @DP_ERR(%struct.qed_dev* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %112

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %101 = and i32 %99, %100
  switch i32 %101, label %103 [
    i32 133, label %102
    i32 135, label %102
    i32 134, label %102
    i32 132, label %102
  ]

102:                                              ; preds = %98, %98, %98, %98
  br label %109

103:                                              ; preds = %98
  %104 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (%struct.qed_dev*, i8*, ...) @DP_ERR(%struct.qed_dev* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  br label %112

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %86
  br label %53

111:                                              ; preds = %53
  br label %112

112:                                              ; preds = %111, %103, %93, %82, %73, %51
  %113 = load %struct.firmware*, %struct.firmware** %6, align 8
  %114 = call i32 @release_firmware(%struct.firmware* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @qed_nvm_flash_image_validate(%struct.qed_dev*, %struct.firmware*, i32**) #1

declare dso_local i32 @qed_nvm_flash_image_file_data(%struct.qed_dev*, i32**, i32*) #1

declare dso_local i32 @qed_nvm_flash_image_file_start(%struct.qed_dev*, i32**, i32*) #1

declare dso_local i32 @qed_nvm_flash_image_access(%struct.qed_dev*, i32**, i32*) #1

declare dso_local i32 @qed_nvm_flash_cfg_write(%struct.qed_dev*, i32**) #1

declare dso_local i64 @qed_mcp_nvm_resp(%struct.qed_dev*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
