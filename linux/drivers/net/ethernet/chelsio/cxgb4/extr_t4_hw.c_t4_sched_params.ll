; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sched_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sched_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_sched_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@FW_SCHED_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_SCHED_SC_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sched_params(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.adapter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.fw_sched_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = call i32 @memset(%struct.fw_sched_cmd* %25, i32 0, i32 88)
  %27 = load i32, i32* @FW_SCHED_CMD, align 4
  %28 = call i32 @FW_CMD_OP_V(i32 %27)
  %29 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = call i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8 %25)
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @FW_SCHED_SC_PARAMS, align 4
  %39 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 11
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %16, align 4
  %51 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %19, align 4
  %55 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %20, align 4
  %59 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* %17, align 4
  %63 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %18, align 4
  %67 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 10
  store i8* %71, i8** %74, align 8
  %75 = load i32, i32* %22, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 9
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* %23, align 4
  %81 = call i8* @cpu_to_be16(i32 %80)
  %82 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 8
  store i8* %81, i8** %84, align 8
  %85 = load i32, i32* %24, align 4
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %25, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 7
  store i8* %86, i8** %89, align 8
  %90 = load %struct.adapter*, %struct.adapter** %13, align 8
  %91 = load %struct.adapter*, %struct.adapter** %13, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @t4_wr_mbox_meat(%struct.adapter* %90, i32 %93, %struct.fw_sched_cmd* %25, i32 88, i32* null, i32 1)
  ret i32 %94
}

declare dso_local i32 @memset(%struct.fw_sched_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_sched_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
