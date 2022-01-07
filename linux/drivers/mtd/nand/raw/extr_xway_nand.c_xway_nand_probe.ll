; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_xway_nand.c_xway_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_xway_nand.c_xway_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.xway_nand_data = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@xway_cmd_ctrl = common dso_local global i32 0, align 4
@xway_dev_ready = common dso_local global i32 0, align 4
@xway_select_chip = common dso_local global i32 0, align 4
@xway_write_buf = common dso_local global i32 0, align 4
@xway_read_buf = common dso_local global i32 0, align 4
@xway_read_byte = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lantiq,cs\00", align 1
@NAND_CON_IN_CS1 = common dso_local global i32 0, align 4
@NAND_CON_OUT_CS1 = common dso_local global i32 0, align 4
@ADDSEL1_REGEN = common dso_local global i32 0, align 4
@EBU_ADDSEL1 = common dso_local global i32 0, align 4
@BUSCON1_SETUP = common dso_local global i32 0, align 4
@BUSCON1_BCGEN_RES = common dso_local global i32 0, align 4
@BUSCON1_WAITWRC2 = common dso_local global i32 0, align 4
@BUSCON1_WAITRDC2 = common dso_local global i32 0, align 4
@BUSCON1_HOLDC1 = common dso_local global i32 0, align 4
@BUSCON1_RECOVC1 = common dso_local global i32 0, align 4
@BUSCON1_CMULT4 = common dso_local global i32 0, align 4
@LTQ_EBU_BUSCON1 = common dso_local global i32 0, align 4
@NAND_CON_NANDM = common dso_local global i32 0, align 4
@NAND_CON_CSMUX = common dso_local global i32 0, align 4
@NAND_CON_CS_P = common dso_local global i32 0, align 4
@NAND_CON_SE_P = common dso_local global i32 0, align 4
@NAND_CON_WP_P = common dso_local global i32 0, align 4
@NAND_CON_PRE_P = common dso_local global i32 0, align 4
@EBU_NAND_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xway_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xway_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xway_nand_data*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.xway_nand_data* @devm_kzalloc(%struct.TYPE_15__* %11, i32 40, i32 %12)
  store %struct.xway_nand_data* %13, %struct.xway_nand_data** %4, align 8
  %14 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %15 = icmp ne %struct.xway_nand_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %179

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.TYPE_15__* %24, %struct.resource* %25)
  %27 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %28 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %30 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %36 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %179

39:                                               ; preds = %19
  %40 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %41 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %40, i32 0, i32 0
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nand_set_flash_node(%struct.TYPE_14__* %41, i32 %45)
  %47 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %48 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %47, i32 0, i32 0
  %49 = call %struct.mtd_info* @nand_to_mtd(%struct.TYPE_14__* %48)
  store %struct.mtd_info* %49, %struct.mtd_info** %5, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %54, align 8
  %55 = load i32, i32* @xway_cmd_ctrl, align 4
  %56 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %57 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @xway_dev_ready, align 4
  %61 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %62 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @xway_select_chip, align 4
  %66 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %67 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @xway_write_buf, align 4
  %71 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %72 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @xway_read_buf, align 4
  %76 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %77 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @xway_read_byte, align 4
  %81 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %82 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %86 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 30, i32* %88, align 4
  %89 = load i32, i32* @NAND_ECC_SOFT, align 4
  %90 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %91 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %95 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %96 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 4
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.xway_nand_data* %100)
  %102 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %103 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %102, i32 0, i32 0
  %104 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %105 = call i32 @nand_set_controller_data(%struct.TYPE_14__* %103, %struct.xway_nand_data* %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @of_property_read_u32(i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %39
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @NAND_CON_IN_CS1, align 4
  %118 = load i32, i32* @NAND_CON_OUT_CS1, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %113, %39
  %121 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %122 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @CPHYSADDR(i32 %123)
  %125 = call i32 @ADDSEL1_MASK(i32 3)
  %126 = or i32 %124, %125
  %127 = load i32, i32* @ADDSEL1_REGEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @EBU_ADDSEL1, align 4
  %130 = call i32 @ltq_ebu_w32(i32 %128, i32 %129)
  %131 = load i32, i32* @BUSCON1_SETUP, align 4
  %132 = load i32, i32* @BUSCON1_BCGEN_RES, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @BUSCON1_WAITWRC2, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @BUSCON1_WAITRDC2, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @BUSCON1_HOLDC1, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @BUSCON1_RECOVC1, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @BUSCON1_CMULT4, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @LTQ_EBU_BUSCON1, align 4
  %145 = call i32 @ltq_ebu_w32(i32 %143, i32 %144)
  %146 = load i32, i32* @NAND_CON_NANDM, align 4
  %147 = load i32, i32* @NAND_CON_CSMUX, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @NAND_CON_CS_P, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @NAND_CON_SE_P, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @NAND_CON_WP_P, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @NAND_CON_PRE_P, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @EBU_NAND_CON, align 4
  %160 = call i32 @ltq_ebu_w32(i32 %158, i32 %159)
  %161 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %162 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %161, i32 0, i32 0
  %163 = call i32 @nand_scan(%struct.TYPE_14__* %162, i32 1)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %120
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %179

168:                                              ; preds = %120
  %169 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %170 = call i32 @mtd_device_register(%struct.mtd_info* %169, i32* null, i32 0)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load %struct.xway_nand_data*, %struct.xway_nand_data** %4, align 8
  %175 = getelementptr inbounds %struct.xway_nand_data, %struct.xway_nand_data* %174, i32 0, i32 0
  %176 = call i32 @nand_release(%struct.TYPE_14__* %175)
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %166, %34, %16
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.xway_nand_data* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nand_set_flash_node(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xway_nand_data*) #1

declare dso_local i32 @nand_set_controller_data(%struct.TYPE_14__*, %struct.xway_nand_data*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @ltq_ebu_w32(i32, i32) #1

declare dso_local i32 @CPHYSADDR(i32) #1

declare dso_local i32 @ADDSEL1_MASK(i32) #1

declare dso_local i32 @nand_scan(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_release(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
