; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_devbus_armada_set_timing_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_devbus_armada_set_timing_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devbus = type { i64, i32 }
%struct.device_node = type { i32 }
%struct.devbus_read_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.devbus_write_params = type { i32, i32, i32, i32 }

@ARMADA_DEV_WIDTH_SHIFT = common dso_local global i32 0, align 4
@ARMADA_BADR_SKEW_SHIFT = common dso_local global i32 0, align 4
@ARMADA_RD_HOLD_SHIFT = common dso_local global i32 0, align 4
@ARMADA_ACC_NEXT_SHIFT = common dso_local global i32 0, align 4
@ARMADA_RD_SETUP_SHIFT = common dso_local global i32 0, align 4
@ARMADA_ACC_FIRST_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"read parameters register 0x%p = 0x%x\0A\00", align 1
@ARMADA_READ_PARAM_OFFSET = common dso_local global i64 0, align 8
@ARMADA_SYNC_ENABLE_SHIFT = common dso_local global i32 0, align 4
@ARMADA_WR_LOW_SHIFT = common dso_local global i32 0, align 4
@ARMADA_WR_HIGH_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"write parameters register: 0x%p = 0x%x\0A\00", align 1
@ARMADA_WRITE_PARAM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devbus*, %struct.device_node*, %struct.devbus_read_params*, %struct.devbus_write_params*)* @devbus_armada_set_timing_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devbus_armada_set_timing_params(%struct.devbus* %0, %struct.device_node* %1, %struct.devbus_read_params* %2, %struct.devbus_write_params* %3) #0 {
  %5 = alloca %struct.devbus*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.devbus_read_params*, align 8
  %8 = alloca %struct.devbus_write_params*, align 8
  %9 = alloca i32, align 4
  store %struct.devbus* %0, %struct.devbus** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.devbus_read_params* %2, %struct.devbus_read_params** %7, align 8
  store %struct.devbus_write_params* %3, %struct.devbus_write_params** %8, align 8
  %10 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %11 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ARMADA_DEV_WIDTH_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %16 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ARMADA_BADR_SKEW_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %22 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ARMADA_RD_HOLD_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %20, %25
  %27 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %28 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ARMADA_ACC_NEXT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %34 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ARMADA_RD_SETUP_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %32, %37
  %39 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %40 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ARMADA_ACC_FIRST_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %38, %43
  %45 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %46 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.devbus*, %struct.devbus** %5, align 8
  %50 = getelementptr inbounds %struct.devbus, %struct.devbus* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.devbus*, %struct.devbus** %5, align 8
  %53 = getelementptr inbounds %struct.devbus, %struct.devbus* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ARMADA_READ_PARAM_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.devbus*, %struct.devbus** %5, align 8
  %61 = getelementptr inbounds %struct.devbus, %struct.devbus* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ARMADA_READ_PARAM_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %67 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ARMADA_SYNC_ENABLE_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %72 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ARMADA_WR_LOW_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %70, %75
  %77 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %78 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ARMADA_WR_HIGH_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %76, %81
  %83 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %84 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  store i32 %86, i32* %9, align 4
  %87 = load %struct.devbus*, %struct.devbus** %5, align 8
  %88 = getelementptr inbounds %struct.devbus, %struct.devbus* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.devbus*, %struct.devbus** %5, align 8
  %91 = getelementptr inbounds %struct.devbus, %struct.devbus* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ARMADA_WRITE_PARAM_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.devbus*, %struct.devbus** %5, align 8
  %99 = getelementptr inbounds %struct.devbus, %struct.devbus* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ARMADA_WRITE_PARAM_OFFSET, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
