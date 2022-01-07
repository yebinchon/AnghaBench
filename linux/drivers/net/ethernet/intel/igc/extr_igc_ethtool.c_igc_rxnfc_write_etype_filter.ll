; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_rxnfc_write_etype_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_rxnfc_write_etype_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32*, %struct.TYPE_3__*, %struct.igc_hw }
%struct.TYPE_3__ = type { i32 }
%struct.igc_hw = type { i32 }
%struct.igc_nfc_filter = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAX_ETYPE_FILTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"ethtool -N: etype filters are all used.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHER_TYPE_FULL_MASK = common dso_local global i32 0, align 4
@IGC_ETQF_FILTER_ENABLE = common dso_local global i32 0, align 4
@IGC_ETQF_ETYPE_MASK = common dso_local global i32 0, align 4
@IGC_ETQF_QUEUE_MASK = common dso_local global i32 0, align 4
@IGC_ETQF_QUEUE_SHIFT = common dso_local global i32 0, align 4
@IGC_ETQF_QUEUE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_adapter*, %struct.igc_nfc_filter*)* @igc_rxnfc_write_etype_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_rxnfc_write_etype_filter(%struct.igc_adapter* %0, %struct.igc_nfc_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igc_adapter*, align 8
  %5 = alloca %struct.igc_nfc_filter*, align 8
  %6 = alloca %struct.igc_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %4, align 8
  store %struct.igc_nfc_filter* %1, %struct.igc_nfc_filter** %5, align 8
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 2
  store %struct.igc_hw* %11, %struct.igc_hw** %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MAX_ETYPE_FILTER, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %12

29:                                               ; preds = %24, %12
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MAX_ETYPE_FILTER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %29
  %42 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 1, i32* %46, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @IGC_ETQF(i64 %47)
  %49 = call i32 @rd32(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %5, align 8
  %51 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ETHER_TYPE_FULL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @ntohs(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @IGC_ETQF_FILTER_ENABLE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @IGC_ETQF_ETYPE_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IGC_ETQF_ETYPE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @IGC_ETQF_QUEUE_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %5, align 8
  %74 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IGC_ETQF_QUEUE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* @IGC_ETQF_QUEUE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @IGC_ETQF_QUEUE_ENABLE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @IGC_ETQF(i64 %85)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @wr32(i32 %86, i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %5, align 8
  %91 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %41, %33
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @IGC_ETQF(i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
