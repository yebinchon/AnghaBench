; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_configure_auto_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_configure_auto_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.prcmu_auto_pm_config = type { i32, i32, i32, i32, i32, i32 }

@mb2_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_REQ_MB2_AUTO_PM_SLEEP = common dso_local global i64 0, align 8
@PRCM_REQ_MB2_AUTO_PM_IDLE = common dso_local global i64 0, align 8
@PRCMU_AUTO_PM_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prcmu_configure_auto_pm(%struct.prcmu_auto_pm_config* %0, %struct.prcmu_auto_pm_config* %1) #0 {
  %3 = alloca %struct.prcmu_auto_pm_config*, align 8
  %4 = alloca %struct.prcmu_auto_pm_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.prcmu_auto_pm_config* %0, %struct.prcmu_auto_pm_config** %3, align 8
  store %struct.prcmu_auto_pm_config* %1, %struct.prcmu_auto_pm_config** %4, align 8
  %8 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %9 = icmp eq %struct.prcmu_auto_pm_config* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %12 = icmp eq %struct.prcmu_auto_pm_config* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ true, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %18 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 4
  %23 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %24 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = or i32 %22, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 8
  %30 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %31 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = or i32 %29, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 8
  %37 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %38 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = or i32 %36, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, 4
  %44 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %45 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = or i32 %43, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 4
  %51 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %52 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = or i32 %50, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %57 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 15
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 4
  %62 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %63 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = or i32 %61, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 %67, 8
  %69 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %70 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = or i32 %68, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 8
  %76 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %77 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  %80 = or i32 %75, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = shl i32 %81, 4
  %83 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %84 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = or i32 %82, %86
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 %88, 4
  %90 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %91 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  %94 = or i32 %89, %93
  store i32 %94, i32* %6, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb2_transfer, i32 0, i32 1), i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i64, i64* @tcdm_base, align 8
  %99 = load i64, i64* @PRCM_REQ_MB2_AUTO_PM_SLEEP, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %97, i64 %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i64, i64* @tcdm_base, align 8
  %104 = load i64, i64* @PRCM_REQ_MB2_AUTO_PM_IDLE, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %102, i64 %105)
  %107 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %108 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PRCMU_AUTO_PM_ON, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %130, label %112

112:                                              ; preds = %13
  %113 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %3, align 8
  %114 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PRCMU_AUTO_PM_ON, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %120 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PRCMU_AUTO_PM_ON, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.prcmu_auto_pm_config*, %struct.prcmu_auto_pm_config** %4, align 8
  %126 = getelementptr inbounds %struct.prcmu_auto_pm_config, %struct.prcmu_auto_pm_config* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PRCMU_AUTO_PM_ON, align 4
  %129 = icmp eq i32 %127, %128
  br label %130

130:                                              ; preds = %124, %118, %112, %13
  %131 = phi i1 [ true, %118 ], [ true, %112 ], [ true, %13 ], [ %129, %124 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb2_transfer, i32 0, i32 0), align 4
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb2_transfer, i32 0, i32 1), i64 %133)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
