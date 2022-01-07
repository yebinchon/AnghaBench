; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_mtpppc_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_mtpppc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp*, i32, %struct.TYPE_2__ }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_port**, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to increase parsing depth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32, i32)* @mlxsw_sp1_ptp_mtpppc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_ptp_mtpppc_update(%struct.mlxsw_sp_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %17

17:                                               ; preds = %68, %3
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlxsw_core_max_ports(i32 %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 0
  %27 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %27, i64 %29
  %31 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %30, align 8
  store %struct.mlxsw_sp_port* %31, %struct.mlxsw_sp_port** %9, align 8
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %33 = icmp ne %struct.mlxsw_sp_port* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %34, %24
  %48 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %49 = icmp ne %struct.mlxsw_sp_port* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %53 = icmp ne %struct.mlxsw_sp_port* %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %54, %50, %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %85 = call i32 @mlxsw_sp_nve_inc_parsing_depth_get(%struct.mlxsw_sp* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netdev_err(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %117

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %80, %77, %74
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104, %101
  %108 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %109 = call i32 @mlxsw_sp_nve_inc_parsing_depth_put(%struct.mlxsw_sp* %108)
  br label %110

110:                                              ; preds = %107, %104, %98, %95
  %111 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %111, i32 0, i32 0
  %113 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @mlxsw_sp1_ptp_mtpppc_set(%struct.mlxsw_sp* %113, i32 %114, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %110, %88
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32 @mlxsw_sp_nve_inc_parsing_depth_get(%struct.mlxsw_sp*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_nve_inc_parsing_depth_put(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp1_ptp_mtpppc_set(%struct.mlxsw_sp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
