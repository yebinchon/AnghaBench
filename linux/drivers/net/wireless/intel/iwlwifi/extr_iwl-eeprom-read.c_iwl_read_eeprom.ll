; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@CSR_EEPROM_GP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"NVM size = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EEPROM not found, EEPROM_GP=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to acquire EEPROM semaphore.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to initialize OTP access.\0A\00", align 1
@CSR_EEPROM_GP_IF_OWNER_MSK = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK = common dso_local global i32 0, align 4
@CSR_EEPROM_REG = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_MSK_ADDR = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_READ_VALID_MSK = common dso_local global i32 0, align 4
@IWL_EEPROM_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Time out reading EEPROM[%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"NVM Type: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"OTP\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_read_eeprom(%struct.iwl_trans* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %19 = load i32, i32* @CSR_EEPROM_GP, align 4
  %20 = call i32 @iwl_read32(%struct.iwl_trans* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32**, i32*** %6, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %215

29:                                               ; preds = %23
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %31 = call i32 @iwl_nvm_is_otp(%struct.iwl_trans* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %4, align 4
  br label %215

36:                                               ; preds = %29
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (i32, i8*, ...) @IWL_DEBUG_EEPROM(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kmalloc(i32 %49, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %215

57:                                               ; preds = %36
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @iwl_eeprom_verify_signature(%struct.iwl_trans* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %211

67:                                               ; preds = %57
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %69 = call i32 @iwl_eeprom_acquire_semaphore(%struct.iwl_trans* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %74 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %211

75:                                               ; preds = %67
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %149

78:                                               ; preds = %75
  %79 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %80 = call i32 @iwl_init_otp_access(%struct.iwl_trans* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %85 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %208

86:                                               ; preds = %78
  %87 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %88 = load i32, i32* @CSR_EEPROM_GP, align 4
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %90 = load i32, i32* @CSR_EEPROM_GP, align 4
  %91 = call i32 @iwl_read32(%struct.iwl_trans* %89, i32 %90)
  %92 = load i32, i32* @CSR_EEPROM_GP_IF_OWNER_MSK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call i32 @iwl_write32(%struct.iwl_trans* %87, i32 %88, i32 %94)
  %96 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %97 = load i32, i32* @CSR_OTP_GP_REG, align 4
  %98 = load i32, i32* @CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK, align 4
  %99 = load i32, i32* @CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @iwl_set_bit(%struct.iwl_trans* %96, i32 %97, i32 %100)
  %102 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %103 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %86
  %111 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %112 = call i32 @iwl_find_otp_image(%struct.iwl_trans* %111, i32* %13)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %208

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %143, %117
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %121, %122
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @iwl_read_otp_word(%struct.iwl_trans* %126, i32 %127, i32* %16)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %208

132:                                              ; preds = %125
  %133 = load i32, i32* %16, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sdiv i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 4
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %12, align 4
  br label %119

148:                                              ; preds = %119
  br label %192

149:                                              ; preds = %75
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %186, %149
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %191

154:                                              ; preds = %150
  %155 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %156 = load i32, i32* @CSR_EEPROM_REG, align 4
  %157 = load i32, i32* @CSR_EEPROM_REG_MSK_ADDR, align 4
  %158 = load i32, i32* %12, align 4
  %159 = shl i32 %158, 1
  %160 = and i32 %157, %159
  %161 = call i32 @iwl_write32(%struct.iwl_trans* %155, i32 %156, i32 %160)
  %162 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %163 = load i32, i32* @CSR_EEPROM_REG, align 4
  %164 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %165 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %166 = load i32, i32* @IWL_EEPROM_ACCESS_TIMEOUT, align 4
  %167 = call i32 @iwl_poll_bit(%struct.iwl_trans* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %154
  %171 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %208

174:                                              ; preds = %154
  %175 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %176 = load i32, i32* @CSR_EEPROM_REG, align 4
  %177 = call i32 @iwl_read32(%struct.iwl_trans* %175, i32 %176)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = ashr i32 %178, 16
  %180 = call i32 @cpu_to_le16(i32 %179)
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sdiv i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 %180, i32* %185, align 4
  br label %186

186:                                              ; preds = %174
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, 4
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %12, align 4
  br label %150

191:                                              ; preds = %150
  br label %192

192:                                              ; preds = %191, %148
  %193 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %194 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %15, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %200 = call i32 (i32, i8*, ...) @IWL_DEBUG_EEPROM(i32 %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %199)
  %201 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %202 = call i32 @iwl_eeprom_release_semaphore(%struct.iwl_trans* %201)
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64*, i64** %7, align 8
  store i64 %204, i64* %205, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = load i32**, i32*** %6, align 8
  store i32* %206, i32** %207, align 8
  store i32 0, i32* %4, align 4
  br label %215

208:                                              ; preds = %170, %131, %115, %83
  %209 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %210 = call i32 @iwl_eeprom_release_semaphore(%struct.iwl_trans* %209)
  br label %211

211:                                              ; preds = %208, %72, %63
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @kfree(i32* %212)
  %214 = load i32, i32* %11, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %211, %192, %54, %34, %26
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_nvm_is_otp(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @iwl_eeprom_verify_signature(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_eeprom_acquire_semaphore(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_init_otp_access(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_find_otp_image(%struct.iwl_trans*, i32*) #1

declare dso_local i32 @iwl_read_otp_word(%struct.iwl_trans*, i32, i32*) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_eeprom_release_semaphore(%struct.iwl_trans*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
