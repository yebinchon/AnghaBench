; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_clear_hw_cntrs_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_clear_hw_cntrs_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@PRC64 = common dso_local global i32 0, align 4
@PRC127 = common dso_local global i32 0, align 4
@PRC255 = common dso_local global i32 0, align 4
@PRC511 = common dso_local global i32 0, align 4
@PRC1023 = common dso_local global i32 0, align 4
@PRC1522 = common dso_local global i32 0, align 4
@PTC64 = common dso_local global i32 0, align 4
@PTC127 = common dso_local global i32 0, align 4
@PTC255 = common dso_local global i32 0, align 4
@PTC511 = common dso_local global i32 0, align 4
@PTC1023 = common dso_local global i32 0, align 4
@PTC1522 = common dso_local global i32 0, align 4
@ALGNERRC = common dso_local global i32 0, align 4
@RXERRC = common dso_local global i32 0, align 4
@TNCRS = common dso_local global i32 0, align 4
@CEXTERR = common dso_local global i32 0, align 4
@TSCTC = common dso_local global i32 0, align 4
@TSCTFC = common dso_local global i32 0, align 4
@MGTPRC = common dso_local global i32 0, align 4
@MGTPDC = common dso_local global i32 0, align 4
@MGTPTC = common dso_local global i32 0, align 4
@IAC = common dso_local global i32 0, align 4
@ICRXOC = common dso_local global i32 0, align 4
@ICRXPTC = common dso_local global i32 0, align 4
@ICRXATC = common dso_local global i32 0, align 4
@ICTXPTC = common dso_local global i32 0, align 4
@ICTXATC = common dso_local global i32 0, align 4
@ICTXQEC = common dso_local global i32 0, align 4
@ICTXQMTC = common dso_local global i32 0, align 4
@ICRXDMTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_clear_hw_cntrs_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clear_hw_cntrs_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %4 = call i32 @e1000e_clear_hw_cntrs_base(%struct.e1000_hw* %3)
  %5 = load i32, i32* @PRC64, align 4
  %6 = call i32 @er32(i32 %5)
  %7 = load i32, i32* @PRC127, align 4
  %8 = call i32 @er32(i32 %7)
  %9 = load i32, i32* @PRC255, align 4
  %10 = call i32 @er32(i32 %9)
  %11 = load i32, i32* @PRC511, align 4
  %12 = call i32 @er32(i32 %11)
  %13 = load i32, i32* @PRC1023, align 4
  %14 = call i32 @er32(i32 %13)
  %15 = load i32, i32* @PRC1522, align 4
  %16 = call i32 @er32(i32 %15)
  %17 = load i32, i32* @PTC64, align 4
  %18 = call i32 @er32(i32 %17)
  %19 = load i32, i32* @PTC127, align 4
  %20 = call i32 @er32(i32 %19)
  %21 = load i32, i32* @PTC255, align 4
  %22 = call i32 @er32(i32 %21)
  %23 = load i32, i32* @PTC511, align 4
  %24 = call i32 @er32(i32 %23)
  %25 = load i32, i32* @PTC1023, align 4
  %26 = call i32 @er32(i32 %25)
  %27 = load i32, i32* @PTC1522, align 4
  %28 = call i32 @er32(i32 %27)
  %29 = load i32, i32* @ALGNERRC, align 4
  %30 = call i32 @er32(i32 %29)
  %31 = load i32, i32* @RXERRC, align 4
  %32 = call i32 @er32(i32 %31)
  %33 = load i32, i32* @TNCRS, align 4
  %34 = call i32 @er32(i32 %33)
  %35 = load i32, i32* @CEXTERR, align 4
  %36 = call i32 @er32(i32 %35)
  %37 = load i32, i32* @TSCTC, align 4
  %38 = call i32 @er32(i32 %37)
  %39 = load i32, i32* @TSCTFC, align 4
  %40 = call i32 @er32(i32 %39)
  %41 = load i32, i32* @MGTPRC, align 4
  %42 = call i32 @er32(i32 %41)
  %43 = load i32, i32* @MGTPDC, align 4
  %44 = call i32 @er32(i32 %43)
  %45 = load i32, i32* @MGTPTC, align 4
  %46 = call i32 @er32(i32 %45)
  %47 = load i32, i32* @IAC, align 4
  %48 = call i32 @er32(i32 %47)
  %49 = load i32, i32* @ICRXOC, align 4
  %50 = call i32 @er32(i32 %49)
  %51 = load i32, i32* @ICRXPTC, align 4
  %52 = call i32 @er32(i32 %51)
  %53 = load i32, i32* @ICRXATC, align 4
  %54 = call i32 @er32(i32 %53)
  %55 = load i32, i32* @ICTXPTC, align 4
  %56 = call i32 @er32(i32 %55)
  %57 = load i32, i32* @ICTXATC, align 4
  %58 = call i32 @er32(i32 %57)
  %59 = load i32, i32* @ICTXQEC, align 4
  %60 = call i32 @er32(i32 %59)
  %61 = load i32, i32* @ICTXQMTC, align 4
  %62 = call i32 @er32(i32 %61)
  %63 = load i32, i32* @ICRXDMTC, align 4
  %64 = call i32 @er32(i32 %63)
  ret void
}

declare dso_local i32 @e1000e_clear_hw_cntrs_base(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
