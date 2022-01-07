; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_write_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_write_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64, i32, i32, %struct.adapter* }
%struct.adapter = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sge_eth_rxq* }
%struct.sge_eth_rxq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F = common dso_local global i32 0, align 4
@FW_RSS_VI_CONFIG_CMD_UDPEN_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_write_rss(%struct.port_info* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.sge_eth_rxq*, align 8
  store %struct.port_info* %0, %struct.port_info** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.port_info*, %struct.port_info** %4, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 3
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %9, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %16, align 8
  %18 = load %struct.port_info*, %struct.port_info** %4, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %17, i64 %20
  store %struct.sge_eth_rxq* %21, %struct.sge_eth_rxq** %10, align 8
  %22 = load %struct.port_info*, %struct.port_info** %4, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64* @kmalloc_array(i32 %24, i32 8, i32 %25)
  store i64* %26, i64** %6, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %99

32:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.port_info*, %struct.port_info** %4, align 8
  %36 = getelementptr inbounds %struct.port_info, %struct.port_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %10, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %40, i64 %42
  %44 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i64*, i64** %5, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %5, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.adapter*, %struct.adapter** %9, align 8
  %58 = load %struct.adapter*, %struct.adapter** %9, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.port_info*, %struct.port_info** %4, align 8
  %62 = getelementptr inbounds %struct.port_info, %struct.port_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.port_info*, %struct.port_info** %4, align 8
  %65 = getelementptr inbounds %struct.port_info, %struct.port_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = load %struct.port_info*, %struct.port_info** %4, align 8
  %69 = getelementptr inbounds %struct.port_info, %struct.port_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @t4_config_rss_range(%struct.adapter* %57, i32 %60, i32 %63, i32 0, i32 %66, i64* %67, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %56
  %75 = load %struct.adapter*, %struct.adapter** %9, align 8
  %76 = load %struct.adapter*, %struct.adapter** %9, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.port_info*, %struct.port_info** %4, align 8
  %80 = getelementptr inbounds %struct.port_info, %struct.port_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F, align 4
  %83 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @FW_RSS_VI_CONFIG_CMD_UDPEN_F, align 4
  %90 = or i32 %88, %89
  %91 = load i64*, i64** %6, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @t4_config_vi_rss(%struct.adapter* %75, i32 %78, i32 %81, i32 %90, i64 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %74, %56
  %96 = load i64*, i64** %6, align 8
  %97 = call i32 @kfree(i64* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %29
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @t4_config_rss_range(%struct.adapter*, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @t4_config_vi_rss(%struct.adapter*, i32, i32, i32, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
