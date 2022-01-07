; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_ets_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_ets_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }

@MLXSW_REG_QEEC_HIERARCY_GROUP = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLXSW_REG_QEEC_HIERARCY_SUBGROUP = common dso_local global i32 0, align 4
@MLXSW_REG_QEEC_HIERARCY_TC = common dso_local global i32 0, align 4
@MLXSW_REG_QEEC_HIERARCY_PORT = common dso_local global i32 0, align 4
@MLXSW_REG_QEEC_MAS_DIS = common dso_local global i32 0, align 4
@MLXSW_REG_QEEC_MIS_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_ets_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_ets_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %7 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_GROUP, align 4
  %8 = call i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port* %6, i32 %7, i32 0, i32 0, i32 0, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %160

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %20 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_SUBGROUP, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port* %19, i32 %20, i32 %21, i32 0, i32 0, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %160

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %14

31:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %38 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_TC, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port* %37, i32 %38, i32 %39, i32 %40, i32 0, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %160

46:                                               ; preds = %36
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %48 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_TC, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port* %47, i32 %48, i32 %50, i32 %51, i32 1, i32 100)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %160

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %32

61:                                               ; preds = %32
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %63 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_PORT, align 4
  %64 = load i32, i32* @MLXSW_REG_QEEC_MAS_DIS, align 4
  %65 = call i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port* %62, i32 %63, i32 0, i32 0, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %160

70:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %77 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_SUBGROUP, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @MLXSW_REG_QEEC_MAS_DIS, align 4
  %80 = call i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port* %76, i32 %77, i32 %78, i32 0, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %160

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %71

89:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %118, %89
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %90
  %95 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %96 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_TC, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MLXSW_REG_QEEC_MAS_DIS, align 4
  %100 = call i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port* %95, i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %160

105:                                              ; preds = %94
  %106 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %107 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_TC, align 4
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @MLXSW_REG_QEEC_MAS_DIS, align 4
  %112 = call i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port* %106, i32 %107, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %160

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %90

121:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %139, %121
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %128 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_TC, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @MLXSW_REG_QEEC_MIS_MIN, align 4
  %133 = call i32 @mlxsw_sp_port_min_bw_set(%struct.mlxsw_sp_port* %127, i32 %128, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %160

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %122

142:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %156, %142
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port* %148, i32 %149, i32 0)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %160

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %143

159:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %153, %136, %115, %103, %83, %68, %55, %44, %25, %11
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @mlxsw_sp_port_ets_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_min_bw_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_prio_tc_set(%struct.mlxsw_sp_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
