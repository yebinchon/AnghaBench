; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_vconfig_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_vconfig_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25840_state = type { i32 }

@CX25840_VCONFIG_FMT_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_RES_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VBIRAW_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ANCDATA_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_TASKBIT_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ACTIVE_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VALID_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_HRESETW_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_CLKGATE_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_DCMODE_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_IDID0S_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VIPCLAMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25840_state*, i32)* @cx25840_vconfig_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25840_vconfig_add(%struct.cx25840_state* %0, i32 %1) #0 {
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  store %struct.cx25840_state* %0, %struct.cx25840_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CX25840_VCONFIG_FMT_MASK, align 4
  %8 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %5, i32 %6, i32 %7)
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CX25840_VCONFIG_RES_MASK, align 4
  %12 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %9, i32 %10, i32 %11)
  %13 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CX25840_VCONFIG_VBIRAW_MASK, align 4
  %16 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %13, i32 %14, i32 %15)
  %17 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CX25840_VCONFIG_ANCDATA_MASK, align 4
  %20 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %17, i32 %18, i32 %19)
  %21 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CX25840_VCONFIG_TASKBIT_MASK, align 4
  %24 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %21, i32 %22, i32 %23)
  %25 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CX25840_VCONFIG_ACTIVE_MASK, align 4
  %28 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %25, i32 %26, i32 %27)
  %29 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CX25840_VCONFIG_VALID_MASK, align 4
  %32 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %29, i32 %30, i32 %31)
  %33 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CX25840_VCONFIG_HRESETW_MASK, align 4
  %36 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %33, i32 %34, i32 %35)
  %37 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @CX25840_VCONFIG_CLKGATE_MASK, align 4
  %40 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %37, i32 %38, i32 %39)
  %41 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CX25840_VCONFIG_DCMODE_MASK, align 4
  %44 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %41, i32 %42, i32 %43)
  %45 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @CX25840_VCONFIG_IDID0S_MASK, align 4
  %48 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %45, i32 %46, i32 %47)
  %49 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CX25840_VCONFIG_VIPCLAMP_MASK, align 4
  %52 = call i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @CX25840_VCONFIG_OPTION(%struct.cx25840_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
