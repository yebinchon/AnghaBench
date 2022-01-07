; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_update_rw_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_update_rw_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32 }

@OP_PAGE_READ_WITH_ECC = common dso_local global i32 0, align 4
@PAGE_ACC = common dso_local global i32 0, align 4
@LAST_PAGE = common dso_local global i32 0, align 4
@OP_PAGE_READ = common dso_local global i32 0, align 4
@OP_PROGRAM_PAGE = common dso_local global i32 0, align 4
@CW_PER_PAGE = common dso_local global i32 0, align 4
@ECC_CFG_ECC_DISABLE = common dso_local global i32 0, align 4
@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@NAND_DEV0_CFG0 = common dso_local global i32 0, align 4
@NAND_DEV0_CFG1 = common dso_local global i32 0, align 4
@NAND_DEV0_ECC_CFG = common dso_local global i32 0, align 4
@NAND_EBI2_ECC_BUF_CFG = common dso_local global i32 0, align 4
@NAND_FLASH_STATUS = common dso_local global i32 0, align 4
@NAND_READ_STATUS = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_host*, i32, i32)* @update_rw_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_rw_regs(%struct.qcom_nand_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qcom_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.qcom_nand_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %14 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %13, i32 0, i32 11
  store %struct.nand_chip* %14, %struct.nand_chip** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %16 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %15)
  store %struct.qcom_nand_controller* %16, %struct.qcom_nand_controller** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @OP_PAGE_READ_WITH_ECC, align 4
  %26 = load i32, i32* @PAGE_ACC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LAST_PAGE, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load i32, i32* @OP_PAGE_READ, align 4
  %32 = load i32, i32* @PAGE_ACC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @LAST_PAGE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %24
  br label %43

37:                                               ; preds = %3
  %38 = load i32, i32* @OP_PROGRAM_PAGE, align 4
  %39 = load i32, i32* @PAGE_ACC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @LAST_PAGE, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %36
  %44 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %45 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %50 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CW_PER_PAGE, align 4
  %53 = shl i32 7, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @CW_PER_PAGE, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %55, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %62 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %65 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  br label %85

67:                                               ; preds = %43
  %68 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CW_PER_PAGE, align 4
  %72 = shl i32 7, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %70, %73
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @CW_PER_PAGE, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %74, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %81 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @ECC_CFG_ECC_DISABLE, align 4
  %84 = shl i32 1, %83
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %67, %48
  %86 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %87 = load i32, i32* @NAND_FLASH_CMD, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %86, i32 %87, i32 %88)
  %90 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %91 = load i32, i32* @NAND_DEV0_CFG0, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %90, i32 %91, i32 %92)
  %94 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %95 = load i32, i32* @NAND_DEV0_CFG1, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %94, i32 %95, i32 %96)
  %98 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %99 = load i32, i32* @NAND_DEV0_ECC_CFG, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %98, i32 %99, i32 %100)
  %102 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %103 = load i32, i32* @NAND_EBI2_ECC_BUF_CFG, align 4
  %104 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %105 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %102, i32 %103, i32 %106)
  %108 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %109 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %110 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %111 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %108, i32 %109, i32 %112)
  %114 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %115 = load i32, i32* @NAND_READ_STATUS, align 4
  %116 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %117 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %114, i32 %115, i32 %118)
  %120 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %121 = load i32, i32* @NAND_EXEC_CMD, align 4
  %122 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %120, i32 %121, i32 1)
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %85
  %126 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %127 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %128 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %127, i32 0, i32 10
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %133 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  br label %139

135:                                              ; preds = %125
  %136 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %137 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %134, %131 ], [ %138, %135 ]
  %141 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %126, i32 0, i32 0, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %139, %85
  ret void
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nandc_set_reg(%struct.qcom_nand_controller*, i32, i32) #1

declare dso_local i32 @nandc_set_read_loc(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
