; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__*, i32, %struct.nand_chip }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nand_chip = type { %struct.TYPE_12__*, i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mtd_info = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"gpmi-nand\00", align 1
@gpmi_block_markbad = common dso_local global i32 0, align 4
@gpmi_bbt_descr = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@gpmi_nand_controller_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @gpmi_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_nand_init(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %7 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %7, i32 0, i32 5
  store %struct.nand_chip* %8, %struct.nand_chip** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %5, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %14 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %20 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %21 = call i32 @nand_set_controller_data(%struct.nand_chip* %19, %struct.gpmi_nand_data* %20)
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %24 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nand_set_flash_node(%struct.nand_chip* %22, i32 %28)
  %30 = load i32, i32* @gpmi_block_markbad, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 2
  store i32* @gpmi_bbt_descr, i32** %35, align 8
  %36 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %42 = call i32 @GPMI_IS_MX23(%struct.gpmi_nand_data* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %47 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %49 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 1024, i32* %50, align 8
  %51 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %52 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 128, i32* %53, align 4
  %54 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %55 = call i32 @gpmi_alloc_dma_buffer(%struct.gpmi_nand_data* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %1
  br label %102

59:                                               ; preds = %1
  %60 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %61 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %60, i32 0, i32 1
  %62 = call i32 @nand_controller_init(%struct.TYPE_12__* %61)
  %63 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %64 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32* @gpmi_nand_controller_ops, i32** %65, align 8
  %66 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %67 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %66, i32 0, i32 1
  %68 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 0
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %69, align 8
  %70 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %71 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %72 = call i64 @GPMI_IS_MX6(%struct.gpmi_nand_data* %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 2, i32 1
  %76 = call i32 @nand_scan(%struct.nand_chip* %70, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %102

80:                                               ; preds = %59
  %81 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %82 = call i32 @nand_boot_init(%struct.gpmi_nand_data* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %99

86:                                               ; preds = %80
  %87 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %88 = call i32 @nand_create_bbt(%struct.nand_chip* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %99

92:                                               ; preds = %86
  %93 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %94 = call i32 @mtd_device_register(%struct.mtd_info* %93, i32* null, i32 0)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %99

98:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  br label %106

99:                                               ; preds = %97, %91, %85
  %100 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %101 = call i32 @nand_cleanup(%struct.nand_chip* %100)
  br label %102

102:                                              ; preds = %99, %79, %58
  %103 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %104 = call i32 @gpmi_free_dma_buffer(%struct.gpmi_nand_data* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.gpmi_nand_data*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i32 @GPMI_IS_MX23(%struct.gpmi_nand_data*) #1

declare dso_local i32 @gpmi_alloc_dma_buffer(%struct.gpmi_nand_data*) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_12__*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i64 @GPMI_IS_MX6(%struct.gpmi_nand_data*) #1

declare dso_local i32 @nand_boot_init(%struct.gpmi_nand_data*) #1

declare dso_local i32 @nand_create_bbt(%struct.nand_chip*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @gpmi_free_dma_buffer(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
