; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_jedec.c_nand_jedec_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_jedec.c_nand_jedec_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtd_info = type { i32, i32, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_jedec_params = type { i32, %struct.jedec_ecc_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jedec_ecc_info = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ONFI_CRC_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Could not find valid JEDEC parameter page; aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unsupported JEDEC version: %d\0A\00", align 1
@JEDEC_FEATURE_16_BIT_BUS = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid codeword size\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_jedec_detect(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_memory_organization*, align 8
  %6 = alloca %struct.nand_jedec_params*, align 8
  %7 = alloca %struct.jedec_ecc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_6__* %16)
  store %struct.nand_memory_organization* %17, %struct.nand_memory_organization** %5, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %20 = call i32 @nand_readid_op(%struct.nand_chip* %18, i32 64, i8* %19, i32 5)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  store i32 0, i32* %2, align 4
  br label %230

28:                                               ; preds = %23
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.nand_jedec_params* @kzalloc(i32 64, i32 %29)
  store %struct.nand_jedec_params* %30, %struct.nand_jedec_params** %6, align 8
  %31 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %32 = icmp ne %struct.nand_jedec_params* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %230

36:                                               ; preds = %28
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = call i32 @nand_read_param_page_op(%struct.nand_chip* %37, i32 64, i32* null, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %226

42:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %48 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %49 = call i32 @nand_read_data_op(%struct.nand_chip* %47, %struct.nand_jedec_params* %48, i32 64, i32 1)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %226

53:                                               ; preds = %46
  %54 = load i32, i32* @ONFI_CRC_BASE, align 4
  %55 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %56 = bitcast %struct.nand_jedec_params* %55 to i32*
  %57 = call i32 @onfi_crc16(i32 %54, i32* %56, i32 510)
  %58 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %59 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %43

68:                                               ; preds = %63, %43
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %226

73:                                               ; preds = %68
  %74 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %75 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 10, i32* %8, align 4
  br label %88

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %226

94:                                               ; preds = %88
  %95 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %96 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @sanitize_string(i32 %97, i32 4)
  %99 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %100 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sanitize_string(i32 %101, i32 4)
  %103 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %104 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i32 @kstrdup(i32 %105, i32 %106)
  %108 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %109 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %94
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %226

119:                                              ; preds = %94
  %120 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %121 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %125 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %127 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %130 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %132 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = call i32 @fls(i32 %134)
  %136 = sub nsw i32 %135, 1
  %137 = shl i32 1, %136
  %138 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %139 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %141 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %144 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %148 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %150 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @le16_to_cpu(i32 %151)
  %153 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %154 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %156 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %159 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %161 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %164 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  %165 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %166 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = shl i32 1, %167
  %169 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %170 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %172 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = call i32 @fls(i32 %174)
  %176 = sub nsw i32 %175, 1
  %177 = shl i32 1, %176
  %178 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %179 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %181 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %5, align 8
  %184 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  %185 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %186 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = load i32, i32* @JEDEC_FEATURE_16_BIT_BUS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %119
  %193 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %194 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %195 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %119
  %199 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %200 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %199, i32 0, i32 1
  %201 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %200, align 8
  %202 = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %201, i64 0
  store %struct.jedec_ecc_info* %202, %struct.jedec_ecc_info** %7, align 8
  %203 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %7, align 8
  %204 = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp sge i32 %205, 9
  br i1 %206, label %207, label %223

207:                                              ; preds = %198
  %208 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %7, align 8
  %209 = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %212 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  store i32 %210, i32* %214, align 4
  %215 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %7, align 8
  %216 = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 1, %217
  %219 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %220 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %218, i32* %222, align 4
  br label %225

223:                                              ; preds = %198
  %224 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %207
  store i32 1, i32* %12, align 4
  br label %226

226:                                              ; preds = %225, %116, %91, %71, %52, %41
  %227 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %6, align 8
  %228 = call i32 @kfree(%struct.nand_jedec_params* %227)
  %229 = load i32, i32* %12, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %226, %33, %27
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_6__*) #1

declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.nand_jedec_params* @kzalloc(i32, i32) #1

declare dso_local i32 @nand_read_param_page_op(%struct.nand_chip*, i32, i32*, i32) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, %struct.nand_jedec_params*, i32, i32) #1

declare dso_local i32 @onfi_crc16(i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @sanitize_string(i32, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree(%struct.nand_jedec_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
