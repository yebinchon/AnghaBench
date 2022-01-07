; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_hsmmc_command_incomplete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_hsmmc_command_incomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SRC = common dso_local global i32 0, align 4
@SRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, i32, i32)* @hsmmc_command_incomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsmmc_command_incomplete(%struct.omap_hsmmc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = load i32, i32* @SRC, align 4
  %12 = call i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host* %10, i32 %11)
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %9
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %26 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %31 = load i32, i32* @SRD, align 4
  %32 = call i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host* %30, i32 %31)
  %33 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host* %33, i32 %34)
  br label %57

36:                                               ; preds = %24
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %43 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %51 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %41, %36
  br label %57

57:                                               ; preds = %56, %29
  ret void
}

declare dso_local i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
