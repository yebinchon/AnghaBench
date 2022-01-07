; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_disable_channel_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_disable_channel_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_channel = type { i32, i32 }

@RCANFD_CCTR_TAIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_ALIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_BLIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_OLIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_BORIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_BOEIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_EPIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_EWIE = common dso_local global i32 0, align 4
@RCANFD_CCTR_BEIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_canfd_channel*)* @rcar_canfd_disable_channel_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_disable_channel_interrupts(%struct.rcar_canfd_channel* %0) #0 {
  %2 = alloca %struct.rcar_canfd_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rcar_canfd_channel* %0, %struct.rcar_canfd_channel** %2, align 8
  %5 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %6 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @RCANFD_CCTR_TAIE, align 4
  %9 = load i32, i32* @RCANFD_CCTR_ALIE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @RCANFD_CCTR_BLIE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RCANFD_CCTR_OLIE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RCANFD_CCTR_BORIE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RCANFD_CCTR_BOEIE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RCANFD_CCTR_EPIE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RCANFD_CCTR_EWIE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RCANFD_CCTR_BEIE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %26 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @RCANFD_CCTR(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @rcar_canfd_clear_bit(i32 %27, i32 %29, i32 %30)
  %32 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %33 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @RCANFD_CERFL(i32 %35)
  %37 = call i32 @rcar_canfd_write(i32 %34, i32 %36, i32 0)
  ret void
}

declare dso_local i32 @rcar_canfd_clear_bit(i32, i32, i32) #1

declare dso_local i32 @RCANFD_CCTR(i32) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_CERFL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
