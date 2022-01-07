; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq.c_mmc_pwrseq_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq.c_mmc_pwrseq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_pwrseq = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pwrseq_list_mutex = common dso_local global i32 0, align 4
@pwrseq_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_pwrseq_register(%struct.mmc_pwrseq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_pwrseq*, align 8
  store %struct.mmc_pwrseq* %0, %struct.mmc_pwrseq** %3, align 8
  %4 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %5 = icmp ne %struct.mmc_pwrseq* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_pwrseq, %struct.mmc_pwrseq* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_pwrseq, %struct.mmc_pwrseq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %6, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %11
  %20 = call i32 @mutex_lock(i32* @pwrseq_list_mutex)
  %21 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_pwrseq, %struct.mmc_pwrseq* %21, i32 0, i32 0
  %23 = call i32 @list_add(i32* %22, i32* @pwrseq_list)
  %24 = call i32 @mutex_unlock(i32* @pwrseq_list_mutex)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
