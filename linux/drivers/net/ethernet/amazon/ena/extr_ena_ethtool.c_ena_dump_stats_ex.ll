; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_dump_stats_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_dump_stats_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can't get stats num\0A\00", align 1
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to alloc strings_buf\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to allocate data buf\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i8*)* @ena_dump_stats_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_dump_stats_ex(%struct.ena_adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load i32, i32* @ETH_SS_STATS, align 4
  %16 = call i32 @ena_get_sset_count(%struct.net_device* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %21 = load i32, i32* @drv, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %20, i32 %21, %struct.net_device* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %141

24:                                               ; preds = %2
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i8* @devm_kcalloc(i32* %28, i32 %29, i32 %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %37 = load i32, i32* @drv, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %36, i32 %37, %struct.net_device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %141

40:                                               ; preds = %24
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i8* @devm_kcalloc(i32* %44, i32 %45, i32 1, i32 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %40
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %52 = load i32, i32* @drv, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %51, i32 %52, %struct.net_device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @devm_kfree(i32* %58, i8* %59)
  br label %141

61:                                               ; preds = %40
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load i32, i32* @ETH_SS_STATS, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @ena_get_strings(%struct.net_device* %62, i32 %63, i8* %64)
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @ena_get_ethtool_stats(%struct.net_device* %66, i32* null, i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %102

71:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @snprintf(i8* %77, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8 signext %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %4, align 8
  br label %98

98:                                               ; preds = %76
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %72

101:                                              ; preds = %72
  br label %128

102:                                              ; preds = %61
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  %108 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %109 = load i32, i32* @drv, align 4
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %108, i32 %109, %struct.net_device* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %116, i32 %122)
  br label %124

124:                                              ; preds = %107
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %103

127:                                              ; preds = %103
  br label %128

128:                                              ; preds = %127, %101
  %129 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @devm_kfree(i32* %132, i8* %133)
  %135 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @devm_kfree(i32* %138, i8* %139)
  br label %141

141:                                              ; preds = %128, %50, %35, %19
  ret void
}

declare dso_local i32 @ena_get_sset_count(%struct.net_device*, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i8*) #1

declare dso_local i32 @ena_get_strings(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @ena_get_ethtool_stats(%struct.net_device*, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
