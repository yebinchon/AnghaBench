; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_clear_hw_cntrs_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_clear_hw_cntrs_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_PRC64 = common dso_local global i32 0, align 4
@E1000_PRC127 = common dso_local global i32 0, align 4
@E1000_PRC255 = common dso_local global i32 0, align 4
@E1000_PRC511 = common dso_local global i32 0, align 4
@E1000_PRC1023 = common dso_local global i32 0, align 4
@E1000_PRC1522 = common dso_local global i32 0, align 4
@E1000_PTC64 = common dso_local global i32 0, align 4
@E1000_PTC127 = common dso_local global i32 0, align 4
@E1000_PTC255 = common dso_local global i32 0, align 4
@E1000_PTC511 = common dso_local global i32 0, align 4
@E1000_PTC1023 = common dso_local global i32 0, align 4
@E1000_PTC1522 = common dso_local global i32 0, align 4
@E1000_ALGNERRC = common dso_local global i32 0, align 4
@E1000_RXERRC = common dso_local global i32 0, align 4
@E1000_TNCRS = common dso_local global i32 0, align 4
@E1000_CEXTERR = common dso_local global i32 0, align 4
@E1000_TSCTC = common dso_local global i32 0, align 4
@E1000_TSCTFC = common dso_local global i32 0, align 4
@E1000_MGTPRC = common dso_local global i32 0, align 4
@E1000_MGTPDC = common dso_local global i32 0, align 4
@E1000_MGTPTC = common dso_local global i32 0, align 4
@E1000_IAC = common dso_local global i32 0, align 4
@E1000_ICRXOC = common dso_local global i32 0, align 4
@E1000_ICRXPTC = common dso_local global i32 0, align 4
@E1000_ICRXATC = common dso_local global i32 0, align 4
@E1000_ICTXPTC = common dso_local global i32 0, align 4
@E1000_ICTXATC = common dso_local global i32 0, align 4
@E1000_ICTXQEC = common dso_local global i32 0, align 4
@E1000_ICTXQMTC = common dso_local global i32 0, align 4
@E1000_ICRXDMTC = common dso_local global i32 0, align 4
@E1000_CBTMPC = common dso_local global i32 0, align 4
@E1000_HTDPMC = common dso_local global i32 0, align 4
@E1000_CBRMPC = common dso_local global i32 0, align 4
@E1000_RPTHC = common dso_local global i32 0, align 4
@E1000_HGPTC = common dso_local global i32 0, align 4
@E1000_HTCBDPC = common dso_local global i32 0, align 4
@E1000_HGORCL = common dso_local global i32 0, align 4
@E1000_HGORCH = common dso_local global i32 0, align 4
@E1000_HGOTCL = common dso_local global i32 0, align 4
@E1000_HGOTCH = common dso_local global i32 0, align 4
@E1000_LENERRS = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_SCVPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @igb_clear_hw_cntrs_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_clear_hw_cntrs_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %4 = call i32 @igb_clear_hw_cntrs_base(%struct.e1000_hw* %3)
  %5 = load i32, i32* @E1000_PRC64, align 4
  %6 = call i32 @rd32(i32 %5)
  %7 = load i32, i32* @E1000_PRC127, align 4
  %8 = call i32 @rd32(i32 %7)
  %9 = load i32, i32* @E1000_PRC255, align 4
  %10 = call i32 @rd32(i32 %9)
  %11 = load i32, i32* @E1000_PRC511, align 4
  %12 = call i32 @rd32(i32 %11)
  %13 = load i32, i32* @E1000_PRC1023, align 4
  %14 = call i32 @rd32(i32 %13)
  %15 = load i32, i32* @E1000_PRC1522, align 4
  %16 = call i32 @rd32(i32 %15)
  %17 = load i32, i32* @E1000_PTC64, align 4
  %18 = call i32 @rd32(i32 %17)
  %19 = load i32, i32* @E1000_PTC127, align 4
  %20 = call i32 @rd32(i32 %19)
  %21 = load i32, i32* @E1000_PTC255, align 4
  %22 = call i32 @rd32(i32 %21)
  %23 = load i32, i32* @E1000_PTC511, align 4
  %24 = call i32 @rd32(i32 %23)
  %25 = load i32, i32* @E1000_PTC1023, align 4
  %26 = call i32 @rd32(i32 %25)
  %27 = load i32, i32* @E1000_PTC1522, align 4
  %28 = call i32 @rd32(i32 %27)
  %29 = load i32, i32* @E1000_ALGNERRC, align 4
  %30 = call i32 @rd32(i32 %29)
  %31 = load i32, i32* @E1000_RXERRC, align 4
  %32 = call i32 @rd32(i32 %31)
  %33 = load i32, i32* @E1000_TNCRS, align 4
  %34 = call i32 @rd32(i32 %33)
  %35 = load i32, i32* @E1000_CEXTERR, align 4
  %36 = call i32 @rd32(i32 %35)
  %37 = load i32, i32* @E1000_TSCTC, align 4
  %38 = call i32 @rd32(i32 %37)
  %39 = load i32, i32* @E1000_TSCTFC, align 4
  %40 = call i32 @rd32(i32 %39)
  %41 = load i32, i32* @E1000_MGTPRC, align 4
  %42 = call i32 @rd32(i32 %41)
  %43 = load i32, i32* @E1000_MGTPDC, align 4
  %44 = call i32 @rd32(i32 %43)
  %45 = load i32, i32* @E1000_MGTPTC, align 4
  %46 = call i32 @rd32(i32 %45)
  %47 = load i32, i32* @E1000_IAC, align 4
  %48 = call i32 @rd32(i32 %47)
  %49 = load i32, i32* @E1000_ICRXOC, align 4
  %50 = call i32 @rd32(i32 %49)
  %51 = load i32, i32* @E1000_ICRXPTC, align 4
  %52 = call i32 @rd32(i32 %51)
  %53 = load i32, i32* @E1000_ICRXATC, align 4
  %54 = call i32 @rd32(i32 %53)
  %55 = load i32, i32* @E1000_ICTXPTC, align 4
  %56 = call i32 @rd32(i32 %55)
  %57 = load i32, i32* @E1000_ICTXATC, align 4
  %58 = call i32 @rd32(i32 %57)
  %59 = load i32, i32* @E1000_ICTXQEC, align 4
  %60 = call i32 @rd32(i32 %59)
  %61 = load i32, i32* @E1000_ICTXQMTC, align 4
  %62 = call i32 @rd32(i32 %61)
  %63 = load i32, i32* @E1000_ICRXDMTC, align 4
  %64 = call i32 @rd32(i32 %63)
  %65 = load i32, i32* @E1000_CBTMPC, align 4
  %66 = call i32 @rd32(i32 %65)
  %67 = load i32, i32* @E1000_HTDPMC, align 4
  %68 = call i32 @rd32(i32 %67)
  %69 = load i32, i32* @E1000_CBRMPC, align 4
  %70 = call i32 @rd32(i32 %69)
  %71 = load i32, i32* @E1000_RPTHC, align 4
  %72 = call i32 @rd32(i32 %71)
  %73 = load i32, i32* @E1000_HGPTC, align 4
  %74 = call i32 @rd32(i32 %73)
  %75 = load i32, i32* @E1000_HTCBDPC, align 4
  %76 = call i32 @rd32(i32 %75)
  %77 = load i32, i32* @E1000_HGORCL, align 4
  %78 = call i32 @rd32(i32 %77)
  %79 = load i32, i32* @E1000_HGORCH, align 4
  %80 = call i32 @rd32(i32 %79)
  %81 = load i32, i32* @E1000_HGOTCL, align 4
  %82 = call i32 @rd32(i32 %81)
  %83 = load i32, i32* @E1000_HGOTCH, align 4
  %84 = call i32 @rd32(i32 %83)
  %85 = load i32, i32* @E1000_LENERRS, align 4
  %86 = call i32 @rd32(i32 %85)
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %1
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = call i64 @igb_sgmii_active_82575(%struct.e1000_hw* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %1
  %98 = load i32, i32* @E1000_SCVPC, align 4
  %99 = call i32 @rd32(i32 %98)
  br label %100

100:                                              ; preds = %97, %93
  ret void
}

declare dso_local i32 @igb_clear_hw_cntrs_base(%struct.e1000_hw*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @igb_sgmii_active_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
