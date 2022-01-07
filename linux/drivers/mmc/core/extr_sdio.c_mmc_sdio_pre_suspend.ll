; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_pre_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_pre_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sdio_func** }
%struct.sdio_func = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sdio_pre_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_pre_suspend(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca %struct.dev_pm_ops*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %61, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %7
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.sdio_func**, %struct.sdio_func*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %20, i64 %22
  %24 = load %struct.sdio_func*, %struct.sdio_func** %23, align 8
  store %struct.sdio_func* %24, %struct.sdio_func** %5, align 8
  %25 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %26 = icmp ne %struct.sdio_func* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %15
  %28 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %29 = call i64 @sdio_func_present(%struct.sdio_func* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %42, align 8
  store %struct.dev_pm_ops* %43, %struct.dev_pm_ops** %6, align 8
  %44 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %45 = icmp ne %struct.dev_pm_ops* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %48 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %53 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %46, %37
  %57 = load i32, i32* @ENOSYS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %31, %27, %15
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %7

64:                                               ; preds = %56, %7
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @sdio_func_present(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
