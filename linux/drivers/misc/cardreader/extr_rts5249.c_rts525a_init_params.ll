; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@LTR_L1OFF_SSPWRGATE_5250_DEF = common dso_local global i32 0, align 4
@LTR_L1OFF_SNOOZE_SSPWRGATE_5250_DEF = common dso_local global i32 0, align 4
@RTS524A_PM_CTRL3 = common dso_local global i32 0, align 4
@rts525a_pcr_ops = common dso_local global i32 0, align 4
@SD_OC_INT_EN = common dso_local global i32 0, align 4
@SD_OCP_GLITCH_10M = common dso_local global i32 0, align 4
@RTS525A_OCP_THD_800 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rts525a_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = call i32 @rts5249_init_params(%struct.rtsx_pcr* %3)
  %5 = load i32, i32* @LTR_L1OFF_SSPWRGATE_5250_DEF, align 4
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @LTR_L1OFF_SNOOZE_SSPWRGATE_5250_DEF, align 4
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @RTS524A_PM_CTRL3, align 4
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %15 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %17 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %16, i32 0, i32 2
  store i32* @rts525a_pcr_ops, i32** %17, align 8
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %22 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @SD_OC_INT_EN, align 4
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %29 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %1
  %34 = load i32, i32* @SD_OCP_GLITCH_10M, align 4
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @RTS525A_OCP_THD_800, align 4
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %40 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local i32 @rts5249_init_params(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
