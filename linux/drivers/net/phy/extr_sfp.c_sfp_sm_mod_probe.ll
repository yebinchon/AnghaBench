; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { %struct.sfp_eeprom_id, i32, i32, %struct.TYPE_4__* }
%struct.sfp_eeprom_id = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.sfp_eeprom_id*)* }

@.str = private unnamed_addr constant [27 x i8] c"failed to read EEPROM: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EEPROM short read: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"COTSWORKS       \00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"EEPROM base structure checksum failure (0x%02x != 0x%02x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"EEPROM base structure checksum failure: 0x%02x != 0x%02x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"sfp EE: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"EEPROM extended structure checksum failure (0x%02x != 0x%02x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"EEPROM extended structure checksum failure: 0x%02x != 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"module %.*s %.*s rev %.*s sn %.*s dc %.*s\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"module is not supported - phys id 0x%02x 0x%02x\0A\00", align 1
@SFP_DIAGMON_ADDRMODE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"module address swap to access page 0xA2 is not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*)* @sfp_sm_mod_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_sm_mod_probe(%struct.sfp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca %struct.sfp_eeprom_id, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  %8 = load %struct.sfp*, %struct.sfp** %3, align 8
  %9 = call i32 @sfp_read(%struct.sfp* %8, i32 0, i32 0, %struct.sfp_eeprom_id* %4, i32 80)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.sfp*, %struct.sfp** %3, align 8
  %14 = getelementptr inbounds %struct.sfp, %struct.sfp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %194

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 80
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.sfp*, %struct.sfp** %3, align 8
  %26 = getelementptr inbounds %struct.sfp, %struct.sfp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %194

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcmp(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %41 = call i32 @sfp_check(%struct.TYPE_5__* %40, i32 39)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %32
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.sfp*, %struct.sfp** %3, align 8
  %52 = getelementptr inbounds %struct.sfp, %struct.sfp* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_warn(i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %57)
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.sfp*, %struct.sfp** %3, align 8
  %61 = getelementptr inbounds %struct.sfp, %struct.sfp* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* @KERN_ERR, align 4
  %69 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %70 = call i32 @print_hex_dump(i32 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 16, i32 1, %struct.sfp_eeprom_id* %4, i32 80, i32 1)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %194

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %32
  %75 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %76 = call i32 @sfp_check(%struct.TYPE_5__* %75, i32 39)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.sfp*, %struct.sfp** %3, align 8
  %87 = getelementptr inbounds %struct.sfp, %struct.sfp* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_warn(i32 %88, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %92)
  br label %108

94:                                               ; preds = %82
  %95 = load %struct.sfp*, %struct.sfp** %3, align 8
  %96 = getelementptr inbounds %struct.sfp, %struct.sfp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @KERN_ERR, align 4
  %104 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %105 = call i32 @print_hex_dump(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 16, i32 1, %struct.sfp_eeprom_id* %4, i32 80, i32 1)
  %106 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %107 = call i32 @memset(%struct.TYPE_5__* %106, i32 0, i32 40)
  br label %108

108:                                              ; preds = %94, %85
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.sfp*, %struct.sfp** %3, align 8
  %111 = getelementptr inbounds %struct.sfp, %struct.sfp* %110, i32 0, i32 0
  %112 = bitcast %struct.sfp_eeprom_id* %111 to i8*
  %113 = bitcast %struct.sfp_eeprom_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 4 %113, i64 80, i1 false)
  %114 = load %struct.sfp*, %struct.sfp** %3, align 8
  %115 = getelementptr inbounds %struct.sfp, %struct.sfp* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %4, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_info(i32 %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 4, i32 %119, i32 4, i32 %122, i32 4, i32 %125, i32 4, i32 %128, i32 4, i32 %131)
  %133 = load %struct.sfp*, %struct.sfp** %3, align 8
  %134 = getelementptr inbounds %struct.sfp, %struct.sfp* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32 (%struct.sfp_eeprom_id*)*, i32 (%struct.sfp_eeprom_id*)** %136, align 8
  %138 = load %struct.sfp*, %struct.sfp** %3, align 8
  %139 = getelementptr inbounds %struct.sfp, %struct.sfp* %138, i32 0, i32 0
  %140 = call i32 %137(%struct.sfp_eeprom_id* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %109
  %143 = load %struct.sfp*, %struct.sfp** %3, align 8
  %144 = getelementptr inbounds %struct.sfp, %struct.sfp* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sfp*, %struct.sfp** %3, align 8
  %147 = getelementptr inbounds %struct.sfp, %struct.sfp* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sfp*, %struct.sfp** %3, align 8
  %152 = getelementptr inbounds %struct.sfp, %struct.sfp* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %150, i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %194

159:                                              ; preds = %109
  %160 = load %struct.sfp*, %struct.sfp** %3, align 8
  %161 = getelementptr inbounds %struct.sfp, %struct.sfp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SFP_DIAGMON_ADDRMODE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %159
  %169 = load %struct.sfp*, %struct.sfp** %3, align 8
  %170 = getelementptr inbounds %struct.sfp, %struct.sfp* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @dev_warn(i32 %171, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %159
  %174 = load %struct.sfp*, %struct.sfp** %3, align 8
  %175 = call i32 @sfp_hwmon_insert(%struct.sfp* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %194

180:                                              ; preds = %173
  %181 = load %struct.sfp*, %struct.sfp** %3, align 8
  %182 = getelementptr inbounds %struct.sfp, %struct.sfp* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.sfp*, %struct.sfp** %3, align 8
  %185 = getelementptr inbounds %struct.sfp, %struct.sfp* %184, i32 0, i32 0
  %186 = call i32 @sfp_module_insert(i32 %183, %struct.sfp_eeprom_id* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %194

191:                                              ; preds = %180
  %192 = load %struct.sfp*, %struct.sfp** %3, align 8
  %193 = call i32 @sfp_sm_mod_hpower(%struct.sfp* %192)
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %191, %189, %178, %142, %59, %24, %12
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @sfp_read(%struct.sfp*, i32, i32, %struct.sfp_eeprom_id*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @sfp_check(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.sfp_eeprom_id*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sfp_hwmon_insert(%struct.sfp*) #1

declare dso_local i32 @sfp_module_insert(i32, %struct.sfp_eeprom_id*) #1

declare dso_local i32 @sfp_sm_mod_hpower(%struct.sfp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
