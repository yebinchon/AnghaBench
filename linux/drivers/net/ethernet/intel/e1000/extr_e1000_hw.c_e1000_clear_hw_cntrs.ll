; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_clear_hw_cntrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_clear_hw_cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

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
@PRC64 = common dso_local global i32 0, align 4
@PRC127 = common dso_local global i32 0, align 4
@PRC255 = common dso_local global i32 0, align 4
@PRC511 = common dso_local global i32 0, align 4
@PRC1023 = common dso_local global i32 0, align 4
@PRC1522 = common dso_local global i32 0, align 4
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
@PTC64 = common dso_local global i32 0, align 4
@PTC127 = common dso_local global i32 0, align 4
@PTC255 = common dso_local global i32 0, align 4
@PTC511 = common dso_local global i32 0, align 4
@PTC1023 = common dso_local global i32 0, align 4
@PTC1522 = common dso_local global i32 0, align 4
@MPTC = common dso_local global i32 0, align 4
@BPTC = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@ALGNERRC = common dso_local global i32 0, align 4
@RXERRC = common dso_local global i32 0, align 4
@TNCRS = common dso_local global i32 0, align 4
@CEXTERR = common dso_local global i32 0, align 4
@TSCTC = common dso_local global i32 0, align 4
@TSCTFC = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@MGTPRC = common dso_local global i32 0, align 4
@MGTPDC = common dso_local global i32 0, align 4
@MGTPTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_clear_hw_cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clear_hw_cntrs(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load i32, i32* @CRCERRS, align 4
  %5 = call i32 @er32(i32 %4)
  store volatile i32 %5, i32* %3, align 4
  %6 = load i32, i32* @SYMERRS, align 4
  %7 = call i32 @er32(i32 %6)
  store volatile i32 %7, i32* %3, align 4
  %8 = load i32, i32* @MPC, align 4
  %9 = call i32 @er32(i32 %8)
  store volatile i32 %9, i32* %3, align 4
  %10 = load i32, i32* @SCC, align 4
  %11 = call i32 @er32(i32 %10)
  store volatile i32 %11, i32* %3, align 4
  %12 = load i32, i32* @ECOL, align 4
  %13 = call i32 @er32(i32 %12)
  store volatile i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MCC, align 4
  %15 = call i32 @er32(i32 %14)
  store volatile i32 %15, i32* %3, align 4
  %16 = load i32, i32* @LATECOL, align 4
  %17 = call i32 @er32(i32 %16)
  store volatile i32 %17, i32* %3, align 4
  %18 = load i32, i32* @COLC, align 4
  %19 = call i32 @er32(i32 %18)
  store volatile i32 %19, i32* %3, align 4
  %20 = load i32, i32* @DC, align 4
  %21 = call i32 @er32(i32 %20)
  store volatile i32 %21, i32* %3, align 4
  %22 = load i32, i32* @SEC, align 4
  %23 = call i32 @er32(i32 %22)
  store volatile i32 %23, i32* %3, align 4
  %24 = load i32, i32* @RLEC, align 4
  %25 = call i32 @er32(i32 %24)
  store volatile i32 %25, i32* %3, align 4
  %26 = load i32, i32* @XONRXC, align 4
  %27 = call i32 @er32(i32 %26)
  store volatile i32 %27, i32* %3, align 4
  %28 = load i32, i32* @XONTXC, align 4
  %29 = call i32 @er32(i32 %28)
  store volatile i32 %29, i32* %3, align 4
  %30 = load i32, i32* @XOFFRXC, align 4
  %31 = call i32 @er32(i32 %30)
  store volatile i32 %31, i32* %3, align 4
  %32 = load i32, i32* @XOFFTXC, align 4
  %33 = call i32 @er32(i32 %32)
  store volatile i32 %33, i32* %3, align 4
  %34 = load i32, i32* @FCRUC, align 4
  %35 = call i32 @er32(i32 %34)
  store volatile i32 %35, i32* %3, align 4
  %36 = load i32, i32* @PRC64, align 4
  %37 = call i32 @er32(i32 %36)
  store volatile i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PRC127, align 4
  %39 = call i32 @er32(i32 %38)
  store volatile i32 %39, i32* %3, align 4
  %40 = load i32, i32* @PRC255, align 4
  %41 = call i32 @er32(i32 %40)
  store volatile i32 %41, i32* %3, align 4
  %42 = load i32, i32* @PRC511, align 4
  %43 = call i32 @er32(i32 %42)
  store volatile i32 %43, i32* %3, align 4
  %44 = load i32, i32* @PRC1023, align 4
  %45 = call i32 @er32(i32 %44)
  store volatile i32 %45, i32* %3, align 4
  %46 = load i32, i32* @PRC1522, align 4
  %47 = call i32 @er32(i32 %46)
  store volatile i32 %47, i32* %3, align 4
  %48 = load i32, i32* @GPRC, align 4
  %49 = call i32 @er32(i32 %48)
  store volatile i32 %49, i32* %3, align 4
  %50 = load i32, i32* @BPRC, align 4
  %51 = call i32 @er32(i32 %50)
  store volatile i32 %51, i32* %3, align 4
  %52 = load i32, i32* @MPRC, align 4
  %53 = call i32 @er32(i32 %52)
  store volatile i32 %53, i32* %3, align 4
  %54 = load i32, i32* @GPTC, align 4
  %55 = call i32 @er32(i32 %54)
  store volatile i32 %55, i32* %3, align 4
  %56 = load i32, i32* @GORCL, align 4
  %57 = call i32 @er32(i32 %56)
  store volatile i32 %57, i32* %3, align 4
  %58 = load i32, i32* @GORCH, align 4
  %59 = call i32 @er32(i32 %58)
  store volatile i32 %59, i32* %3, align 4
  %60 = load i32, i32* @GOTCL, align 4
  %61 = call i32 @er32(i32 %60)
  store volatile i32 %61, i32* %3, align 4
  %62 = load i32, i32* @GOTCH, align 4
  %63 = call i32 @er32(i32 %62)
  store volatile i32 %63, i32* %3, align 4
  %64 = load i32, i32* @RNBC, align 4
  %65 = call i32 @er32(i32 %64)
  store volatile i32 %65, i32* %3, align 4
  %66 = load i32, i32* @RUC, align 4
  %67 = call i32 @er32(i32 %66)
  store volatile i32 %67, i32* %3, align 4
  %68 = load i32, i32* @RFC, align 4
  %69 = call i32 @er32(i32 %68)
  store volatile i32 %69, i32* %3, align 4
  %70 = load i32, i32* @ROC, align 4
  %71 = call i32 @er32(i32 %70)
  store volatile i32 %71, i32* %3, align 4
  %72 = load i32, i32* @RJC, align 4
  %73 = call i32 @er32(i32 %72)
  store volatile i32 %73, i32* %3, align 4
  %74 = load i32, i32* @TORL, align 4
  %75 = call i32 @er32(i32 %74)
  store volatile i32 %75, i32* %3, align 4
  %76 = load i32, i32* @TORH, align 4
  %77 = call i32 @er32(i32 %76)
  store volatile i32 %77, i32* %3, align 4
  %78 = load i32, i32* @TOTL, align 4
  %79 = call i32 @er32(i32 %78)
  store volatile i32 %79, i32* %3, align 4
  %80 = load i32, i32* @TOTH, align 4
  %81 = call i32 @er32(i32 %80)
  store volatile i32 %81, i32* %3, align 4
  %82 = load i32, i32* @TPR, align 4
  %83 = call i32 @er32(i32 %82)
  store volatile i32 %83, i32* %3, align 4
  %84 = load i32, i32* @TPT, align 4
  %85 = call i32 @er32(i32 %84)
  store volatile i32 %85, i32* %3, align 4
  %86 = load i32, i32* @PTC64, align 4
  %87 = call i32 @er32(i32 %86)
  store volatile i32 %87, i32* %3, align 4
  %88 = load i32, i32* @PTC127, align 4
  %89 = call i32 @er32(i32 %88)
  store volatile i32 %89, i32* %3, align 4
  %90 = load i32, i32* @PTC255, align 4
  %91 = call i32 @er32(i32 %90)
  store volatile i32 %91, i32* %3, align 4
  %92 = load i32, i32* @PTC511, align 4
  %93 = call i32 @er32(i32 %92)
  store volatile i32 %93, i32* %3, align 4
  %94 = load i32, i32* @PTC1023, align 4
  %95 = call i32 @er32(i32 %94)
  store volatile i32 %95, i32* %3, align 4
  %96 = load i32, i32* @PTC1522, align 4
  %97 = call i32 @er32(i32 %96)
  store volatile i32 %97, i32* %3, align 4
  %98 = load i32, i32* @MPTC, align 4
  %99 = call i32 @er32(i32 %98)
  store volatile i32 %99, i32* %3, align 4
  %100 = load i32, i32* @BPTC, align 4
  %101 = call i32 @er32(i32 %100)
  store volatile i32 %101, i32* %3, align 4
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @e1000_82543, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %1
  br label %134

108:                                              ; preds = %1
  %109 = load i32, i32* @ALGNERRC, align 4
  %110 = call i32 @er32(i32 %109)
  store volatile i32 %110, i32* %3, align 4
  %111 = load i32, i32* @RXERRC, align 4
  %112 = call i32 @er32(i32 %111)
  store volatile i32 %112, i32* %3, align 4
  %113 = load i32, i32* @TNCRS, align 4
  %114 = call i32 @er32(i32 %113)
  store volatile i32 %114, i32* %3, align 4
  %115 = load i32, i32* @CEXTERR, align 4
  %116 = call i32 @er32(i32 %115)
  store volatile i32 %116, i32* %3, align 4
  %117 = load i32, i32* @TSCTC, align 4
  %118 = call i32 @er32(i32 %117)
  store volatile i32 %118, i32* %3, align 4
  %119 = load i32, i32* @TSCTFC, align 4
  %120 = call i32 @er32(i32 %119)
  store volatile i32 %120, i32* %3, align 4
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @e1000_82544, align 8
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  br label %134

127:                                              ; preds = %108
  %128 = load i32, i32* @MGTPRC, align 4
  %129 = call i32 @er32(i32 %128)
  store volatile i32 %129, i32* %3, align 4
  %130 = load i32, i32* @MGTPDC, align 4
  %131 = call i32 @er32(i32 %130)
  store volatile i32 %131, i32* %3, align 4
  %132 = load i32, i32* @MGTPTC, align 4
  %133 = call i32 @er32(i32 %132)
  store volatile i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %127, %126, %107
  ret void
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
