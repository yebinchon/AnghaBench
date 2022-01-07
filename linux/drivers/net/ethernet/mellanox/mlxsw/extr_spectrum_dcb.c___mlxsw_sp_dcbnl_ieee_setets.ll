; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c___mlxsw_sp_dcbnl_ieee_setets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c___mlxsw_sp_dcbnl_ieee_setets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.net_device*, %struct.TYPE_2__ }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.ieee_ets* }
%struct.ieee_ets = type { i64*, i32*, i32* }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_ETS = common dso_local global i64 0, align 8
@MLXSW_REG_QEEC_HIERARCY_SUBGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to link subgroup ETS element %d to group\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to map prio %d to TC %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.ieee_ets*)* @__mlxsw_sp_dcbnl_ieee_setets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_dcbnl_ieee_setets(%struct.mlxsw_sp_port* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.ieee_ets*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ieee_ets*, %struct.ieee_ets** %16, align 8
  store %struct.ieee_ets* %17, %struct.ieee_ets** %6, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %56, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %27 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE_8021QAZ_TSA_ETS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %37 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %44 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_SUBGROUP, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port* %43, i32 %44, i32 %45, i32 0, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %25
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %124

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %21

59:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %89, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %68 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port* %65, i32 %66, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %64
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %81 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %86)
  br label %102

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %60

92:                                               ; preds = %60
  %93 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %94 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %95 = call i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %93, %struct.ieee_ets* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %100

99:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %159

100:                                              ; preds = %98
  %101 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %77
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %119, %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %112 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port* %109, i32 %110, i32 %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  br label %105

122:                                              ; preds = %105
  %123 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %51
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %154, %124
  %128 = load i32, i32* %8, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %127
  %131 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %132 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IEEE_8021QAZ_TSA_ETS, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %142 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %13, align 4
  %148 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %149 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_SUBGROUP, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port* %148, i32 %149, i32 %150, i32 0, i32 %151, i32 %152)
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %130
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %8, align 4
  br label %127

157:                                              ; preds = %127
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %99
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port*, %struct.ieee_ets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
