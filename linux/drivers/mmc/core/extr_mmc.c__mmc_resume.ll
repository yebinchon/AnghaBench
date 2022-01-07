; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c__mmc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c__mmc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @_mmc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mmc_resume(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call i32 @mmc_claim_host(%struct.mmc_host* %4)
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @mmc_card_suspended(%struct.TYPE_4__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mmc_power_up(%struct.mmc_host* %13, i32 %18)
  %20 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %21 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @mmc_init_card(%struct.mmc_host* %20, i32 %25, %struct.TYPE_4__* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @mmc_card_clr_suspended(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %12, %11
  %35 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %36 = call i32 @mmc_release_host(%struct.mmc_host* %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_suspended(%struct.TYPE_4__*) #1

declare dso_local i32 @mmc_power_up(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_init_card(%struct.mmc_host*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mmc_card_clr_suspended(%struct.TYPE_4__*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
