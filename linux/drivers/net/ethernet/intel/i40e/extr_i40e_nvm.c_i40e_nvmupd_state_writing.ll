; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_state_writing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_state_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_nvm_access = type { i32 }

@i40e_aqc_opc_nvm_update = common dso_local global i8* null, align 8
@I40E_NVMUPD_STATE_WRITE_WAIT = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_INIT = common dso_local global i8* null, align 8
@I40E_NVMUPD_STATE_INIT_WAIT = common dso_local global i8* null, align 8
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NVMUPD: bad cmd %s in writing state.\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i64* null, align 8
@I40E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@I40E_AQ_RC_EBUSY = common dso_local global i64 0, align 8
@I40E_GLVFGEN_TIMER = common dso_local global i32 0, align 4
@I40E_DEBUG_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"NVMUPD: write semaphore expired (%d >= %lld), retrying\0A\00", align 1
@I40E_RESOURCE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"NVMUPD: write semaphore reacquire failed aq_err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_state_writing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_nvmupd_state_writing(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %16 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %15, %struct.i40e_nvm_access* %16, i32* %17)
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %219, %4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %149 [
    i32 129, label %21
    i32 128, label %37
    i32 131, label %77
    i32 130, label %112
  ]

21:                                               ; preds = %19
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %22, %struct.i40e_nvm_access* %23, i32* %24, i32* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @I40E_NVMUPD_STATE_WRITE_WAIT, align 8
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %21
  br label %162

37:                                               ; preds = %19
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %39 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %38, %struct.i40e_nvm_access* %39, i32* %40, i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %47 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %54 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @i40e_aq_rc_to_posix(i64 %52, i64 %56)
  br label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i32 [ %57, %51 ], [ %60, %58 ]
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i8*, i8** @I40E_NVMUPD_STATE_INIT, align 8
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %76

67:                                               ; preds = %37
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %72 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %75 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %67, %61
  br label %162

77:                                               ; preds = %19
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %79 = call i64 @i40e_update_nvm_checksum(%struct.i40e_hw* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %84 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %91 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @i40e_aq_rc_to_posix(i64 %89, i64 %93)
  br label %98

95:                                               ; preds = %82
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  br label %98

98:                                               ; preds = %95, %88
  %99 = phi i32 [ %94, %88 ], [ %97, %95 ]
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i8*, i8** @I40E_NVMUPD_STATE_INIT, align 8
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %103 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %111

104:                                              ; preds = %77
  %105 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %107 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @I40E_NVMUPD_STATE_WRITE_WAIT, align 8
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %110 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %104, %98
  br label %162

112:                                              ; preds = %19
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %114 = call i64 @i40e_update_nvm_checksum(%struct.i40e_hw* %113)
  store i64 %114, i64* %9, align 8
  %115 = load i64, i64* %9, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %112
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %119 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %126 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @i40e_aq_rc_to_posix(i64 %124, i64 %128)
  br label %133

130:                                              ; preds = %117
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  br label %133

133:                                              ; preds = %130, %123
  %134 = phi i32 [ %129, %123 ], [ %132, %130 ]
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i8*, i8** @I40E_NVMUPD_STATE_INIT, align 8
  %137 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %138 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  br label %148

139:                                              ; preds = %112
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %141 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %143 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %144 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %147 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %139, %133
  br label %162

149:                                              ; preds = %19
  %150 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %151 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %152 = load i64*, i64** @i40e_nvm_update_state_str, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %150, i32 %151, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %156)
  %158 = load i64, i64* @I40E_NOT_SUPPORTED, align 8
  store i64 %158, i64* %9, align 8
  %159 = load i32, i32* @ESRCH, align 4
  %160 = sub nsw i32 0, %159
  %161 = load i32*, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %149, %148, %111, %76, %36
  %163 = load i64, i64* %9, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %222

165:                                              ; preds = %162
  %166 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %167 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @I40E_AQ_RC_EBUSY, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %222

172:                                              ; preds = %165
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %222, label %175

175:                                              ; preds = %172
  %176 = load i64, i64* %9, align 8
  store i64 %176, i64* %12, align 8
  %177 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %178 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %13, align 8
  %181 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %182 = load i32, i32* @I40E_GLVFGEN_TIMER, align 4
  %183 = call i64 @rd32(%struct.i40e_hw* %181, i32 %182)
  store i64 %183, i64* %14, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %186 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sge i64 %184, %188
  br i1 %189, label %190, label %221

190:                                              ; preds = %175
  %191 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %192 = load i32, i32* @I40E_DEBUG_ALL, align 4
  %193 = load i64, i64* %14, align 8
  %194 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %195 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %191, i32 %192, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %193, i64 %197)
  %199 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %200 = call i32 @i40e_release_nvm(%struct.i40e_hw* %199)
  %201 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %202 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %203 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %201, i32 %202)
  store i64 %203, i64* %9, align 8
  %204 = load i64, i64* %9, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %190
  %207 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %208 = load i32, i32* @I40E_DEBUG_ALL, align 4
  %209 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %210 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %207, i32 %208, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %212)
  %214 = load i64, i64* %12, align 8
  store i64 %214, i64* %9, align 8
  %215 = load i64, i64* %13, align 8
  %216 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %217 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i64 %215, i64* %218, align 8
  br label %220

219:                                              ; preds = %190
  store i32 1, i32* %11, align 4
  br label %19

220:                                              ; preds = %206
  br label %221

221:                                              ; preds = %220, %175
  br label %222

222:                                              ; preds = %221, %172, %165, %162
  %223 = load i64, i64* %9, align 8
  ret i64 %223
}

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i64 @i40e_nvmupd_nvm_write(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i64, i64) #1

declare dso_local i64 @i40e_update_nvm_checksum(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, ...) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
