; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_mrqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_mrqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, i32*, i32, %struct.igc_hw }
%struct.igc_hw = type { i32 }

@IGC_RETA_SIZE = common dso_local global i32 0, align 4
@IGC_RXCSUM = common dso_local global i32 0, align 4
@IGC_RXCSUM_PCSD = common dso_local global i32 0, align 4
@IGC_RXCSUM_CRCOFL = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV6_TCP_EX = common dso_local global i32 0, align 4
@IGC_FLAG_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IGC_FLAG_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@IGC_MRQC_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@IGC_MRQC_ENABLE_RSS_MQ = common dso_local global i32 0, align 4
@IGC_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_setup_mrqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_setup_mrqc(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %9, i32 0, i32 4
  store %struct.igc_hw* %10, %struct.igc_hw** %3, align 8
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %12 = call i32 @netdev_rss_key_fill(i32* %11, i32 40)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %24, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @IGC_RSSRK(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wr32(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %31 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IGC_RETA_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @IGC_RETA_SIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %27
  %61 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %62 = call i32 @igc_write_rss_indir_tbl(%struct.igc_adapter* %61)
  %63 = load i32, i32* @IGC_RXCSUM, align 4
  %64 = call i32 @rd32(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @IGC_RXCSUM_PCSD, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @IGC_RXCSUM_CRCOFL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @IGC_RXCSUM, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @wr32(i32 %71, i32 %72)
  %74 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV4, align 4
  %75 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV6, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV6_TCP_EX, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IGC_FLAG_RSS_FIELD_IPV4_UDP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %60
  %90 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV4_UDP, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %60
  %94 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IGC_FLAG_RSS_FIELD_IPV6_UDP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @IGC_MRQC_RSS_FIELD_IPV6_UDP, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* @IGC_MRQC_ENABLE_RSS_MQ, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @IGC_MRQC, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @wr32(i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @IGC_RSSRK(i32) #1

declare dso_local i32 @igc_write_rss_indir_tbl(%struct.igc_adapter*) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
