; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_plc_config_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_plc_config_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SMT_DAS = common dso_local global i64 0, align 8
@MUX_WRAPB = common dso_local global i32 0, align 4
@PA = common dso_local global i32 0, align 4
@PL_CNTRL_B = common dso_local global i32 0, align 4
@PL_CONFIG_CNTRL = common dso_local global i32 0, align 4
@PL_CNTRL_A = common dso_local global i32 0, align 4
@PL_SC_REM_LOOP = common dso_local global i32 0, align 4
@PB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plc_config_mux(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SMT_DAS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MUX_WRAPB, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, i32* @PA, align 4
  %18 = load i32, i32* @PL_CNTRL_B, align 4
  %19 = call i32 @PLC(i32 %17, i32 %18)
  %20 = load i32, i32* @PL_CONFIG_CNTRL, align 4
  %21 = load i32, i32* @PL_CONFIG_CNTRL, align 4
  %22 = call i32 @SETMASK(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @PA, align 4
  %24 = load i32, i32* @PL_CNTRL_A, align 4
  %25 = call i32 @PLC(i32 %23, i32 %24)
  %26 = load i32, i32* @PL_SC_REM_LOOP, align 4
  %27 = load i32, i32* @PL_SC_REM_LOOP, align 4
  %28 = call i32 @SETMASK(i32 %25, i32 %26, i32 %27)
  br label %40

29:                                               ; preds = %12
  %30 = load i32, i32* @PA, align 4
  %31 = load i32, i32* @PL_CNTRL_B, align 4
  %32 = call i32 @PLC(i32 %30, i32 %31)
  %33 = load i32, i32* @PL_CONFIG_CNTRL, align 4
  %34 = call i32 @CLEAR(i32 %32, i32 %33)
  %35 = load i32, i32* @PA, align 4
  %36 = load i32, i32* @PL_CNTRL_A, align 4
  %37 = call i32 @PLC(i32 %35, i32 %36)
  %38 = load i32, i32* @PL_SC_REM_LOOP, align 4
  %39 = call i32 @CLEAR(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %16
  %41 = load i32, i32* @PB, align 4
  %42 = load i32, i32* @PL_CNTRL_B, align 4
  %43 = call i32 @PLC(i32 %41, i32 %42)
  %44 = load i32, i32* @PL_CONFIG_CNTRL, align 4
  %45 = call i32 @CLEAR(i32 %43, i32 %44)
  %46 = load i32, i32* @PB, align 4
  %47 = load i32, i32* @PL_CNTRL_A, align 4
  %48 = call i32 @PLC(i32 %46, i32 %47)
  %49 = load i32, i32* @PL_SC_REM_LOOP, align 4
  %50 = call i32 @CLEAR(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @SETMASK(i32, i32, i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
