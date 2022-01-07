; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_get_dt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_get_dt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.omap_nand_info = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"reg not found in DT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ti,elm-id\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"elm_id\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ti,elm-id not in DT\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ti,nand-ecc-opt\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ti,nand-ecc-opt not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@OMAP_ECC_HAM1_CODE_SW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ham1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"hw-romcode\00", align 1
@OMAP_ECC_HAM1_CODE_HW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"bch4\00", align 1
@OMAP_ECC_BCH4_CODE_HW = common dso_local global i32 0, align 4
@OMAP_ECC_BCH4_CODE_HW_DETECTION_SW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"bch8\00", align 1
@OMAP_ECC_BCH8_CODE_HW = common dso_local global i32 0, align 4
@OMAP_ECC_BCH8_CODE_HW_DETECTION_SW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"bch16\00", align 1
@OMAP_ECC_BCH16_CODE_HW = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"unrecognized value for ti,nand-ecc-opt\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ti,nand-xfer-type\00", align 1
@nand_xfer_types = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [42 x i8] c"unrecognized value for ti,nand-xfer-type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.omap_nand_info*)* @omap_get_dt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_get_dt_info(%struct.device* %0, %struct.omap_nand_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.omap_nand_info*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.omap_nand_info* %1, %struct.omap_nand_info** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i64 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %165

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %24 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i8* @of_parse_phandle(%struct.device_node* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %27 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %28 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %30 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %21
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i8* @of_parse_phandle(%struct.device_node* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %36 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %37 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %39 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %33
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i64 @of_property_read_string(%struct.device_node* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %165

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @OMAP_ECC_HAM1_CODE_SW, align 4
  %61 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %62 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %132

63:                                               ; preds = %55
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71, %67, %63
  %76 = load i32, i32* @OMAP_ECC_HAM1_CODE_HW, align 4
  %77 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %78 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %131

79:                                               ; preds = %71
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %85 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @OMAP_ECC_BCH4_CODE_HW, align 4
  %90 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %91 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @OMAP_ECC_BCH4_CODE_HW_DETECTION_SW, align 4
  %94 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %95 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %130

97:                                               ; preds = %79
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %103 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @OMAP_ECC_BCH8_CODE_HW, align 4
  %108 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %109 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %114

110:                                              ; preds = %101
  %111 = load i32, i32* @OMAP_ECC_BCH8_CODE_HW_DETECTION_SW, align 4
  %112 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %113 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %106
  br label %129

115:                                              ; preds = %97
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @OMAP_ECC_BCH16_CODE_HW, align 4
  %121 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %122 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %128

123:                                              ; preds = %115
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %165

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %114
  br label %130

130:                                              ; preds = %129, %96
  br label %131

131:                                              ; preds = %130, %75
  br label %132

132:                                              ; preds = %131, %59
  %133 = load %struct.device_node*, %struct.device_node** %6, align 8
  %134 = call i64 @of_property_read_string(%struct.device_node* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %8)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %164, label %136

136:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %156, %136
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** @nand_xfer_types, align 8
  %140 = call i32 @ARRAY_SIZE(i32* %139)
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = load i8*, i8** %8, align 8
  %144 = load i32*, i32** @nand_xfer_types, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @strcasecmp(i8* %143, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %154 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %3, align 4
  br label %165

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %137

159:                                              ; preds = %137
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = call i32 @dev_err(%struct.device* %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %165

164:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %159, %151, %123, %50, %16
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
