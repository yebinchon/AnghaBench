; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32, %struct.be_resources, %struct.TYPE_2__* }
%struct.be_resources = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@BE_IF_FLAGS_DEFQ_RSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Max: txqs %d, rxqs %d, rss %d, eqs %d, vfs %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Max: uc-macs %d, mc-macs %d, vlans %d\0A\00", align 1
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_resources(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.be_resources, align 8
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = bitcast %struct.be_resources* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call i64 @BEx_chip(%struct.be_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = call i32 @BEx_get_resources(%struct.be_adapter* %16, %struct.be_resources* %5)
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = call i32 @be_cmd_get_func_config(%struct.be_adapter* %19, %struct.be_resources* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %105

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %41, %35, %29, %25
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %48 = call i64 @be_roce_supported(%struct.be_adapter* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 2
  br label %57

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %53, %50 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %5, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 3
  %62 = bitcast %struct.be_resources* %61 to i8*
  %63 = bitcast %struct.be_resources* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 32, i1 false)
  %64 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %65 = call i32 @be_if_cap_flags(%struct.be_adapter* %64)
  %66 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 1
  %71 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = call i32 @be_max_txqs(%struct.be_adapter* %74)
  %76 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %77 = call i32 @be_max_rxqs(%struct.be_adapter* %76)
  %78 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %79 = call i32 @be_max_rss(%struct.be_adapter* %78)
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = call i32 @be_max_nic_eqs(%struct.be_adapter* %80)
  %82 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %83 = call i32 @be_max_vfs(%struct.be_adapter* %82)
  %84 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_info(%struct.device* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %77, i32 %79, i32 %81, i32 %83)
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %87 = call i32 @be_max_uc(%struct.be_adapter* %86)
  %88 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %89 = call i32 @be_max_mc(%struct.be_adapter* %88)
  %90 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %91 = call i32 @be_max_vlans(%struct.be_adapter* %90)
  %92 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_info(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %89, i32 %91)
  %93 = load i32, i32* @u16, align 4
  %94 = call i32 (...) @netif_get_num_default_rss_queues()
  %95 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %96 = call i32 @be_max_qp_irqs(%struct.be_adapter* %95)
  %97 = call i32 @min_t(i32 %93, i32 %94, i32 %96)
  %98 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %57, %23
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #2

declare dso_local i32 @BEx_get_resources(%struct.be_adapter*, %struct.be_resources*) #2

declare dso_local i32 @be_cmd_get_func_config(%struct.be_adapter*, %struct.be_resources*) #2

declare dso_local i64 @be_roce_supported(%struct.be_adapter*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @be_if_cap_flags(%struct.be_adapter*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @be_max_txqs(%struct.be_adapter*) #2

declare dso_local i32 @be_max_rxqs(%struct.be_adapter*) #2

declare dso_local i32 @be_max_rss(%struct.be_adapter*) #2

declare dso_local i32 @be_max_nic_eqs(%struct.be_adapter*) #2

declare dso_local i32 @be_max_vfs(%struct.be_adapter*) #2

declare dso_local i32 @be_max_uc(%struct.be_adapter*) #2

declare dso_local i32 @be_max_mc(%struct.be_adapter*) #2

declare dso_local i32 @be_max_vlans(%struct.be_adapter*) #2

declare dso_local i32 @min_t(i32, i32, i32) #2

declare dso_local i32 @netif_get_num_default_rss_queues(...) #2

declare dso_local i32 @be_max_qp_irqs(%struct.be_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
