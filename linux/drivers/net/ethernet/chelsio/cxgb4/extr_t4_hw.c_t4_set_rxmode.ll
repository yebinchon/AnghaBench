; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_rxmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_rxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_rxmode_cmd = type { i8*, i8*, i8* }

@FW_RXMODE_MTU_NO_CHG = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_PROMISCEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_ALLMULTIEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_BROADCASTEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD_VLANEXEN_M = common dso_local global i32 0, align 4
@FW_VI_RXMODE_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_rxmode(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.fw_vi_rxmode_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load i32, i32* @FW_RXMODE_MTU_NO_CHG, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %22, %9
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @FW_VI_RXMODE_CMD_PROMISCEN_M, align 4
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @FW_VI_RXMODE_CMD_ALLMULTIEN_M, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @FW_VI_RXMODE_CMD_BROADCASTEN_M, align 4
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @FW_VI_RXMODE_CMD_VLANEXEN_M, align 4
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @memset(%struct.fw_vi_rxmode_cmd* %19, i32 0, i32 24)
  %46 = load i32, i32* @FW_VI_RXMODE_CMD, align 4
  %47 = call i32 @FW_CMD_OP_V(i32 %46)
  %48 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @FW_VI_RXMODE_CMD_VIID_V(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, %struct.fw_vi_rxmode_cmd* %19, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = call i32 @FW_LEN16(%struct.fw_vi_rxmode_cmd* byval(%struct.fw_vi_rxmode_cmd) align 8 %19)
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, %struct.fw_vi_rxmode_cmd* %19, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @FW_VI_RXMODE_CMD_MTU_V(i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @FW_VI_RXMODE_CMD_PROMISCEN_V(i32 %62)
  %64 = or i32 %61, %63
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @FW_VI_RXMODE_CMD_ALLMULTIEN_V(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @FW_VI_RXMODE_CMD_BROADCASTEN_V(i32 %68)
  %70 = or i32 %67, %69
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @FW_VI_RXMODE_CMD_VLANEXEN_V(i32 %71)
  %73 = or i32 %70, %72
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, %struct.fw_vi_rxmode_cmd* %19, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @t4_wr_mbox_meat(%struct.adapter* %76, i32 %77, %struct.fw_vi_rxmode_cmd* %19, i32 24, i32* null, i32 %78)
  ret i32 %79
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

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_vi_rxmode_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
