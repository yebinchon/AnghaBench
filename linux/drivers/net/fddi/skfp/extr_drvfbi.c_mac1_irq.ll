; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_drvfbi.c_mac1_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_drvfbi.c_mac1_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@FM_SPCEPDS = common dso_local global i32 0, align 4
@FM_SPCEPDA0 = common dso_local global i32 0, align 4
@FM_SPCEPDA1 = common dso_local global i32 0, align 4
@SMT_E0134 = common dso_local global i32 0, align 4
@SMT_E0134_MSG = common dso_local global i32 0, align 4
@FM_STBURS = common dso_local global i32 0, align 4
@FM_STBURA0 = common dso_local global i32 0, align 4
@FM_STBURA1 = common dso_local global i32 0, align 4
@SMT_E0133 = common dso_local global i32 0, align 4
@SMT_E0133_MSG = common dso_local global i32 0, align 4
@FM_SXMTABT = common dso_local global i32 0, align 4
@FM_STXABRS = common dso_local global i32 0, align 4
@FM_STXABRA0 = common dso_local global i32 0, align 4
@FM_SQLCKS = common dso_local global i32 0, align 4
@FM_SQLCKA0 = common dso_local global i32 0, align 4
@FM_ST1U = common dso_local global i32 0, align 4
@FM_ST1L = common dso_local global i32 0, align 4
@FM_STECFRMA0 = common dso_local global i32 0, align 4
@FM_STEFRMA0 = common dso_local global i32 0, align 4
@FM_STEFRMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac1_irq(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %74, %3
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @FM_SPCEPDS, align 4
  %11 = load i32, i32* @FM_SPCEPDA0, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FM_SPCEPDA1, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %19 = load i32, i32* @SMT_E0134, align 4
  %20 = load i32, i32* @SMT_E0134_MSG, align 4
  %21 = call i32 @SMT_PANIC(%struct.s_smc* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FM_STBURS, align 4
  %25 = load i32, i32* @FM_STBURA0, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FM_STBURA1, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %33 = load i32, i32* @SMT_E0133, align 4
  %34 = load i32, i32* @SMT_E0133_MSG, align 4
  %35 = call i32 @SMT_PANIC(%struct.s_smc* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FM_SXMTABT, align 4
  %39 = load i32, i32* @FM_STXABRS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FM_STXABRA0, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FM_SQLCKS, align 4
  %48 = load i32, i32* @FM_SQLCKA0, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %45, %36
  %53 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %54 = call i32 @formac_tx_restart(%struct.s_smc* %53)
  store i32 1, i32* %7, align 4
  %55 = load i32, i32* @FM_ST1U, align 4
  %56 = call i32 @FM_A(i32 %55)
  %57 = call i32 @inpw(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @FM_ST1L, align 4
  %59 = call i32 @FM_A(i32 %58)
  %60 = call i32 @inpw(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @FM_STECFRMA0, align 4
  %62 = load i32, i32* @FM_STEFRMA0, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @FM_STEFRMS, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %52
  br label %8

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @FM_STEFRMA0, align 4
  %79 = load i32, i32* @FM_STEFRMS, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %89 = call i32 @llc_restart_tx(%struct.s_smc* %88)
  br label %90

90:                                               ; preds = %87, %84
  ret void
}

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @formac_tx_restart(%struct.s_smc*) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @llc_restart_tx(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
