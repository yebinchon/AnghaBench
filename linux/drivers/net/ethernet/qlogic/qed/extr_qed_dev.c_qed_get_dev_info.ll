; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.qed_dev* }
%struct.qed_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@QED_DEV_ID_MASK = common dso_local global i32 0, align 4
@QED_DEV_TYPE_BB = common dso_local global i32 0, align 4
@QED_DEV_TYPE_AH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown device id 0x%x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MISCS_REG_CHIP_NUM = common dso_local global i32 0, align 4
@MISCS_REG_CHIP_REV = common dso_local global i32 0, align 4
@CHIP_REV = common dso_local global i32 0, align 4
@MISCS_REG_CMT_ENABLED_FOR_PAIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"device in CMT mode\0A\00", align 1
@MISCS_REG_CHIP_TEST_REG = common dso_local global i32 0, align 4
@CHIP_BOND_ID = common dso_local global i32 0, align 4
@MISCS_REG_CHIP_METAL = common dso_local global i32 0, align 4
@CHIP_METAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"Chip details - %s %c%d, Num: %04x Rev: %04x Bond id: %04x Metal: %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_get_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_dev_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  %11 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  store %struct.qed_dev* %11, %struct.qed_dev** %6, align 8
  %12 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %13 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCI_VENDOR_ID, align 4
  %16 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %17 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %16, i32 0, i32 0
  %18 = call i32 @pci_read_config_word(i32 %14, i32 %15, i32* %17)
  %19 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %20 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCI_DEVICE_ID, align 4
  %23 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %24 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %23, i32 0, i32 1
  %25 = call i32 @pci_read_config_word(i32 %21, i32 %22, i32* %24)
  %26 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %27 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @QED_DEV_ID_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 128, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* @QED_DEV_TYPE_BB, align 4
  %34 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %35 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  br label %48

36:                                               ; preds = %2
  %37 = load i32, i32* @QED_DEV_TYPE_AH, align 4
  %38 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %39 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %43 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %141

48:                                               ; preds = %36, %32
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %50 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %51 = load i32, i32* @MISCS_REG_CHIP_NUM, align 4
  %52 = call i32 @qed_rd(%struct.qed_hwfn* %49, %struct.qed_ptt* %50, i32 %51)
  %53 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %54 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %56 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %57 = load i32, i32* @MISCS_REG_CHIP_REV, align 4
  %58 = call i32 @qed_rd(%struct.qed_hwfn* %55, %struct.qed_ptt* %56, i32 %57)
  %59 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %60 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @CHIP_REV, align 4
  %62 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %63 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MASK_FIELD(i32 %61, i32 %64)
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %67 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %68 = load i32, i32* @MISCS_REG_CMT_ENABLED_FOR_PAIR, align 4
  %69 = call i32 @qed_rd(%struct.qed_hwfn* %66, %struct.qed_ptt* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %72 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 1, %73
  %75 = and i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %48
  %78 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %79 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.qed_hwfn*
  %83 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %85 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %84, i32 0, i32 4
  store i32 2, i32* %85, align 4
  br label %89

86:                                               ; preds = %48
  %87 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %88 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %87, i32 0, i32 4
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %77
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %91 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %92 = load i32, i32* @MISCS_REG_CHIP_TEST_REG, align 4
  %93 = call i32 @qed_rd(%struct.qed_hwfn* %90, %struct.qed_ptt* %91, i32 %92)
  %94 = ashr i32 %93, 4
  %95 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %96 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @CHIP_BOND_ID, align 4
  %98 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %99 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MASK_FIELD(i32 %97, i32 %100)
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %103 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %104 = load i32, i32* @MISCS_REG_CHIP_METAL, align 4
  %105 = call i32 @qed_rd(%struct.qed_hwfn* %102, %struct.qed_ptt* %103, i32 %104)
  %106 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %107 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @CHIP_METAL, align 4
  %109 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %110 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @MASK_FIELD(i32 %108, i32 %111)
  %113 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %114 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %117 = call i64 @QED_IS_BB(%struct.qed_dev* %116)
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %121 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %122 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 65, %123
  %125 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %126 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %129 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %132 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %135 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %138 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DP_INFO(i32 %115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %120, i32 %124, i32 %127, i32 %130, i32 %133, i32 %136, i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %89, %40
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @MASK_FIELD(i32, i32) #1

declare dso_local i32 @DP_INFO(i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @QED_IS_BB(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
