; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_lancer_cmd_get_pport_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_lancer_cmd_get_pport_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32 }
%struct.be_dma_mem = type { i32, %struct.lancer_cmd_req_pport_stats* }
%struct.lancer_cmd_req_pport_stats = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.be_mcc_wrb = type { i32 }

@OPCODE_ETH_GET_PPORT_STATS = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lancer_cmd_get_pport_stats(%struct.be_adapter* %0, %struct.be_dma_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_dma_mem*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.lancer_cmd_req_pport_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %10 = load i32, i32* @OPCODE_ETH_GET_PPORT_STATS, align 4
  %11 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %12 = call i32 @be_cmd_allowed(%struct.be_adapter* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %21)
  store %struct.be_mcc_wrb* %22, %struct.be_mcc_wrb** %6, align 8
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %24 = icmp ne %struct.be_mcc_wrb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %62

28:                                               ; preds = %17
  %29 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %29, i32 0, i32 1
  %31 = load %struct.lancer_cmd_req_pport_stats*, %struct.lancer_cmd_req_pport_stats** %30, align 8
  store %struct.lancer_cmd_req_pport_stats* %31, %struct.lancer_cmd_req_pport_stats** %7, align 8
  %32 = load %struct.lancer_cmd_req_pport_stats*, %struct.lancer_cmd_req_pport_stats** %7, align 8
  %33 = getelementptr inbounds %struct.lancer_cmd_req_pport_stats, %struct.lancer_cmd_req_pport_stats* %32, i32 0, i32 1
  %34 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %35 = load i32, i32* @OPCODE_ETH_GET_PPORT_STATS, align 4
  %36 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %40 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %41 = call i32 @be_wrb_cmd_hdr_prepare(i32* %33, i32 %34, i32 %35, i32 %38, %struct.be_mcc_wrb* %39, %struct.be_dma_mem* %40)
  %42 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.lancer_cmd_req_pport_stats*, %struct.lancer_cmd_req_pport_stats** %7, align 8
  %47 = getelementptr inbounds %struct.lancer_cmd_req_pport_stats, %struct.lancer_cmd_req_pport_stats* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load %struct.lancer_cmd_req_pport_stats*, %struct.lancer_cmd_req_pport_stats** %7, align 8
  %51 = getelementptr inbounds %struct.lancer_cmd_req_pport_stats, %struct.lancer_cmd_req_pport_stats* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %55 = call i32 @be_mcc_notify(%struct.be_adapter* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %28
  br label %62

59:                                               ; preds = %28
  %60 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %58, %25
  %63 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
