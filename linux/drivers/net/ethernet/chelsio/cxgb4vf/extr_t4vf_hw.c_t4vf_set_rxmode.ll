; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_set_rxmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_set_rxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_rxmode_cmd = type { i8*, i8*, i8* }

@FW_VI_RXMODE_CMD_MTU_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_PROMISCEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_ALLMULTIEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_BROADCASTEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_VLANEXEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_set_rxmode(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fw_vi_rxmode_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = load i32, i32* @FW_VI_RXMODE_CMD_MTU_M, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @FW_VI_RXMODE_CMD_PROMISCEN_M, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @FW_VI_RXMODE_CMD_ALLMULTIEN_M, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @FW_VI_RXMODE_CMD_BROADCASTEN_M, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @FW_VI_RXMODE_CMD_VLANEXEN_M, align 4
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = call i32 @memset(%struct.fw_vi_rxmode_cmd* %17, i32 0, i32 24)
  %44 = load i32, i32* @FW_VI_RXMODE_CMD, align 4
  %45 = call i32 @FW_CMD_OP_V(i32 %44)
  %46 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @FW_VI_RXMODE_CMD_VIID_V(i32 %50)
  %52 = or i32 %49, %51
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, %struct.fw_vi_rxmode_cmd* %17, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = call i32 @FW_LEN16(%struct.fw_vi_rxmode_cmd* byval(%struct.fw_vi_rxmode_cmd) align 8 %17)
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, %struct.fw_vi_rxmode_cmd* %17, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @FW_VI_RXMODE_CMD_MTU_V(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @FW_VI_RXMODE_CMD_PROMISCEN_V(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @FW_VI_RXMODE_CMD_ALLMULTIEN_V(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @FW_VI_RXMODE_CMD_BROADCASTEN_V(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @FW_VI_RXMODE_CMD_VLANEXEN_V(i32 %69)
  %71 = or i32 %68, %70
  %72 = call i8* @cpu_to_be32(i32 %71)
  %73 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, %struct.fw_vi_rxmode_cmd* %17, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load %struct.adapter*, %struct.adapter** %9, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @t4vf_wr_mbox_core(%struct.adapter* %74, %struct.fw_vi_rxmode_cmd* %17, i32 24, i32* null, i32 %75)
  ret i32 %76
}

declare dso_local i32 @memset(%struct.fw_vi_rxmode_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_VI_RXMODE_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_vi_rxmode_cmd* byval(%struct.fw_vi_rxmode_cmd) align 8) #1

declare dso_local i32 @FW_VI_RXMODE_CMD_MTU_V(i32) #1

declare dso_local i32 @FW_VI_RXMODE_CMD_PROMISCEN_V(i32) #1

declare dso_local i32 @FW_VI_RXMODE_CMD_ALLMULTIEN_V(i32) #1

declare dso_local i32 @FW_VI_RXMODE_CMD_BROADCASTEN_V(i32) #1

declare dso_local i32 @FW_VI_RXMODE_CMD_VLANEXEN_V(i32) #1

declare dso_local i32 @t4vf_wr_mbox_core(%struct.adapter*, %struct.fw_vi_rxmode_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
