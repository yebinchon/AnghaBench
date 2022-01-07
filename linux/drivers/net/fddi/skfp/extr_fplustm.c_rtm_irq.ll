; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_rtm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_rtm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@B2_RTM_CRTL = common dso_local global i32 0, align 4
@TIM_CL_IRQ = common dso_local global i32 0, align 4
@TIM_RES_TOK = common dso_local global i32 0, align 4
@FM_CMDREG1 = common dso_local global i32 0, align 4
@FM_ICL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RMT: fddiPATHT_Rmode expired\00", align 1
@FDDI_RING_STATUS = common dso_local global i64 0, align 8
@FDDI_SMT_EVENT = common dso_local global i64 0, align 8
@FDDI_RTT = common dso_local global i64 0, align 8
@TIM_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtm_irq(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @B2_RTM_CRTL, align 4
  %4 = call i32 @ADDR(i32 %3)
  %5 = load i32, i32* @TIM_CL_IRQ, align 4
  %6 = call i32 @outpw(i32 %4, i32 %5)
  %7 = load i32, i32* @B2_RTM_CRTL, align 4
  %8 = call i32 @ADDR(i32 %7)
  %9 = call i32 @inpw(i32 %8)
  %10 = load i32, i32* @TIM_RES_TOK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @FM_CMDREG1, align 4
  %15 = call i32 @FM_A(i32 %14)
  %16 = load i32, i32* @FM_ICL, align 4
  %17 = call i32 @outpw(i32 %15, i32 %16)
  %18 = call i32 @DB_RMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %20 = load i64, i64* @FDDI_RING_STATUS, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* @FDDI_SMT_EVENT, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* @FDDI_RTT, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %27 = call i32 @smt_get_event_word(%struct.s_smc* %26)
  %28 = call i32 @AIX_EVENT(%struct.s_smc* %19, i32 %21, i32 %23, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %13, %1
  %30 = load i32, i32* @B2_RTM_CRTL, align 4
  %31 = call i32 @ADDR(i32 %30)
  %32 = load i32, i32* @TIM_START, align 4
  %33 = call i32 @outpw(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @ADDR(i32) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @DB_RMT(i8*) #1

declare dso_local i32 @AIX_EVENT(%struct.s_smc*, i32, i32, i32, i32) #1

declare dso_local i32 @smt_get_event_word(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
