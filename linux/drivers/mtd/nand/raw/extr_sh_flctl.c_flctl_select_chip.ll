; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.sh_flctl = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CE0_ENABLE = common dso_local global i32 0, align 4
@DEV_PM_QOS_RESUME_LATENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PM QoS request failed: %d\0A\00", align 1
@HOLDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @flctl_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flctl_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call i32 @nand_to_mtd(%struct.nand_chip* %7)
  %9 = call %struct.sh_flctl* @mtd_to_flctl(i32 %8)
  store %struct.sh_flctl* %9, %struct.sh_flctl** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %97 [
    i32 -1, label %11
    i32 0, label %45
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @CE0_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %15 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %19 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @pm_runtime_get_sync(i32* %21)
  %23 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %24 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %27 = call i32 @FLCMNCR(%struct.sh_flctl* %26)
  %28 = call i32 @writel(i32 %25, i32 %27)
  %29 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %30 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %11
  %34 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %35 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %34, i32 0, i32 3
  %36 = call i32 @dev_pm_qos_remove_request(i32* %35)
  %37 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %38 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %11
  %40 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %41 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_put_sync(i32* %43)
  br label %99

45:                                               ; preds = %2
  %46 = load i32, i32* @CE0_ENABLE, align 4
  %47 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %48 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %52 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %45
  %56 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %57 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %61 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %60, i32 0, i32 3
  %62 = load i32, i32* @DEV_PM_QOS_RESUME_LATENCY, align 4
  %63 = call i32 @dev_pm_qos_add_request(i32* %59, i32* %61, i32 %62, i32 100)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %68 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %55
  %74 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %75 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %45
  %77 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %78 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %83 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @pm_runtime_get_sync(i32* %85)
  %87 = load i32, i32* @HOLDEN, align 4
  %88 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %89 = call i32 @FLHOLDCR(%struct.sh_flctl* %88)
  %90 = call i32 @writel(i32 %87, i32 %89)
  %91 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %92 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_put_sync(i32* %94)
  br label %96

96:                                               ; preds = %81, %76
  br label %99

97:                                               ; preds = %2
  %98 = call i32 (...) @BUG()
  br label %99

99:                                               ; preds = %97, %96, %39
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLCMNCR(%struct.sh_flctl*) #1

declare dso_local i32 @dev_pm_qos_remove_request(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @dev_pm_qos_add_request(i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @FLHOLDCR(%struct.sh_flctl*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
