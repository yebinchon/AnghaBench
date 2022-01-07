; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-firmware.c_cx18_init_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-firmware.c_cx18_init_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@CX18_DDR_SOFT_RESET = common dso_local global i32 0, align 4
@CX18_DDR_CHIP_CONFIG = common dso_local global i32 0, align 4
@CX18_DDR_REFRESH = common dso_local global i32 0, align 4
@CX18_DDR_TIMING1 = common dso_local global i32 0, align 4
@CX18_DDR_TIMING2 = common dso_local global i32 0, align 4
@CX18_DDR_TUNE_LANE = common dso_local global i32 0, align 4
@CX18_DDR_INITIAL_EMRS = common dso_local global i32 0, align 4
@CX18_DDR_POWER_REG = common dso_local global i32 0, align 4
@CX18_REG_BUS_TIMEOUT_EN = common dso_local global i32 0, align 4
@CX18_DDR_MB_PER_ROW_7 = common dso_local global i32 0, align 4
@CX18_DDR_BASE_63_ADDR = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT02 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT09 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT05 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT06 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT07 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT10 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT12 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT13 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT11 = common dso_local global i32 0, align 4
@CX18_WMB_CLIENT14 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_init_memory(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %3 = call i32 @cx18_msleep_timeout(i32 10, i32 0)
  %4 = load %struct.cx18*, %struct.cx18** %2, align 8
  %5 = load i32, i32* @CX18_DDR_SOFT_RESET, align 4
  %6 = call i32 @cx18_write_reg_expect(%struct.cx18* %4, i32 65536, i32 %5, i32 0, i32 65537)
  %7 = call i32 @cx18_msleep_timeout(i32 10, i32 0)
  %8 = load %struct.cx18*, %struct.cx18** %2, align 8
  %9 = load %struct.cx18*, %struct.cx18** %2, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CX18_DDR_CHIP_CONFIG, align 4
  %16 = call i32 @cx18_write_reg(%struct.cx18* %8, i32 %14, i32 %15)
  %17 = call i32 @cx18_msleep_timeout(i32 10, i32 0)
  %18 = load %struct.cx18*, %struct.cx18** %2, align 8
  %19 = load %struct.cx18*, %struct.cx18** %2, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CX18_DDR_REFRESH, align 4
  %26 = call i32 @cx18_write_reg(%struct.cx18* %18, i32 %24, i32 %25)
  %27 = load %struct.cx18*, %struct.cx18** %2, align 8
  %28 = load %struct.cx18*, %struct.cx18** %2, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CX18_DDR_TIMING1, align 4
  %35 = call i32 @cx18_write_reg(%struct.cx18* %27, i32 %33, i32 %34)
  %36 = load %struct.cx18*, %struct.cx18** %2, align 8
  %37 = load %struct.cx18*, %struct.cx18** %2, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CX18_DDR_TIMING2, align 4
  %44 = call i32 @cx18_write_reg(%struct.cx18* %36, i32 %42, i32 %43)
  %45 = call i32 @cx18_msleep_timeout(i32 10, i32 0)
  %46 = load %struct.cx18*, %struct.cx18** %2, align 8
  %47 = load %struct.cx18*, %struct.cx18** %2, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CX18_DDR_TUNE_LANE, align 4
  %54 = call i32 @cx18_write_reg(%struct.cx18* %46, i32 %52, i32 %53)
  %55 = load %struct.cx18*, %struct.cx18** %2, align 8
  %56 = load %struct.cx18*, %struct.cx18** %2, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CX18_DDR_INITIAL_EMRS, align 4
  %63 = call i32 @cx18_write_reg(%struct.cx18* %55, i32 %61, i32 %62)
  %64 = call i32 @cx18_msleep_timeout(i32 10, i32 0)
  %65 = load %struct.cx18*, %struct.cx18** %2, align 8
  %66 = load i32, i32* @CX18_DDR_SOFT_RESET, align 4
  %67 = call i32 @cx18_write_reg_expect(%struct.cx18* %65, i32 131072, i32 %66, i32 0, i32 131074)
  %68 = call i32 @cx18_msleep_timeout(i32 10, i32 0)
  %69 = load %struct.cx18*, %struct.cx18** %2, align 8
  %70 = load i32, i32* @CX18_DDR_POWER_REG, align 4
  %71 = call i32 @cx18_write_reg(%struct.cx18* %69, i32 16, i32 %70)
  %72 = load %struct.cx18*, %struct.cx18** %2, align 8
  %73 = load i32, i32* @CX18_REG_BUS_TIMEOUT_EN, align 4
  %74 = call i32 @cx18_write_reg_expect(%struct.cx18* %72, i32 65537, i32 %73, i32 1, i32 65537)
  %75 = load %struct.cx18*, %struct.cx18** %2, align 8
  %76 = load i32, i32* @CX18_DDR_MB_PER_ROW_7, align 4
  %77 = call i32 @cx18_write_reg(%struct.cx18* %75, i32 72, i32 %76)
  %78 = load %struct.cx18*, %struct.cx18** %2, align 8
  %79 = load i32, i32* @CX18_DDR_BASE_63_ADDR, align 4
  %80 = call i32 @cx18_write_reg(%struct.cx18* %78, i32 917504, i32 %79)
  %81 = load %struct.cx18*, %struct.cx18** %2, align 8
  %82 = load i32, i32* @CX18_WMB_CLIENT02, align 4
  %83 = call i32 @cx18_write_reg(%struct.cx18* %81, i32 257, i32 %82)
  %84 = load %struct.cx18*, %struct.cx18** %2, align 8
  %85 = load i32, i32* @CX18_WMB_CLIENT09, align 4
  %86 = call i32 @cx18_write_reg(%struct.cx18* %84, i32 257, i32 %85)
  %87 = load %struct.cx18*, %struct.cx18** %2, align 8
  %88 = load i32, i32* @CX18_WMB_CLIENT05, align 4
  %89 = call i32 @cx18_write_reg(%struct.cx18* %87, i32 257, i32 %88)
  %90 = load %struct.cx18*, %struct.cx18** %2, align 8
  %91 = load i32, i32* @CX18_WMB_CLIENT06, align 4
  %92 = call i32 @cx18_write_reg(%struct.cx18* %90, i32 257, i32 %91)
  %93 = load %struct.cx18*, %struct.cx18** %2, align 8
  %94 = load i32, i32* @CX18_WMB_CLIENT07, align 4
  %95 = call i32 @cx18_write_reg(%struct.cx18* %93, i32 257, i32 %94)
  %96 = load %struct.cx18*, %struct.cx18** %2, align 8
  %97 = load i32, i32* @CX18_WMB_CLIENT10, align 4
  %98 = call i32 @cx18_write_reg(%struct.cx18* %96, i32 257, i32 %97)
  %99 = load %struct.cx18*, %struct.cx18** %2, align 8
  %100 = load i32, i32* @CX18_WMB_CLIENT12, align 4
  %101 = call i32 @cx18_write_reg(%struct.cx18* %99, i32 257, i32 %100)
  %102 = load %struct.cx18*, %struct.cx18** %2, align 8
  %103 = load i32, i32* @CX18_WMB_CLIENT13, align 4
  %104 = call i32 @cx18_write_reg(%struct.cx18* %102, i32 257, i32 %103)
  %105 = load %struct.cx18*, %struct.cx18** %2, align 8
  %106 = load i32, i32* @CX18_WMB_CLIENT11, align 4
  %107 = call i32 @cx18_write_reg(%struct.cx18* %105, i32 257, i32 %106)
  %108 = load %struct.cx18*, %struct.cx18** %2, align 8
  %109 = load i32, i32* @CX18_WMB_CLIENT14, align 4
  %110 = call i32 @cx18_write_reg(%struct.cx18* %108, i32 257, i32 %109)
  ret void
}

declare dso_local i32 @cx18_msleep_timeout(i32, i32) #1

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
