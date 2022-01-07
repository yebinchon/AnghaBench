; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c___mlxsw_sib_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c___mlxsw_sib_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sib = type { %struct.mlxsw_sib_port**, i32, %struct.TYPE_4__* }
%struct.mlxsw_sib_port = type { i64, %struct.TYPE_3__, %struct.mlxsw_sib* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Port %d: Failed to set SWID\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Port %d: Failed to set IB port\0A\00", align 1
@MLXSW_REG_PTYS_IB_SPEED_EDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Port %d: Failed to set speed\0A\00", align 1
@MLXSW_IB_DEFAULT_MTU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Port %d: Failed to set MTU\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Port %d: Failed to change admin state to UP\0A\00", align 1
@MLXSW_PORT_SWID_DISABLED_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sib*, i64, i64, i64)* @__mlxsw_sib_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sib_port_create(%struct.mlxsw_sib* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sib*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlxsw_sib_port*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sib* %0, %struct.mlxsw_sib** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxsw_sib_port* @kzalloc(i32 24, i32 %12)
  store %struct.mlxsw_sib_port* %13, %struct.mlxsw_sib_port** %10, align 8
  %14 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %15 = icmp ne %struct.mlxsw_sib_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %137

19:                                               ; preds = %4
  %20 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %21 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %21, i32 0, i32 2
  store %struct.mlxsw_sib* %20, %struct.mlxsw_sib** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %31 = call i32 @mlxsw_sib_port_swid_set(%struct.mlxsw_sib_port* %30, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %133

44:                                               ; preds = %19
  %45 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  %48 = call i32 @mlxsw_sib_port_set(%struct.mlxsw_sib_port* %45, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %129

61:                                               ; preds = %44
  %62 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %63 = load i64, i64* @MLXSW_REG_PTYS_IB_SPEED_EDR, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i64 @BIT(i32 3)
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @mlxsw_sib_port_speed_set(%struct.mlxsw_sib_port* %62, i64 %64, i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  br label %128

80:                                               ; preds = %61
  %81 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %82 = load i32, i32* @MLXSW_IB_DEFAULT_MTU, align 4
  %83 = call i32 @mlxsw_sib_port_mtu_set(%struct.mlxsw_sib_port* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %93 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  br label %127

96:                                               ; preds = %80
  %97 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %98 = call i32 @mlxsw_sib_port_admin_status_set(%struct.mlxsw_sib_port* %97, i32 1)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  br label %126

111:                                              ; preds = %96
  %112 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %113 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sib_port, %struct.mlxsw_sib_port* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %119 = call i32 @mlxsw_core_port_ib_set(i32 %114, i64 %117, %struct.mlxsw_sib_port* %118)
  %120 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %121 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %6, align 8
  %122 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %121, i32 0, i32 0
  %123 = load %struct.mlxsw_sib_port**, %struct.mlxsw_sib_port*** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %123, i64 %124
  store %struct.mlxsw_sib_port* %120, %struct.mlxsw_sib_port** %125, align 8
  store i32 0, i32* %5, align 4
  br label %137

126:                                              ; preds = %101
  br label %127

127:                                              ; preds = %126, %86
  br label %128

128:                                              ; preds = %127, %70
  br label %129

129:                                              ; preds = %128, %51
  %130 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %131 = load i32, i32* @MLXSW_PORT_SWID_DISABLED_PORT, align 4
  %132 = call i32 @mlxsw_sib_port_swid_set(%struct.mlxsw_sib_port* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %34
  %134 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %10, align 8
  %135 = call i32 @kfree(%struct.mlxsw_sib_port* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %111, %16
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.mlxsw_sib_port* @kzalloc(i32, i32) #1

declare dso_local i32 @mlxsw_sib_port_swid_set(%struct.mlxsw_sib_port*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mlxsw_sib_port_set(%struct.mlxsw_sib_port*, i64) #1

declare dso_local i32 @mlxsw_sib_port_speed_set(%struct.mlxsw_sib_port*, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mlxsw_sib_port_mtu_set(%struct.mlxsw_sib_port*, i32) #1

declare dso_local i32 @mlxsw_sib_port_admin_status_set(%struct.mlxsw_sib_port*, i32) #1

declare dso_local i32 @mlxsw_core_port_ib_set(i32, i64, %struct.mlxsw_sib_port*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sib_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
