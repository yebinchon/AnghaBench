; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_dump_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i64, i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CXGB4_ETH_DUMP_NONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CUDBG_MAX_ENTITY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)* @get_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dump_data(%struct.net_device* %0, %struct.ethtool_dump* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_dump*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.adapter* @netdev2adap(%struct.net_device* %11)
  store %struct.adapter* %12, %struct.adapter** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.adapter*, %struct.adapter** %8, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CXGB4_ETH_DUMP_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %74

22:                                               ; preds = %3
  %23 = load i32, i32* @CUDBG_MAX_ENTITY, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = add i64 4, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.adapter*, %struct.adapter** %8, align 8
  %29 = load %struct.adapter*, %struct.adapter** %8, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @cxgb4_get_dump_length(%struct.adapter* %28, i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %74

46:                                               ; preds = %22
  %47 = load %struct.adapter*, %struct.adapter** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.adapter*, %struct.adapter** %8, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @cxgb4_cudbg_collect(%struct.adapter* %47, i8* %48, i32* %9, i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %74

58:                                               ; preds = %46
  %59 = load %struct.adapter*, %struct.adapter** %8, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %64 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %67 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.adapter*, %struct.adapter** %8, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %73 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %58, %56, %43, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i64 @cxgb4_get_dump_length(%struct.adapter*, i64) #1

declare dso_local i32 @cxgb4_cudbg_collect(%struct.adapter*, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
