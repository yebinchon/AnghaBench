; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_state_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i32 }

@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_READING = common dso_local global i8* null, align 8
@I40E_RESOURCE_WRITE = common dso_local global i32 0, align 4
@i40e_aqc_opc_nvm_erase = common dso_local global i8* null, align 8
@I40E_NVMUPD_STATE_INIT_WAIT = common dso_local global i8* null, align 8
@i40e_aqc_opc_nvm_update = common dso_local global i8* null, align 8
@I40E_NVMUPD_STATE_WRITE_WAIT = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NVMUPD: bad cmd %s in init state\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i32* null, align 8
@I40E_ERR_NVM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_state_init(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %12 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %11, %struct.i40e_nvm_access* %12, i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %244 [
    i32 132, label %16
    i32 131, label %39
    i32 130, label %70
    i32 129, label %105
    i32 128, label %141
    i32 136, label %175
    i32 135, label %226
    i32 133, label %232
    i32 134, label %238
  ]

16:                                               ; preds = %4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %18 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %19 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @i40e_aq_rc_to_posix(i32 %23, i32 %27)
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %38

30:                                               ; preds = %16
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %32 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %31, %struct.i40e_nvm_access* %32, i32* %33, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = call i32 @i40e_release_nvm(%struct.i40e_hw* %36)
  br label %38

38:                                               ; preds = %30, %22
  br label %257

39:                                               ; preds = %4
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %41 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %42 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @i40e_aq_rc_to_posix(i32 %46, i32 %50)
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %69

53:                                               ; preds = %39
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %55 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %54, %struct.i40e_nvm_access* %55, i32* %56, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %63 = call i32 @i40e_release_nvm(%struct.i40e_hw* %62)
  br label %68

64:                                               ; preds = %53
  %65 = load i8*, i8** @I40E_NVMUPD_STATE_READING, align 8
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %67 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %45
  br label %257

70:                                               ; preds = %4
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %72 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %73 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @i40e_aq_rc_to_posix(i32 %77, i32 %81)
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  br label %104

84:                                               ; preds = %70
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %86 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @i40e_nvmupd_nvm_erase(%struct.i40e_hw* %85, %struct.i40e_nvm_access* %86, i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %93 = call i32 @i40e_release_nvm(%struct.i40e_hw* %92)
  br label %103

94:                                               ; preds = %84
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %96 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i8*, i8** @i40e_aqc_opc_nvm_erase, align 8
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %99 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %101 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %102 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %94, %91
  br label %104

104:                                              ; preds = %103, %76
  br label %257

105:                                              ; preds = %4
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %107 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %108 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %114 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @i40e_aq_rc_to_posix(i32 %112, i32 %116)
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %140

119:                                              ; preds = %105
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %121 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %120, %struct.i40e_nvm_access* %121, i32* %122, i32* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %129 = call i32 @i40e_release_nvm(%struct.i40e_hw* %128)
  br label %139

130:                                              ; preds = %119
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %132 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %135 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %137 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %138 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %130, %127
  br label %140

140:                                              ; preds = %139, %111
  br label %257

141:                                              ; preds = %4
  %142 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %143 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %144 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %150 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @i40e_aq_rc_to_posix(i32 %148, i32 %152)
  %154 = load i32*, i32** %8, align 8
  store i32 %153, i32* %154, align 4
  br label %174

155:                                              ; preds = %141
  %156 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %157 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %156, %struct.i40e_nvm_access* %157, i32* %158, i32* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %165 = call i32 @i40e_release_nvm(%struct.i40e_hw* %164)
  br label %173

166:                                              ; preds = %155
  %167 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %168 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %169 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** @I40E_NVMUPD_STATE_WRITE_WAIT, align 8
  %171 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %172 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %166, %163
  br label %174

174:                                              ; preds = %173, %147
  br label %257

175:                                              ; preds = %4
  %176 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %177 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %178 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %176, i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %184 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @i40e_aq_rc_to_posix(i32 %182, i32 %186)
  %188 = load i32*, i32** %8, align 8
  store i32 %187, i32* %188, align 4
  br label %225

189:                                              ; preds = %175
  %190 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %191 = call i32 @i40e_update_nvm_checksum(%struct.i40e_hw* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %189
  %195 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %196 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %203 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @i40e_aq_rc_to_posix(i32 %201, i32 %205)
  br label %210

207:                                              ; preds = %194
  %208 = load i32, i32* @EIO, align 4
  %209 = sub nsw i32 0, %208
  br label %210

210:                                              ; preds = %207, %200
  %211 = phi i32 [ %206, %200 ], [ %209, %207 ]
  %212 = load i32*, i32** %8, align 8
  store i32 %211, i32* %212, align 4
  %213 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %214 = call i32 @i40e_release_nvm(%struct.i40e_hw* %213)
  br label %224

215:                                              ; preds = %189
  %216 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %217 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  %218 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %219 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %220 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %222 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %223 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %215, %210
  br label %225

225:                                              ; preds = %224, %181
  br label %257

226:                                              ; preds = %4
  %227 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %228 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = load i32*, i32** %8, align 8
  %231 = call i32 @i40e_nvmupd_exec_aq(%struct.i40e_hw* %227, %struct.i40e_nvm_access* %228, i32* %229, i32* %230)
  store i32 %231, i32* %9, align 4
  br label %257

232:                                              ; preds = %4
  %233 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %234 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %235 = load i32*, i32** %7, align 8
  %236 = load i32*, i32** %8, align 8
  %237 = call i32 @i40e_nvmupd_get_aq_result(%struct.i40e_hw* %233, %struct.i40e_nvm_access* %234, i32* %235, i32* %236)
  store i32 %237, i32* %9, align 4
  br label %257

238:                                              ; preds = %4
  %239 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %240 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = call i32 @i40e_nvmupd_get_aq_event(%struct.i40e_hw* %239, %struct.i40e_nvm_access* %240, i32* %241, i32* %242)
  store i32 %243, i32* %9, align 4
  br label %257

244:                                              ; preds = %4
  %245 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %246 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %247 = load i32*, i32** @i40e_nvm_update_state_str, align 8
  %248 = load i32, i32* %10, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @i40e_debug(%struct.i40e_hw* %245, i32 %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* @I40E_ERR_NVM, align 4
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* @ESRCH, align 4
  %255 = sub nsw i32 0, %254
  %256 = load i32*, i32** %8, align 8
  store i32 %255, i32* %256, align 4
  br label %257

257:                                              ; preds = %244, %238, %232, %226, %225, %174, %140, %104, %69, %38
  %258 = load i32, i32* %9, align 4
  ret i32 %258
}

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i32, i32) #1

declare dso_local i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_nvmupd_nvm_erase(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_update_nvm_checksum(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_nvmupd_exec_aq(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_get_aq_result(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_get_aq_event(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
