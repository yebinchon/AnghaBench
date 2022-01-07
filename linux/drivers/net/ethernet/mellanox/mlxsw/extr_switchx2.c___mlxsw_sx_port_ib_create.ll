; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c___mlxsw_sx_port_ib_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c___mlxsw_sx_port_ib_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx = type { %struct.mlxsw_sx_port**, i32, %struct.TYPE_4__* }
%struct.mlxsw_sx_port = type { i64, %struct.TYPE_3__, %struct.mlxsw_sx* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Port %d: Failed to set system port mapping\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Port %d: Failed to set SWID\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Port %d: Failed to set IB port\0A\00", align 1
@MLXSW_REG_PTYS_IB_SPEED_EDR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Port %d: Failed to set speed\0A\00", align 1
@MLXSW_IB_DEFAULT_MTU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Port %d: Failed to set MTU\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Port %d: Failed to change admin state to UP\0A\00", align 1
@MLXSW_PORT_SWID_DISABLED_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx*, i64, i64, i64)* @__mlxsw_sx_port_ib_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sx_port_ib_create(%struct.mlxsw_sx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlxsw_sx_port*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sx* %0, %struct.mlxsw_sx** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxsw_sx_port* @kzalloc(i32 24, i32 %12)
  store %struct.mlxsw_sx_port* %13, %struct.mlxsw_sx_port** %10, align 8
  %14 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %15 = icmp ne %struct.mlxsw_sx_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %153

19:                                               ; preds = %4
  %20 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %21 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %21, i32 0, i32 2
  store %struct.mlxsw_sx* %20, %struct.mlxsw_sx** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %31 = call i32 @mlxsw_sx_port_system_port_mapping_set(%struct.mlxsw_sx_port* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %149

44:                                               ; preds = %19
  %45 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %46 = call i32 @mlxsw_sx_port_swid_set(%struct.mlxsw_sx_port* %45, i32 1)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %148

59:                                               ; preds = %44
  %60 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  %63 = call i32 @mlxsw_sx_port_ib_port_set(%struct.mlxsw_sx_port* %60, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  br label %144

76:                                               ; preds = %59
  %77 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %78 = load i64, i64* @MLXSW_REG_PTYS_IB_SPEED_EDR, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i64 @BIT(i32 3)
  %81 = sub nsw i64 %80, 1
  %82 = call i32 @mlxsw_sx_port_ib_speed_set(%struct.mlxsw_sx_port* %77, i64 %79, i64 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  br label %143

95:                                               ; preds = %76
  %96 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %97 = load i32, i32* @MLXSW_IB_DEFAULT_MTU, align 4
  %98 = call i32 @mlxsw_sx_port_mtu_ib_set(%struct.mlxsw_sx_port* %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  br label %142

111:                                              ; preds = %95
  %112 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %113 = call i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port* %112, i32 1)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %118 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %123 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %124)
  br label %141

126:                                              ; preds = %111
  %127 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %128 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %131 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %134 = call i32 @mlxsw_core_port_ib_set(i32 %129, i64 %132, %struct.mlxsw_sx_port* %133)
  %135 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %136 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %137 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %136, i32 0, i32 0
  %138 = load %struct.mlxsw_sx_port**, %struct.mlxsw_sx_port*** %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %138, i64 %139
  store %struct.mlxsw_sx_port* %135, %struct.mlxsw_sx_port** %140, align 8
  store i32 0, i32* %5, align 4
  br label %153

141:                                              ; preds = %116
  br label %142

142:                                              ; preds = %141, %101
  br label %143

143:                                              ; preds = %142, %85
  br label %144

144:                                              ; preds = %143, %66
  %145 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %146 = load i32, i32* @MLXSW_PORT_SWID_DISABLED_PORT, align 4
  %147 = call i32 @mlxsw_sx_port_swid_set(%struct.mlxsw_sx_port* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %49
  br label %149

149:                                              ; preds = %148, %34
  %150 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  %151 = call i32 @kfree(%struct.mlxsw_sx_port* %150)
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %126, %16
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.mlxsw_sx_port* @kzalloc(i32, i32) #1

declare dso_local i32 @mlxsw_sx_port_system_port_mapping_set(%struct.mlxsw_sx_port*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mlxsw_sx_port_swid_set(%struct.mlxsw_sx_port*, i32) #1

declare dso_local i32 @mlxsw_sx_port_ib_port_set(%struct.mlxsw_sx_port*, i64) #1

declare dso_local i32 @mlxsw_sx_port_ib_speed_set(%struct.mlxsw_sx_port*, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mlxsw_sx_port_mtu_ib_set(%struct.mlxsw_sx_port*, i32) #1

declare dso_local i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port*, i32) #1

declare dso_local i32 @mlxsw_core_port_ib_set(i32, i64, %struct.mlxsw_sx_port*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sx_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
