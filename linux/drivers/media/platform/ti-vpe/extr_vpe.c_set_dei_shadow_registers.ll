; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_dei_shadow_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_dei_shadow_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_dei_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.vpe_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vpe_mmr_adb* }
%struct.vpe_mmr_adb = type { i32* }

@dei_regs = common dso_local global %struct.vpe_dei_regs zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @set_dei_shadow_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dei_shadow_registers(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  %3 = alloca %struct.vpe_mmr_adb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vpe_dei_regs*, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %6 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %8, align 8
  store %struct.vpe_mmr_adb* %9, %struct.vpe_mmr_adb** %3, align 8
  %10 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %3, align 8
  %11 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32* %13, i32** %4, align 8
  store %struct.vpe_dei_regs* @dei_regs, %struct.vpe_dei_regs** %5, align 8
  %14 = load %struct.vpe_dei_regs*, %struct.vpe_dei_regs** %5, align 8
  %15 = getelementptr inbounds %struct.vpe_dei_regs, %struct.vpe_dei_regs* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vpe_dei_regs*, %struct.vpe_dei_regs** %5, align 8
  %20 = getelementptr inbounds %struct.vpe_dei_regs, %struct.vpe_dei_regs* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vpe_dei_regs*, %struct.vpe_dei_regs** %5, align 8
  %25 = getelementptr inbounds %struct.vpe_dei_regs, %struct.vpe_dei_regs* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vpe_dei_regs*, %struct.vpe_dei_regs** %5, align 8
  %30 = getelementptr inbounds %struct.vpe_dei_regs, %struct.vpe_dei_regs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vpe_dei_regs*, %struct.vpe_dei_regs** %5, align 8
  %35 = getelementptr inbounds %struct.vpe_dei_regs, %struct.vpe_dei_regs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vpe_dei_regs*, %struct.vpe_dei_regs** %5, align 8
  %40 = getelementptr inbounds %struct.vpe_dei_regs, %struct.vpe_dei_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
