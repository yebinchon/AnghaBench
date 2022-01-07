; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, %struct.TYPE_3__* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.resource = type { i32 }
%struct.marvell_nfc = type { i32*, i32*, i8*, i32*, i32, %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@marvell_nand_controller_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to retrieve irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@NDCR_ALL_INT = common dso_local global i32 0, align 4
@marvell_nfc_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"marvell-nfc\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not retrieve NFC caps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @marvell_nfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.marvell_nfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.marvell_nfc* @devm_kzalloc(%struct.device* %12, i32 56, i32 %13)
  store %struct.marvell_nfc* %14, %struct.marvell_nfc** %6, align 8
  %15 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %16 = icmp ne %struct.marvell_nfc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %210

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %23 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %22, i32 0, i32 6
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %25 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %24, i32 0, i32 5
  %26 = call i32 @nand_controller_init(%struct.TYPE_4__* %25)
  %27 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %28 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* @marvell_nand_controller_ops, i32** %29, align 8
  %30 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %31 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i32* @devm_ioremap_resource(%struct.device* %36, %struct.resource* %37)
  %39 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %40 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %42 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %20
  %47 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %48 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %2, align 4
  br label %210

51:                                               ; preds = %20
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @platform_get_irq(%struct.platform_device* %52, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %210

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i8* @devm_clk_get(%struct.device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %66 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %68 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32* @ERR_PTR(i32 %71)
  %73 = icmp eq i32* %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i8* @devm_clk_get(%struct.device* %76, i8* null)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %80 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %60
  %82 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %83 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %89 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  store i32 %91, i32* %2, align 4
  br label %210

92:                                               ; preds = %81
  %93 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %94 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @clk_prepare_enable(i32* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %210

101:                                              ; preds = %92
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i8* @devm_clk_get(%struct.device* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %107 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %109 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @IS_ERR(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %101
  %114 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %115 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @PTR_ERR(i32* %116)
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %123 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @PTR_ERR(i32* %124)
  store i32 %125, i32* %7, align 4
  br label %204

126:                                              ; preds = %113
  %127 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %128 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126, %101
  %130 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %131 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @clk_prepare_enable(i32* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %204

137:                                              ; preds = %129
  %138 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %139 = load i32, i32* @NDCR_ALL_INT, align 4
  %140 = call i32 @marvell_nfc_disable_int(%struct.marvell_nfc* %138, i32 %139)
  %141 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %142 = load i32, i32* @NDCR_ALL_INT, align 4
  %143 = call i32 @marvell_nfc_clear_int(%struct.marvell_nfc* %141, i32 %142)
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @marvell_nfc_isr, align 4
  %147 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %148 = call i32 @devm_request_irq(%struct.device* %144, i32 %145, i32 %146, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.marvell_nfc* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  br label %199

152:                                              ; preds = %137
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = icmp ne %struct.TYPE_3__* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %165 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %172

166:                                              ; preds = %152
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i8* @of_device_get_match_data(%struct.device* %168)
  %170 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %171 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %166, %157
  %173 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %174 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = call i32 @dev_err(%struct.device* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %7, align 4
  br label %199

182:                                              ; preds = %172
  %183 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %184 = call i32 @marvell_nfc_init(%struct.marvell_nfc* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %199

188:                                              ; preds = %182
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %191 = call i32 @platform_set_drvdata(%struct.platform_device* %189, %struct.marvell_nfc* %190)
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %194 = call i32 @marvell_nand_chips_init(%struct.device* %192, %struct.marvell_nfc* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %199

198:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %210

199:                                              ; preds = %197, %187, %177, %151
  %200 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %201 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @clk_disable_unprepare(i32* %202)
  br label %204

204:                                              ; preds = %199, %136, %121
  %205 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %206 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @clk_disable_unprepare(i32* %207)
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %204, %198, %99, %87, %56, %46, %17
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.marvell_nfc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @marvell_nfc_disable_int(%struct.marvell_nfc*, i32) #1

declare dso_local i32 @marvell_nfc_clear_int(%struct.marvell_nfc*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.marvell_nfc*) #1

declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @marvell_nfc_init(%struct.marvell_nfc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.marvell_nfc*) #1

declare dso_local i32 @marvell_nand_chips_init(%struct.device*, %struct.marvell_nfc*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
