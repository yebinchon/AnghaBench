; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fsl_upm_nand = type { i32, i32*, i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@FSL_UPM_WAIT_RUN_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @fun_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fun_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_upm_nand*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.fsl_upm_nand* @to_fsl_upm_nand(i32 %10)
  store %struct.fsl_upm_nand* %11, %struct.fsl_upm_nand** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %14 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %3
  %19 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %20 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %19, i32 0, i32 4
  %21 = call i32 @fsl_upm_end_pattern(%struct.TYPE_6__* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NAND_CMD_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %99

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NAND_ALE, align 4
  %29 = load i32, i32* @NAND_CLE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %33 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NAND_ALE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %46 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %45, i32 0, i32 4
  %47 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %48 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fsl_upm_start_pattern(%struct.TYPE_6__* %46, i32 %49)
  br label %64

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NAND_CLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %58 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %57, i32 0, i32 4
  %59 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %60 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fsl_upm_start_pattern(%struct.TYPE_6__* %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %68 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 32, %70
  %72 = shl i32 %66, %71
  %73 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %74 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %77 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %72, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %83 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %82, i32 0, i32 4
  %84 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @fsl_upm_run_pattern(%struct.TYPE_6__* %83, i32 %87, i32 %88)
  %90 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %91 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @FSL_UPM_WAIT_RUN_PATTERN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %65
  %97 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %98 = call i32 @fun_wait_rnb(%struct.fsl_upm_nand* %97)
  br label %99

99:                                               ; preds = %25, %96, %65
  ret void
}

declare dso_local %struct.fsl_upm_nand* @to_fsl_upm_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @fsl_upm_end_pattern(%struct.TYPE_6__*) #1

declare dso_local i32 @fsl_upm_start_pattern(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fsl_upm_run_pattern(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fun_wait_rnb(%struct.fsl_upm_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
