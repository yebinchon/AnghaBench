; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_ipc_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_ipc_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { %struct.fdp1_q_data, %struct.fdp1_dev* }
%struct.fdp1_q_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fdp1_dev = type { i32 }

@FD1_IPC_SENSOR_TH0_CONST = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_TH0 = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_TH1_CONST = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_TH1 = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL0_CONST = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL0 = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL1_CONST = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL1 = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL2_X_SHIFT = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL2_Y_SHIFT = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL2 = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL3_0_SHIFT = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL3_1_SHIFT = common dso_local global i32 0, align 4
@FD1_IPC_SENSOR_CTL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*)* @fdp1_set_ipc_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_set_ipc_sensor(%struct.fdp1_ctx* %0) #0 {
  %2 = alloca %struct.fdp1_ctx*, align 8
  %3 = alloca %struct.fdp1_dev*, align 8
  %4 = alloca %struct.fdp1_q_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %2, align 8
  %9 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %9, i32 0, i32 1
  %11 = load %struct.fdp1_dev*, %struct.fdp1_dev** %10, align 8
  store %struct.fdp1_dev* %11, %struct.fdp1_dev** %3, align 8
  %12 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %12, i32 0, i32 0
  store %struct.fdp1_q_data* %13, %struct.fdp1_q_data** %4, align 8
  %14 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %15 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %19 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = udiv i32 %22, 3
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 2, %24
  %26 = udiv i32 %25, 3
  store i32 %26, i32* %6, align 4
  %27 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %28 = load i32, i32* @FD1_IPC_SENSOR_TH0_CONST, align 4
  %29 = load i32, i32* @FD1_IPC_SENSOR_TH0, align 4
  %30 = call i32 @fdp1_write(%struct.fdp1_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %32 = load i32, i32* @FD1_IPC_SENSOR_TH1_CONST, align 4
  %33 = load i32, i32* @FD1_IPC_SENSOR_TH1, align 4
  %34 = call i32 @fdp1_write(%struct.fdp1_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %36 = load i32, i32* @FD1_IPC_SENSOR_CTL0_CONST, align 4
  %37 = load i32, i32* @FD1_IPC_SENSOR_CTL0, align 4
  %38 = call i32 @fdp1_write(%struct.fdp1_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %40 = load i32, i32* @FD1_IPC_SENSOR_CTL1_CONST, align 4
  %41 = load i32, i32* @FD1_IPC_SENSOR_CTL1, align 4
  %42 = call i32 @fdp1_write(%struct.fdp1_dev* %39, i32 %40, i32 %41)
  %43 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %44, 1
  %46 = load i32, i32* @FD1_IPC_SENSOR_CTL2_X_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %48, 1
  %50 = load i32, i32* @FD1_IPC_SENSOR_CTL2_Y_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %47, %51
  %53 = load i32, i32* @FD1_IPC_SENSOR_CTL2, align 4
  %54 = call i32 @fdp1_write(%struct.fdp1_dev* %43, i32 %52, i32 %53)
  %55 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @FD1_IPC_SENSOR_CTL3_0_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @FD1_IPC_SENSOR_CTL3_1_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = load i32, i32* @FD1_IPC_SENSOR_CTL3, align 4
  %64 = call i32 @fdp1_write(%struct.fdp1_dev* %55, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
