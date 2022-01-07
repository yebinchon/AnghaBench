; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qed_update_vport_params = type { i32, i32 }
%struct.qede_dev = type { i64, i32, %struct.TYPE_6__*, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (i32, %struct.qed_update_vport_params*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"RSS configuration is not supported for 100G devices\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@QED_RSS_IND_TABLE_SIZE = common dso_local global i32 0, align 4
@QEDE_RSS_INDIR_INITED = common dso_local global i32 0, align 4
@QEDE_RSS_KEY_INITED = common dso_local global i32 0, align 4
@QEDE_STATE_OPEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @qede_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qed_update_vport_params*, align 8
  %11 = alloca %struct.qede_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %14)
  store %struct.qede_dev* %15, %struct.qede_dev** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %17 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %24 = call i32 @DP_INFO(%struct.qede_dev* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %129

27:                                               ; preds = %4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %129

38:                                               ; preds = %31, %27
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64*, i64** %8, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %129

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @QED_RSS_IND_TABLE_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %60 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* @QEDE_RSS_INDIR_INITED, align 4
  %70 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %71 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %45
  %75 = load i64*, i64** %8, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %79 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %78, i32 0, i32 4
  %80 = load i64*, i64** %8, align 8
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = call i32 @qede_get_rxfh_key_size(%struct.net_device* %81)
  %83 = call i32 @memcpy(i32* %79, i64* %80, i32 %82)
  %84 = load i32, i32* @QEDE_RSS_KEY_INITED, align 4
  %85 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %86 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %77, %74
  %90 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %91 = call i32 @__qede_lock(%struct.qede_dev* %90)
  %92 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %93 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %89
  %98 = call %struct.qed_update_vport_params* @vzalloc(i32 8)
  store %struct.qed_update_vport_params* %98, %struct.qed_update_vport_params** %10, align 8
  %99 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %10, align 8
  %100 = icmp ne %struct.qed_update_vport_params* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %103 = call i32 @__qede_unlock(%struct.qede_dev* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %129

106:                                              ; preds = %97
  %107 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %108 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %10, align 8
  %109 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %108, i32 0, i32 1
  %110 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %10, align 8
  %111 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %110, i32 0, i32 0
  %112 = call i32 @qede_fill_rss_params(%struct.qede_dev* %107, i32* %109, i32* %111)
  %113 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %114 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (i32, %struct.qed_update_vport_params*)*, i32 (i32, %struct.qed_update_vport_params*)** %116, align 8
  %118 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %119 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %10, align 8
  %122 = call i32 %117(i32 %120, %struct.qed_update_vport_params* %121)
  store i32 %122, i32* %13, align 4
  %123 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %10, align 8
  %124 = call i32 @vfree(%struct.qed_update_vport_params* %123)
  br label %125

125:                                              ; preds = %106, %89
  %126 = load %struct.qede_dev*, %struct.qede_dev** %11, align 8
  %127 = call i32 @__qede_unlock(%struct.qede_dev* %126)
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %101, %44, %35, %22
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @qede_get_rxfh_key_size(%struct.net_device*) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local %struct.qed_update_vport_params* @vzalloc(i32) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

declare dso_local i32 @qede_fill_rss_params(%struct.qede_dev*, i32*, i32*) #1

declare dso_local i32 @vfree(%struct.qed_update_vport_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
