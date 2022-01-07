; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stw481x.c_stw481x_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stw481x.c_stw481x_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stw481x = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@stw481x_startup.vcore_val = internal constant [16 x i32] [i32 100, i32 105, i32 110, i32 115, i32 120, i32 122, i32 124, i32 126, i32 128, i32 130, i32 132, i32 134, i32 136, i32 138, i32 140, i32 145], align 16
@stw481x_startup.vpll_val = internal constant [4 x i32] [i32 105, i32 120, i32 130, i32 180], align 16
@stw481x_startup.vaux_val = internal constant [4 x i32] [i32 15, i32 18, i32 25, i32 28], align 16
@STW_CONF1 = common dso_local global i32 0, align 4
@STW_CONF1_PDN_VAUX = common dso_local global i32 0, align 4
@STW_CONF1_IT_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"voltages %s\0A\00", align 1
@STW_CONF1_V_MONITORING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"MMC level shifter %s\0A\00", align 1
@STW_CONF1_MMC_LS_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"high impedance\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"VMMC: %s\0A\00", align 1
@STW_CONF1_PDN_VMMC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"STw481x power control registers:\0A\00", align 1
@STW_PC_VCORE_SEL = common dso_local global i32 0, align 4
@STW_PC_VAUX_SEL = common dso_local global i32 0, align 4
@STW_PC_VPLL_SEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"VCORE: %u.%uV %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"VPLL:  %u.%uV %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"VAUX:  %u.%uV %s\0A\00", align 1
@STW_CONF2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"TWARN: %s threshold, %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"below\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"above\00", align 1
@STW_CONF2_MASK_TWARN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"mask through VDDOK\00", align 1
@STW_CONF2_VMMC_EXT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"IT WAKE UP: %s\0A\00", align 1
@STW_CONF2_MASK_IT_WAKE_UP = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"masked\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"GPO1: %s\0A\00", align 1
@STW_CONF2_GPO1 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"GPO2: %s\0A\00", align 1
@STW_CONF2_GPO2 = common dso_local global i32 0, align 4
@STW_VCORE_SLEEP = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"VCORE SLEEP: %u.%uV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stw481x*)* @stw481x_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stw481x_startup(%struct.stw481x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stw481x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stw481x* %0, %struct.stw481x** %3, align 8
  %12 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %13 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @STW_CONF1, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %2, align 4
  br label %266

21:                                               ; preds = %1
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @STW_CONF1_PDN_VAUX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @STW_CONF1_IT_WARN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %37 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @STW_CONF1_V_MONITORING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 (i32*, i8*, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %48 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @STW_CONF1_MMC_LS_STATUS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %59 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @STW_CONF1_PDN_VMMC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %68 = call i32 (i32*, i8*, ...) @dev_info(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  %69 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %70 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_info(i32* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %74 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %75 = load i32, i32* @STW_PC_VCORE_SEL, align 4
  %76 = call i32 @stw481x_get_pctl_reg(%struct.stw481x* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %21
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %2, align 4
  br label %266

81:                                               ; preds = %21
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 15
  store i32 %83, i32* %4, align 4
  %84 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %85 = load i32, i32* @STW_PC_VAUX_SEL, align 4
  %86 = call i32 @stw481x_get_pctl_reg(%struct.stw481x* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %266

91:                                               ; preds = %81
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 2
  %94 = and i32 %93, 3
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %99 = load i32, i32* @STW_PC_VPLL_SEL, align 4
  %100 = call i32 @stw481x_get_pctl_reg(%struct.stw481x* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %2, align 4
  br label %266

105:                                              ; preds = %91
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %106, 1
  %108 = and i32 %107, 2
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %112 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* @stw481x_startup.vcore_val, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, 100
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* @stw481x_startup.vcore_val, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = srem i32 %123, 100
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %130 = call i32 (i32*, i8*, ...) @dev_info(i32* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %119, i32 %124, i8* %129)
  %131 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %132 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* @stw481x_startup.vpll_val, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 100
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* @stw481x_startup.vpll_val, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = srem i32 %143, 100
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 16
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %150 = call i32 (i32*, i8*, ...) @dev_info(i32* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %139, i32 %144, i8* %149)
  %151 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %152 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* @stw481x_startup.vaux_val, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %158, 10
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* @stw481x_startup.vaux_val, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = srem i32 %163, 10
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %169 = call i32 (i32*, i8*, ...) @dev_info(i32* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %159, i32 %164, i8* %168)
  %170 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %171 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @STW_CONF2, align 4
  %174 = call i32 @regmap_read(i32 %172, i32 %173, i32* %11)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %105
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %2, align 4
  br label %266

179:                                              ; preds = %105
  %180 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %181 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @STW_CONF2_MASK_TWARN, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0)
  %194 = call i32 (i32*, i8*, ...) @dev_info(i32* %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %187, i8* %193)
  %195 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %196 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @STW_CONF2_VMMC_EXT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)
  %205 = call i32 (i32*, i8*, ...) @dev_info(i32* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %204)
  %206 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %207 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %206, i32 0, i32 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @STW_CONF2_MASK_IT_WAKE_UP, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)
  %216 = call i32 (i32*, i8*, ...) @dev_info(i32* %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %215)
  %217 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %218 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %217, i32 0, i32 0
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @STW_CONF2_GPO1, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  %227 = call i32 (i32*, i8*, ...) @dev_info(i32* %220, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %226)
  %228 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %229 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* @STW_CONF2_GPO2, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  %238 = call i32 (i32*, i8*, ...) @dev_info(i32* %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* %237)
  %239 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %240 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @STW_VCORE_SLEEP, align 4
  %243 = call i32 @regmap_read(i32 %241, i32 %242, i32* %11)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %179
  %247 = load i32, i32* %10, align 4
  store i32 %247, i32* %2, align 4
  br label %266

248:                                              ; preds = %179
  %249 = load i32, i32* %11, align 4
  %250 = and i32 %249, 15
  store i32 %250, i32* %5, align 4
  %251 = load %struct.stw481x*, %struct.stw481x** %3, align 8
  %252 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %251, i32 0, i32 0
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* @stw481x_startup.vcore_val, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %258, 100
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [16 x i32], [16 x i32]* @stw481x_startup.vcore_val, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = srem i32 %263, 100
  %265 = call i32 (i32*, i8*, ...) @dev_info(i32* %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %259, i32 %264)
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %248, %246, %177, %103, %89, %79, %19
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @stw481x_get_pctl_reg(%struct.stw481x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
