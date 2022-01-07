; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_prio_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_prio_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_qdisc* }
%struct.mlxsw_sp_qdisc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)* }
%struct.tc_prio_qopt_offload_params = type { i32, i32* }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i8*)* @mlxsw_sp_qdisc_prio_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_prio_replace(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_prio_qopt_offload_params*, align 8
  %9 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.tc_prio_qopt_offload_params*
  store %struct.tc_prio_qopt_offload_params* %17, %struct.tc_prio_qopt_offload_params** %8, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %115, %3
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.tc_prio_qopt_offload_params*, %struct.tc_prio_qopt_offload_params** %8, align 8
  %21 = getelementptr inbounds %struct.tc_prio_qopt_offload_params, %struct.tc_prio_qopt_offload_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %118

24:                                               ; preds = %18
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @MLXSW_SP_PRIO_BAND_TO_TCLASS(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 0
  %29 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %29, i64 %31
  store %struct.mlxsw_sp_qdisc* %32, %struct.mlxsw_sp_qdisc** %9, align 8
  %33 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %76, %24
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load %struct.tc_prio_qopt_offload_params*, %struct.tc_prio_qopt_offload_params** %8, align 8
  %44 = getelementptr inbounds %struct.tc_prio_qopt_offload_params, %struct.tc_prio_qopt_offload_params* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %76

65:                                               ; preds = %52
  %66 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port* %66, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %4, align 4
  br label %141

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %42
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %38

79:                                               ; preds = %38
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %79
  %86 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = icmp ne %struct.TYPE_3__* %88, null
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)*, i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)** %94, align 8
  %96 = icmp ne i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  %102 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)*, i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)** %105, align 8
  %107 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %108 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %109 = call i32 %106(%struct.mlxsw_sp_port* %107, %struct.mlxsw_sp_qdisc* %108)
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %97, %90, %85, %79
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %18

118:                                              ; preds = %18
  br label %119

119:                                              ; preds = %137, %118
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @MLXSW_SP_PRIO_BAND_TO_TCLASS(i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %127 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %126, i32 0, i32 0
  %128 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %128, i64 %130
  store %struct.mlxsw_sp_qdisc* %131, %struct.mlxsw_sp_qdisc** %9, align 8
  %132 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %133 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %135 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %136 = call i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port* %134, %struct.mlxsw_sp_qdisc* %135)
  br label %137

137:                                              ; preds = %123
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %119

140:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %72
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @MLXSW_SP_PRIO_BAND_TO_TCLASS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
