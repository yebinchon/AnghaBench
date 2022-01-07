; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_chip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_chip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32 (i64)*, i64, i32 (i32, i64)*, i32 (%struct.mtd_info.0*, i32)* }
%struct.mtd_info.0 = type opaque

@ONENAND_REG_SYS_CFG1 = common dso_local global i64 0, align 8
@ONENAND_SYS_CFG1_SYNC_READ = common dso_local global i32 0, align 4
@ONENAND_SYS_CFG1_SYNC_WRITE = common dso_local global i32 0, align 4
@ONENAND_CMD_READID = common dso_local global i32 0, align 4
@ONENAND_BOOTRAM = common dso_local global i64 0, align 8
@ONENAND_CMD_RESET = common dso_local global i32 0, align 4
@FL_RESETING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ONENAND_REG_MANUFACTURER_ID = common dso_local global i64 0, align 8
@ONENAND_REG_DEVICE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @onenand_chip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_chip_probe(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.onenand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %11, align 8
  store %struct.onenand_chip* %12, %struct.onenand_chip** %4, align 8
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %14 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %13, i32 0, i32 0
  %15 = load i32 (i64)*, i32 (i64)** %14, align 8
  %16 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %17 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 %15(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %23 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %22, i32 0, i32 2
  %24 = load i32 (i32, i64)*, i32 (i32, i64)** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ONENAND_SYS_CFG1_SYNC_READ, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @ONENAND_SYS_CFG1_SYNC_WRITE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %33 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 %24(i32 %31, i64 %36)
  %38 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %39 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %38, i32 0, i32 2
  %40 = load i32 (i32, i64)*, i32 (i32, i64)** %39, align 8
  %41 = load i32, i32* @ONENAND_CMD_READID, align 4
  %42 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %43 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 %40(i32 %41, i64 %46)
  %48 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %49 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %48, i32 0, i32 0
  %50 = load i32 (i64)*, i32 (i64)** %49, align 8
  %51 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %52 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %55 = add nsw i64 %53, %54
  %56 = add nsw i64 %55, 0
  %57 = call i32 %50(i64 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %59 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %58, i32 0, i32 0
  %60 = load i32 (i64)*, i32 (i64)** %59, align 8
  %61 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %62 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %65 = add nsw i64 %63, %64
  %66 = add nsw i64 %65, 2
  %67 = call i32 %60(i64 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %69 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %68, i32 0, i32 2
  %70 = load i32 (i32, i64)*, i32 (i32, i64)** %69, align 8
  %71 = load i32, i32* @ONENAND_CMD_RESET, align 4
  %72 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %73 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 %70(i32 %71, i64 %76)
  %78 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %79 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %78, i32 0, i32 3
  %80 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %79, align 8
  %81 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %82 = bitcast %struct.mtd_info* %81 to %struct.mtd_info.0*
  %83 = load i32, i32* @FL_RESETING, align 4
  %84 = call i32 %80(%struct.mtd_info.0* %82, i32 %83)
  %85 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %86 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %85, i32 0, i32 2
  %87 = load i32 (i32, i64)*, i32 (i32, i64)** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %90 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 %87(i32 %88, i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @onenand_check_maf(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %1
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %131

101:                                              ; preds = %1
  %102 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %103 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %102, i32 0, i32 0
  %104 = load i32 (i64)*, i32 (i64)** %103, align 8
  %105 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %106 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ONENAND_REG_MANUFACTURER_ID, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 %104(i64 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %112 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %111, i32 0, i32 0
  %113 = load i32 (i64)*, i32 (i64)** %112, align 8
  %114 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %115 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ONENAND_REG_DEVICE_ID, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 %113(i64 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %101
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123, %101
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %127, %98
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @onenand_check_maf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
