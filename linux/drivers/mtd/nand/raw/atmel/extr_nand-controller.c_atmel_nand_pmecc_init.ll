; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.mtd_info = type { i32, i32 }
%struct.atmel_nand = type { i32 }
%struct.atmel_nand_controller = type { i32, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.atmel_pmecc_user_req = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"HW ECC not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"atmel,pmecc-cap\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"atmel,pmecc-sector-size\00", align 1
@NAND_ECC_MAXIMIZE = common dso_local global i32 0, align 4
@ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH = common dso_local global i8* null, align 8
@ATMEL_PMECC_SECTOR_SIZE_AUTO = common dso_local global i8* null, align 8
@ATMEL_PMECC_OOBOFFSET_AUTO = common dso_local global i64 0, align 8
@NAND_ECC_BCH = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@nand_ooblayout_lp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @atmel_nand_pmecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_pmecc_init(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.atmel_nand*, align 8
  %6 = alloca %struct.atmel_nand_controller*, align 8
  %7 = alloca %struct.atmel_pmecc_user_req, align 8
  %8 = alloca i8*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %11)
  store %struct.atmel_nand* %12, %struct.atmel_nand** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %15)
  store %struct.atmel_nand_controller* %16, %struct.atmel_nand_controller** %6, align 8
  %17 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %6, align 8
  %23 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = call i32 @dev_err(%struct.TYPE_12__* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %220

28:                                               ; preds = %1
  %29 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %6, align 8
  %30 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %28
  %36 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %6, align 8
  %37 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @of_property_read_u32(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_property_read_u32(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %28
  %63 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NAND_ECC_MAXIMIZE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i8*, i8** @ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH, align 8
  %72 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %108

74:                                               ; preds = %62
  %75 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  br label %107

87:                                               ; preds = %74
  %88 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %106

102:                                              ; preds = %87
  %103 = load i8*, i8** @ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH, align 8
  %104 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %102, %94
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107, %70
  %109 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %110 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %116 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  br label %141

121:                                              ; preds = %108
  %122 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %130 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %140

136:                                              ; preds = %121
  %137 = load i8*, i8** @ATMEL_PMECC_SECTOR_SIZE_AUTO, align 8
  %138 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %136, %128
  br label %141

141:                                              ; preds = %140, %114
  %142 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %143 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 0
  store i32 %144, i32* %145, align 8
  %146 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %147 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 1
  store i32 %148, i32* %149, align 4
  %150 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sle i32 %152, 512
  br i1 %153, label %154, label %159

154:                                              ; preds = %141
  %155 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i32 4, i32* %156, align 8
  %157 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  br label %169

159:                                              ; preds = %141
  %160 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %161 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 2
  %164 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* @ATMEL_PMECC_OOBOFFSET_AUTO, align 8
  %167 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 4
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %159, %154
  %170 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %6, align 8
  %171 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @atmel_pmecc_create_user(i32 %172, %struct.atmel_pmecc_user_req* %7)
  %174 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %175 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %177 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @IS_ERR(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %169
  %182 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %183 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @PTR_ERR(i32 %184)
  store i32 %185, i32* %2, align 4
  br label %220

186:                                              ; preds = %169
  %187 = load i32, i32* @NAND_ECC_BCH, align 4
  %188 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %189 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 4
  store i32 %187, i32* %190, align 8
  %191 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %195 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  store i8* %193, i8** %196, align 8
  %197 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sdiv i32 %199, %202
  %204 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %205 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  %207 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %7, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %211 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  store i8* %209, i8** %212, align 8
  %213 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %214 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %215 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %219 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %218, i32* @nand_ooblayout_lp_ops)
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %186, %181, %21
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i8**) #1

declare dso_local i32 @atmel_pmecc_create_user(i32, %struct.atmel_pmecc_user_req*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
