; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_scan_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_scan_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.nand_flash_dev = type { i32 }
%struct.mtd_info = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.nand_memory_organization = type { i32 }

@NAND_SDR_IFACE = common dso_local global i32 0, align 4
@NAND_SCAN_SILENT_NODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No NAND device found\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d chips detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_flash_dev*)* @nand_scan_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_scan_ident(%struct.nand_chip* %0, i32 %1, %struct.nand_flash_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_flash_dev*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_memory_organization*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_flash_dev* %2, %struct.nand_flash_dev** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %8, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = call %struct.nand_memory_organization* @nanddev_get_memorg(i32* %18)
  store %struct.nand_memory_organization* %19, %struct.nand_memory_organization** %9, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 4
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %26 = load i32, i32* @NAND_SDR_IFACE, align 4
  %27 = call i32 @onfi_fill_data_interface(%struct.nand_chip* %25, i32 %26, i32 0)
  %28 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %29 = call i32 @nand_dt_init(%struct.nand_chip* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %156

34:                                               ; preds = %3
  %35 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @dev_name(i64 %49)
  %51 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %39, %34
  %54 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %55 = call i32 @nand_set_defaults(%struct.nand_chip* %54)
  %56 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %57 = call i32 @nand_legacy_check_hooks(%struct.nand_chip* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %156

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %9, align 8
  %65 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %67 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %7, align 8
  %68 = call i32 @nand_detect(%struct.nand_chip* %66, %struct.nand_flash_dev* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NAND_SCAN_SILENT_NODEV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %82 = call i32 @nand_deselect_target(%struct.nand_chip* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %156

84:                                               ; preds = %62
  %85 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  %91 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %98 = call i32 @nand_deselect_target(%struct.nand_chip* %97)
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %136, %84
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %99
  %104 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @nand_reset(%struct.nand_chip* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %139

110:                                              ; preds = %103
  %111 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @nand_select_target(%struct.nand_chip* %111, i32 %112)
  %114 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %116 = call i32 @nand_readid_op(%struct.nand_chip* %114, i32 0, i32* %115, i32 8)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %139

120:                                              ; preds = %110
  %121 = load i32, i32* %10, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120
  %131 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %132 = call i32 @nand_deselect_target(%struct.nand_chip* %131)
  br label %139

133:                                              ; preds = %125
  %134 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %135 = call i32 @nand_deselect_target(%struct.nand_chip* %134)
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %99

139:                                              ; preds = %130, %119, %109, %99
  %140 = load i32, i32* %12, align 4
  %141 = icmp ugt i32 %140, 1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %9, align 8
  %148 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 2
  %152 = call i32 @nanddev_target_size(i32* %151)
  %153 = mul i32 %149, %152
  %154 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %155 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %145, %80, %60, %32
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @onfi_fill_data_interface(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @nand_dt_init(%struct.nand_chip*) #1

declare dso_local i64 @dev_name(i64) #1

declare dso_local i32 @nand_set_defaults(%struct.nand_chip*) #1

declare dso_local i32 @nand_legacy_check_hooks(%struct.nand_chip*) #1

declare dso_local i32 @nand_detect(%struct.nand_chip*, %struct.nand_flash_dev*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @nand_deselect_target(%struct.nand_chip*) #1

declare dso_local i32 @nand_reset(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i32, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @nanddev_target_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
