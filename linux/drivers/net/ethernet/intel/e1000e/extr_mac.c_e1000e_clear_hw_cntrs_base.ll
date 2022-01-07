; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_clear_hw_cntrs_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_clear_hw_cntrs_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@CRCERRS = common dso_local global i32 0, align 4
@SYMERRS = common dso_local global i32 0, align 4
@MPC = common dso_local global i32 0, align 4
@SCC = common dso_local global i32 0, align 4
@ECOL = common dso_local global i32 0, align 4
@MCC = common dso_local global i32 0, align 4
@LATECOL = common dso_local global i32 0, align 4
@COLC = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@SEC = common dso_local global i32 0, align 4
@RLEC = common dso_local global i32 0, align 4
@XONRXC = common dso_local global i32 0, align 4
@XONTXC = common dso_local global i32 0, align 4
@XOFFRXC = common dso_local global i32 0, align 4
@XOFFTXC = common dso_local global i32 0, align 4
@FCRUC = common dso_local global i32 0, align 4
@GPRC = common dso_local global i32 0, align 4
@BPRC = common dso_local global i32 0, align 4
@MPRC = common dso_local global i32 0, align 4
@GPTC = common dso_local global i32 0, align 4
@GORCL = common dso_local global i32 0, align 4
@GORCH = common dso_local global i32 0, align 4
@GOTCL = common dso_local global i32 0, align 4
@GOTCH = common dso_local global i32 0, align 4
@RNBC = common dso_local global i32 0, align 4
@RUC = common dso_local global i32 0, align 4
@RFC = common dso_local global i32 0, align 4
@ROC = common dso_local global i32 0, align 4
@RJC = common dso_local global i32 0, align 4
@TORL = common dso_local global i32 0, align 4
@TORH = common dso_local global i32 0, align 4
@TOTL = common dso_local global i32 0, align 4
@TOTH = common dso_local global i32 0, align 4
@TPR = common dso_local global i32 0, align 4
@TPT = common dso_local global i32 0, align 4
@MPTC = common dso_local global i32 0, align 4
@BPTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_clear_hw_cntrs_base(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load i32, i32* @CRCERRS, align 4
  %4 = call i32 @er32(i32 %3)
  %5 = load i32, i32* @SYMERRS, align 4
  %6 = call i32 @er32(i32 %5)
  %7 = load i32, i32* @MPC, align 4
  %8 = call i32 @er32(i32 %7)
  %9 = load i32, i32* @SCC, align 4
  %10 = call i32 @er32(i32 %9)
  %11 = load i32, i32* @ECOL, align 4
  %12 = call i32 @er32(i32 %11)
  %13 = load i32, i32* @MCC, align 4
  %14 = call i32 @er32(i32 %13)
  %15 = load i32, i32* @LATECOL, align 4
  %16 = call i32 @er32(i32 %15)
  %17 = load i32, i32* @COLC, align 4
  %18 = call i32 @er32(i32 %17)
  %19 = load i32, i32* @DC, align 4
  %20 = call i32 @er32(i32 %19)
  %21 = load i32, i32* @SEC, align 4
  %22 = call i32 @er32(i32 %21)
  %23 = load i32, i32* @RLEC, align 4
  %24 = call i32 @er32(i32 %23)
  %25 = load i32, i32* @XONRXC, align 4
  %26 = call i32 @er32(i32 %25)
  %27 = load i32, i32* @XONTXC, align 4
  %28 = call i32 @er32(i32 %27)
  %29 = load i32, i32* @XOFFRXC, align 4
  %30 = call i32 @er32(i32 %29)
  %31 = load i32, i32* @XOFFTXC, align 4
  %32 = call i32 @er32(i32 %31)
  %33 = load i32, i32* @FCRUC, align 4
  %34 = call i32 @er32(i32 %33)
  %35 = load i32, i32* @GPRC, align 4
  %36 = call i32 @er32(i32 %35)
  %37 = load i32, i32* @BPRC, align 4
  %38 = call i32 @er32(i32 %37)
  %39 = load i32, i32* @MPRC, align 4
  %40 = call i32 @er32(i32 %39)
  %41 = load i32, i32* @GPTC, align 4
  %42 = call i32 @er32(i32 %41)
  %43 = load i32, i32* @GORCL, align 4
  %44 = call i32 @er32(i32 %43)
  %45 = load i32, i32* @GORCH, align 4
  %46 = call i32 @er32(i32 %45)
  %47 = load i32, i32* @GOTCL, align 4
  %48 = call i32 @er32(i32 %47)
  %49 = load i32, i32* @GOTCH, align 4
  %50 = call i32 @er32(i32 %49)
  %51 = load i32, i32* @RNBC, align 4
  %52 = call i32 @er32(i32 %51)
  %53 = load i32, i32* @RUC, align 4
  %54 = call i32 @er32(i32 %53)
  %55 = load i32, i32* @RFC, align 4
  %56 = call i32 @er32(i32 %55)
  %57 = load i32, i32* @ROC, align 4
  %58 = call i32 @er32(i32 %57)
  %59 = load i32, i32* @RJC, align 4
  %60 = call i32 @er32(i32 %59)
  %61 = load i32, i32* @TORL, align 4
  %62 = call i32 @er32(i32 %61)
  %63 = load i32, i32* @TORH, align 4
  %64 = call i32 @er32(i32 %63)
  %65 = load i32, i32* @TOTL, align 4
  %66 = call i32 @er32(i32 %65)
  %67 = load i32, i32* @TOTH, align 4
  %68 = call i32 @er32(i32 %67)
  %69 = load i32, i32* @TPR, align 4
  %70 = call i32 @er32(i32 %69)
  %71 = load i32, i32* @TPT, align 4
  %72 = call i32 @er32(i32 %71)
  %73 = load i32, i32* @MPTC, align 4
  %74 = call i32 @er32(i32 %73)
  %75 = load i32, i32* @BPTC, align 4
  %76 = call i32 @er32(i32 %75)
  ret void
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
