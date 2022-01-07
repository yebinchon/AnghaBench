; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_nand_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_nand_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsmc_nand_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fsmc_nand_timings = type { i32, i32, i32, i32, i32, i32 }

@FSMC_DEVTYPE_NAND = common dso_local global i32 0, align 4
@FSMC_ENABLE = common dso_local global i32 0, align 4
@FSMC_WAITON = common dso_local global i32 0, align 4
@FSMC_TCLR_MASK = common dso_local global i32 0, align 4
@FSMC_TCLR_SHIFT = common dso_local global i32 0, align 4
@FSMC_TAR_MASK = common dso_local global i32 0, align 4
@FSMC_TAR_SHIFT = common dso_local global i32 0, align 4
@FSMC_THIZ_MASK = common dso_local global i32 0, align 4
@FSMC_THIZ_SHIFT = common dso_local global i32 0, align 4
@FSMC_THOLD_MASK = common dso_local global i32 0, align 4
@FSMC_THOLD_SHIFT = common dso_local global i32 0, align 4
@FSMC_TWAIT_MASK = common dso_local global i32 0, align 4
@FSMC_TWAIT_SHIFT = common dso_local global i32 0, align 4
@FSMC_TSET_MASK = common dso_local global i32 0, align 4
@FSMC_TSET_SHIFT = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@FSMC_DEVWID_16 = common dso_local global i32 0, align 4
@FSMC_PC = common dso_local global i64 0, align 8
@COMM = common dso_local global i64 0, align 8
@ATTRIB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsmc_nand_data*, %struct.fsmc_nand_timings*)* @fsmc_nand_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsmc_nand_setup(%struct.fsmc_nand_data* %0, %struct.fsmc_nand_timings* %1) #0 {
  %3 = alloca %struct.fsmc_nand_data*, align 8
  %4 = alloca %struct.fsmc_nand_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsmc_nand_data* %0, %struct.fsmc_nand_data** %3, align 8
  store %struct.fsmc_nand_timings* %1, %struct.fsmc_nand_timings** %4, align 8
  %12 = load i32, i32* @FSMC_DEVTYPE_NAND, align 4
  %13 = load i32, i32* @FSMC_ENABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FSMC_WAITON, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %4, align 8
  %18 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FSMC_TCLR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @FSMC_TCLR_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %4, align 8
  %25 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FSMC_TAR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @FSMC_TAR_SHIFT, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %4, align 8
  %32 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FSMC_THIZ_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @FSMC_THIZ_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %4, align 8
  %39 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FSMC_THOLD_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @FSMC_THOLD_SHIFT, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %4, align 8
  %46 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FSMC_TWAIT_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @FSMC_TWAIT_SHIFT, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %4, align 8
  %53 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FSMC_TSET_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @FSMC_TSET_SHIFT, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %3, align 8
  %60 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %2
  %67 = load i32, i32* @FSMC_DEVWID_16, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %2
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %3, align 8
  %77 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FSMC_PC, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel_relaxed(i32 %75, i64 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %3, align 8
  %90 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @COMM, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel_relaxed(i32 %88, i64 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %3, align 8
  %103 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ATTRIB, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel_relaxed(i32 %101, i64 %106)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
