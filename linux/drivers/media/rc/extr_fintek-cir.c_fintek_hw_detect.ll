; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_hw_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_hw_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GCR_CONFIG_PORT_SEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"first portsel read was bunk, trying alt\00", align 1
@CR_INDEX_PORT2 = common dso_local global i32 0, align 4
@CR_DATA_PORT2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"portsel reg: 0x%02x\00", align 1
@CIR_CR_CLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ir_class reg: 0x%02x\00", align 1
@GCR_CHIP_ID_HI = common dso_local global i32 0, align 4
@GCR_CHIP_ID_LO = common dso_local global i32 0, align 4
@GCR_VENDOR_ID_HI = common dso_local global i32 0, align 4
@GCR_VENDOR_ID_LO = common dso_local global i32 0, align 4
@VENDOR_ID_FINTEK = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown vendor ID: 0x%04x\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Read Fintek vendor ID from chip\00", align 1
@LOGICAL_DEV_CIR_REV2 = common dso_local global i32 0, align 4
@LOGICAL_DEV_CIR_REV1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fintek_dev*)* @fintek_hw_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fintek_hw_detect(%struct.fintek_dev* %0) #0 {
  %2 = alloca %struct.fintek_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fintek_dev* %0, %struct.fintek_dev** %2, align 8
  %12 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %13 = call i32 @fintek_config_mode_enable(%struct.fintek_dev* %12)
  %14 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %15 = load i32, i32* @GCR_CONFIG_PORT_SEL, align 4
  %16 = call i32 @fintek_cr_read(%struct.fintek_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @fit_pr(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %23 = call i32 @fintek_config_mode_disable(%struct.fintek_dev* %22)
  %24 = load i32, i32* @CR_INDEX_PORT2, align 4
  %25 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %26 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CR_DATA_PORT2, align 4
  %28 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %29 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %31 = call i32 @fintek_config_mode_enable(%struct.fintek_dev* %30)
  %32 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %33 = load i32, i32* @GCR_CONFIG_PORT_SEL, align 4
  %34 = call i32 @fintek_cr_read(%struct.fintek_dev* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %19, %1
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, ...) @fit_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %39 = load i32, i32* @CIR_CR_CLASS, align 4
  %40 = call i32 @fintek_cir_reg_read(%struct.fintek_dev* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, ...) @fit_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %48 [
    i32 129, label %44
    i32 130, label %44
    i32 128, label %47
  ]

44:                                               ; preds = %35, %35
  %45 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %46 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %51

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %35, %47
  %49 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %50 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %53 = load i32, i32* @GCR_CHIP_ID_HI, align 4
  %54 = call i32 @fintek_cr_read(%struct.fintek_dev* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %56 = load i32, i32* @GCR_CHIP_ID_LO, align 4
  %57 = call i32 @fintek_cr_read(%struct.fintek_dev* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %63 = load i32, i32* @GCR_VENDOR_ID_HI, align 4
  %64 = call i32 @fintek_cr_read(%struct.fintek_dev* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %66 = load i32, i32* @GCR_VENDOR_ID_LO, align 4
  %67 = call i32 @fintek_cr_read(%struct.fintek_dev* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @VENDOR_ID_FINTEK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %51
  %76 = load i32, i32* @KERN_WARNING, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i32, i8*, ...) @fit_pr(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %81

79:                                               ; preds = %51
  %80 = call i32 (i8*, ...) @fit_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  %82 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %83 = call i32 @fintek_config_mode_disable(%struct.fintek_dev* %82)
  %84 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %85 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %84, i32 0, i32 4
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %90 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %93 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %96 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 1032
  br i1 %98, label %99, label %106

99:                                               ; preds = %81
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 2052
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @LOGICAL_DEV_CIR_REV2, align 4
  %104 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %105 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %110

106:                                              ; preds = %99, %81
  %107 = load i32, i32* @LOGICAL_DEV_CIR_REV1, align 4
  %108 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %109 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %112 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %111, i32 0, i32 4
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  ret i32 0
}

declare dso_local i32 @fintek_config_mode_enable(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_cr_read(%struct.fintek_dev*, i32) #1

declare dso_local i32 @fit_pr(i32, i8*, ...) #1

declare dso_local i32 @fintek_config_mode_disable(%struct.fintek_dev*) #1

declare dso_local i32 @fit_dbg(i8*, ...) #1

declare dso_local i32 @fintek_cir_reg_read(%struct.fintek_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
