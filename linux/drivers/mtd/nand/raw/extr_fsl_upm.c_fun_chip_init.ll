; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_upm_nand = type { i32, i64*, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }
%struct.mtd_info = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@fun_cmd_ctrl = common dso_local global i32 0, align 4
@fun_read_byte = common dso_local global i32 0, align 4
@fun_read_buf = common dso_local global i32 0, align 4
@fun_write_buf = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@fun_select_chip = common dso_local global i32 0, align 4
@fun_chip_ready = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"0x%llx.%pOFn\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_upm_nand*, %struct.device_node*, %struct.resource*)* @fun_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fun_chip_init(%struct.fsl_upm_nand* %0, %struct.device_node* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_upm_nand*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store %struct.fsl_upm_nand* %0, %struct.fsl_upm_nand** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %11 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %12 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %11, i32 0, i32 2
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.TYPE_10__* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %8, align 8
  %14 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %15 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 8
  store i32 %16, i32* %20, align 8
  %21 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %22 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 7
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @fun_cmd_ctrl, align 4
  %29 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %30 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  store i32 %28, i32* %32, align 8
  %33 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %34 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %37 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @fun_read_byte, align 4
  %41 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %42 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* @fun_read_buf, align 4
  %46 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %47 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @fun_write_buf, align 4
  %51 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %52 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* @NAND_ECC_SOFT, align 4
  %56 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %57 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %61 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %62 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %66 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %3
  %70 = load i32, i32* @fun_select_chip, align 4
  %71 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %72 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %3
  %76 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %77 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @fun_chip_ready, align 4
  %84 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %85 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %75
  %89 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %90 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.device_node*, %struct.device_node** %6, align 8
  %96 = call %struct.device_node* @of_get_next_child(%struct.device_node* %95, i32* null)
  store %struct.device_node* %96, %struct.device_node** %10, align 8
  %97 = load %struct.device_node*, %struct.device_node** %10, align 8
  %98 = icmp ne %struct.device_node* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %148

102:                                              ; preds = %88
  %103 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %104 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %103, i32 0, i32 2
  %105 = load %struct.device_node*, %struct.device_node** %10, align 8
  %106 = call i32 @nand_set_flash_node(%struct.TYPE_10__* %104, %struct.device_node* %105)
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = load %struct.resource*, %struct.resource** %7, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.device_node*, %struct.device_node** %10, align 8
  %113 = call i32 @kasprintf(i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %111, %struct.device_node* %112)
  %114 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %115 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %117 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %102
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %136

123:                                              ; preds = %102
  %124 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %125 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %124, i32 0, i32 2
  %126 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %127 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @nand_scan(%struct.TYPE_10__* %125, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %136

133:                                              ; preds = %123
  %134 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %135 = call i32 @mtd_device_register(%struct.mtd_info* %134, i32* null, i32 0)
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %133, %132, %120
  %137 = load %struct.device_node*, %struct.device_node** %10, align 8
  %138 = call i32 @of_node_put(%struct.device_node* %137)
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %143 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @kfree(i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %99
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.TYPE_10__*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @nand_set_flash_node(%struct.TYPE_10__*, %struct.device_node*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, %struct.device_node*) #1

declare dso_local i32 @nand_scan(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
