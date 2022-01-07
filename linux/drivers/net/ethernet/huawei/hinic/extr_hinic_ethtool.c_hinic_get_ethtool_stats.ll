; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.hinic_dev = type { i32 }
%struct.hinic_vport_stats = type { i32 }
%struct.hinic_phy_port_stats = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to get vport stats from firmware\0A\00", align 1
@hinic_function_stats = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@hinic_port_stats = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to get port stats from firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @hinic_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hinic_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hinic_dev*, align 8
  %8 = alloca %struct.hinic_vport_stats, align 4
  %9 = alloca %struct.hinic_phy_port_stats*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %14)
  store %struct.hinic_dev* %15, %struct.hinic_dev** %7, align 8
  %16 = bitcast %struct.hinic_vport_stats* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %18 = call i32 @hinic_get_vport_stats(%struct.hinic_dev* %17, %struct.hinic_vport_stats* %8)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %23 = load i32, i32* @drv, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_err(%struct.hinic_dev* %22, i32 %23, %struct.net_device* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %3
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_function_stats, align 8
  %30 = call i64 @ARRAY_LEN(%struct.TYPE_4__* %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = bitcast %struct.hinic_vport_stats* %8 to i8*
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_function_stats, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %33, i64 %39
  store i8* %40, i8** %12, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_function_stats, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load i8*, i8** %12, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  br label %56

52:                                               ; preds = %32
  %53 = load i8*, i8** %12, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ]
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %27

66:                                               ; preds = %27
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.hinic_phy_port_stats* @kzalloc(i32 4, i32 %67)
  store %struct.hinic_phy_port_stats* %68, %struct.hinic_phy_port_stats** %9, align 8
  %69 = load %struct.hinic_phy_port_stats*, %struct.hinic_phy_port_stats** %9, align 8
  %70 = icmp ne %struct.hinic_phy_port_stats* %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_port_stats, align 8
  %76 = call i64 @ARRAY_LEN(%struct.TYPE_4__* %75)
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memset(i32* %74, i32 0, i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_port_stats, align 8
  %81 = call i64 @ARRAY_LEN(%struct.TYPE_4__* %80)
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %139

84:                                               ; preds = %66
  %85 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %86 = load %struct.hinic_phy_port_stats*, %struct.hinic_phy_port_stats** %9, align 8
  %87 = call i32 @hinic_get_phy_port_stats(%struct.hinic_dev* %85, %struct.hinic_phy_port_stats* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %92 = load i32, i32* @drv, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = call i32 @netif_err(%struct.hinic_dev* %91, i32 %92, %struct.net_device* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %84
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %131, %95
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_port_stats, align 8
  %99 = call i64 @ARRAY_LEN(%struct.TYPE_4__* %98)
  %100 = icmp ult i64 %97, %99
  br i1 %100, label %101, label %136

101:                                              ; preds = %96
  %102 = load %struct.hinic_phy_port_stats*, %struct.hinic_phy_port_stats** %9, align 8
  %103 = bitcast %struct.hinic_phy_port_stats* %102 to i8*
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_port_stats, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %103, i64 %109
  store i8* %110, i8** %12, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_port_stats, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %116, 4
  br i1 %117, label %118, label %122

118:                                              ; preds = %101
  %119 = load i8*, i8** %12, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %120, align 4
  br label %126

122:                                              ; preds = %101
  %123 = load i8*, i8** %12, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 4
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i32 [ %121, %118 ], [ %125, %122 ]
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %126
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %10, align 8
  br label %96

136:                                              ; preds = %96
  %137 = load %struct.hinic_phy_port_stats*, %struct.hinic_phy_port_stats** %9, align 8
  %138 = call i32 @kfree(%struct.hinic_phy_port_stats* %137)
  br label %139

139:                                              ; preds = %136, %71
  %140 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = call i32 @get_drv_queue_stats(%struct.hinic_dev* %140, i32* %143)
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @hinic_get_vport_stats(%struct.hinic_dev*, %struct.hinic_vport_stats*) #1

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @ARRAY_LEN(%struct.TYPE_4__*) #1

declare dso_local %struct.hinic_phy_port_stats* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hinic_get_phy_port_stats(%struct.hinic_dev*, %struct.hinic_phy_port_stats*) #1

declare dso_local i32 @kfree(%struct.hinic_phy_port_stats*) #1

declare dso_local i32 @get_drv_queue_stats(%struct.hinic_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
