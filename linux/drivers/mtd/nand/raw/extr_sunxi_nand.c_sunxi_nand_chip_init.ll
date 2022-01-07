; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sunxi_nfc = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.device_node = type { i32 }
%struct.sunxi_nand_chip = type { i32, i32, %struct.nand_chip, %struct.TYPE_5__* }
%struct.nand_chip = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mtd_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid reg property size\0A\00", align 1
@sels = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not allocate chip\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@NFC_MAX_CS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"invalid reg value: %u (max CS = 7)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CS %d already assigned\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"allwinner,rb\00", align 1
@sunxi_nand_controller_ops = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to register mtd device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sunxi_nfc*, %struct.device_node*)* @sunxi_nand_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nand_chip_init(%struct.device* %0, %struct.sunxi_nfc* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sunxi_nfc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.sunxi_nand_chip*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sunxi_nfc* %1, %struct.sunxi_nfc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = call i32 @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %175

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %175

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %36 = load i32, i32* @sels, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @struct_size(%struct.sunxi_nand_chip* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sunxi_nand_chip* @devm_kzalloc(%struct.device* %34, i32 %38, i32 %39)
  store %struct.sunxi_nand_chip* %40, %struct.sunxi_nand_chip** %8, align 8
  %41 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %42 = icmp ne %struct.sunxi_nand_chip* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %175

48:                                               ; preds = %33
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %51 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %123, %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load %struct.device_node*, %struct.device_node** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @of_property_read_u32_index(%struct.device_node* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %58, i32* %14)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %175

67:                                               ; preds = %56
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @NFC_MAX_CS, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %175

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %80 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %79, i32 0, i32 2
  %81 = call i64 @test_and_set_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %175

89:                                               ; preds = %77
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %92 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %91, i32 0, i32 3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  %98 = load %struct.device_node*, %struct.device_node** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @of_property_read_u32_index(%struct.device_node* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32* %14)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %108 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %107, i32 0, i32 3
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %106, i32* %113, align 4
  br label %122

114:                                              ; preds = %102, %89
  %115 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %116 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 -1, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %52

126:                                              ; preds = %52
  %127 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %128 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %127, i32 0, i32 2
  store %struct.nand_chip* %128, %struct.nand_chip** %10, align 8
  %129 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %130 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %129, i32 0, i32 1
  %131 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 1
  store %struct.TYPE_6__* %130, %struct.TYPE_6__** %132, align 8
  %133 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %134 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32* @sunxi_nand_controller_ops, i32** %136, align 8
  %137 = load i32, i32* @NAND_ECC_HW, align 4
  %138 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %142 = load %struct.device_node*, %struct.device_node** %7, align 8
  %143 = call i32 @nand_set_flash_node(%struct.nand_chip* %141, %struct.device_node* %142)
  %144 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %145 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %144)
  store %struct.mtd_info* %145, %struct.mtd_info** %9, align 8
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %148 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store %struct.device* %146, %struct.device** %149, align 8
  %150 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @nand_scan(%struct.nand_chip* %150, i32 %151)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %126
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %4, align 4
  br label %175

157:                                              ; preds = %126
  %158 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %159 = call i32 @mtd_device_register(%struct.mtd_info* %158, i32* null, i32 0)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load %struct.device*, %struct.device** %5, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  %166 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %167 = call i32 @nand_release(%struct.nand_chip* %166)
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %4, align 4
  br label %175

169:                                              ; preds = %157
  %170 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %171 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %170, i32 0, i32 1
  %172 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %173 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %172, i32 0, i32 0
  %174 = call i32 @list_add_tail(i32* %171, i32* %173)
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %169, %162, %155, %83, %71, %62, %43, %28, %18
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sunxi_nand_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.sunxi_nand_chip*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_release(%struct.nand_chip*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
