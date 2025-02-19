; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__*, %struct.mmc_ios }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, %struct.mmc_ios*)* }
%struct.mmc_ios = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"%s: clock %uHz busmode %u powermode %u cs %u Vdd %u width %u timing %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_set_ios(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_ios*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 1
  store %struct.mmc_ios* %5, %struct.mmc_ios** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call i32 @mmc_hostname(%struct.mmc_host* %6)
  %8 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %26, i32 %29)
  %31 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)** %34, align 8
  %36 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %38 = call i32 %35(%struct.mmc_host* %36, %struct.mmc_ios* %37)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
