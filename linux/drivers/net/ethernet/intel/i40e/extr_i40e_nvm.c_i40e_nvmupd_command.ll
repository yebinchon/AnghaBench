; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i32, i32, i32, i32 }

@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"%s state %d nvm_release_on_hold %d opc 0x%04x cmd 0x%08x config 0x%08x offset 0x%08x data_size 0x%08x\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i32* null, align 8
@I40E_NVMUPD_INVALID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"i40e_nvmupd_validate_command returns %d errno %d\0A\00", align 1
@I40E_NVMUPD_STATUS = common dso_local global i32 0, align 4
@I40E_ERR_BUF_TOO_SHORT = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Clearing I40E_NVMUPD_STATE_ERROR state without reading\0A\00", align 1
@I40E_ERR_NOT_READY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"NVMUPD: no such state %d\0A\00", align 1
@I40E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_nvmupd_command(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_nvm_access*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %14 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %13, %struct.i40e_nvm_access* %14, i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %18 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %19 = load i32*, i32** @i40e_nvm_update_state_str, align 8
  %20 = load i32, i32* %11, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %31 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %34 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %37 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %40 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %43 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %17, i32 %18, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @I40E_NVMUPD_INVALID, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %4
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %54 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %53, i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %49, %4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @I40E_NVMUPD_STATUS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %65 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @I40E_ERR_BUF_TOO_SHORT, align 4
  store i32 %72, i32* %5, align 4
  br label %169

73:                                               ; preds = %63
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %75 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %80 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 4
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %87 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %73
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %93 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I40E_NVMUPD_STATE_ERROR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %99 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %98, i32 0, i32 0
  store i32 132, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %91
  store i32 0, i32* %5, align 4
  br label %169

101:                                              ; preds = %59
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %103 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @I40E_NVMUPD_STATE_ERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %109 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %110 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %108, i32 %109, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %112 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %111, i32 0, i32 0
  store i32 132, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %115 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %119 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %152 [
    i32 132, label %121
    i32 130, label %127
    i32 128, label %133
    i32 131, label %139
    i32 129, label %139
  ]

121:                                              ; preds = %113
  %122 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %123 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @i40e_nvmupd_state_init(%struct.i40e_hw* %122, %struct.i40e_nvm_access* %123, i32* %124, i32* %125)
  store i32 %126, i32* %10, align 4
  br label %163

127:                                              ; preds = %113
  %128 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %129 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @i40e_nvmupd_state_reading(%struct.i40e_hw* %128, %struct.i40e_nvm_access* %129, i32* %130, i32* %131)
  store i32 %132, i32* %10, align 4
  br label %163

133:                                              ; preds = %113
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %135 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @i40e_nvmupd_state_writing(%struct.i40e_hw* %134, %struct.i40e_nvm_access* %135, i32* %136, i32* %137)
  store i32 %138, i32* %10, align 4
  br label %163

139:                                              ; preds = %113, %113
  %140 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %141 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 65535
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %146 = call i32 @i40e_nvmupd_clear_wait_state(%struct.i40e_hw* %145)
  store i32 0, i32* %10, align 4
  br label %163

147:                                              ; preds = %139
  %148 = load i32, i32* @I40E_ERR_NOT_READY, align 4
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @EBUSY, align 4
  %150 = sub nsw i32 0, %149
  %151 = load i32*, i32** %9, align 8
  store i32 %150, i32* %151, align 4
  br label %163

152:                                              ; preds = %113
  %153 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %154 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %155 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %156 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %153, i32 %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @I40E_NOT_SUPPORTED, align 4
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @ESRCH, align 4
  %161 = sub nsw i32 0, %160
  %162 = load i32*, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %152, %147, %144, %133, %127, %121
  %164 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %165 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %163, %100, %68
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i40e_nvmupd_state_init(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_state_reading(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_state_writing(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_clear_wait_state(%struct.i40e_hw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
