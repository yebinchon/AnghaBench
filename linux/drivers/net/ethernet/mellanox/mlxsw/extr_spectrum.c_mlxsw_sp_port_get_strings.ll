; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32**)* }

@MLXSW_SP_PORT_HW_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_stats = common dso_local global %struct.TYPE_10__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_rfc_2863_stats = common dso_local global %struct.TYPE_12__* null, align 8
@MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_rfc_2819_stats = common dso_local global %struct.TYPE_13__* null, align 8
@MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_rfc_3635_stats = common dso_local global %struct.TYPE_11__* null, align 8
@MLXSW_SP_PORT_HW_DISCARD_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_discard_stats = common dso_local global %struct.TYPE_14__* null, align 8
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@TC_MAX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @mlxsw_sp_port_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %10)
  store %struct.mlxsw_sp_port* %11, %struct.mlxsw_sp_port** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %155 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MLXSW_SP_PORT_HW_STATS_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mlxsw_sp_port_hw_stats, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %28 = call i32 @memcpy(i32* %20, i32 %26, i32 %27)
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %15

36:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mlxsw_sp_port_hw_rfc_2863_stats, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %50 = call i32 @memcpy(i32* %42, i32 %48, i32 %49)
  %51 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %37

58:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mlxsw_sp_port_hw_rfc_2819_stats, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %72 = call i32 @memcpy(i32* %64, i32 %70, i32 %71)
  %73 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %8, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %59

80:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlxsw_sp_port_hw_rfc_3635_stats, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %94 = call i32 @memcpy(i32* %86, i32 %92, i32 %93)
  %95 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %8, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %81

102:                                              ; preds = %81
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @MLXSW_SP_PORT_HW_DISCARD_STATS_LEN, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mlxsw_sp_port_hw_discard_stats, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %116 = call i32 @memcpy(i32* %108, i32 %114, i32 %115)
  %117 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %8, align 8
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %103

124:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %132, %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @mlxsw_sp_port_get_prio_strings(i32** %8, i32 %130)
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %125

135:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %143, %135
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @TC_MAX_QUEUE, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @mlxsw_sp_port_get_tc_strings(i32** %8, i32 %141)
  br label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %136

146:                                              ; preds = %136
  %147 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %148 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32 (i32**)*, i32 (i32**)** %152, align 8
  %154 = call i32 %153(i32** %8)
  br label %155

155:                                              ; preds = %3, %146
  ret void
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_get_prio_strings(i32**, i32) #1

declare dso_local i32 @mlxsw_sp_port_get_tc_strings(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
