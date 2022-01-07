; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_alloc_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_alloc_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_cmd = type { i32, i32, i8*, i8* }

@FW_VI_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_VI_CMD_ALLOC_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_alloc_vi(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_vi_cmd, align 8
  %7 = alloca %struct.fw_vi_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.fw_vi_cmd* %6, i32 0, i32 24)
  %10 = load i32, i32* @FW_VI_CMD, align 4
  %11 = call i32 @FW_CMD_OP_V(i32 %10)
  %12 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %6, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = call i32 @FW_LEN16(%struct.fw_vi_cmd* byval(%struct.fw_vi_cmd) align 8 %6)
  %21 = load i32, i32* @FW_VI_CMD_ALLOC_F, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %6, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @FW_VI_CMD_PORTID_V(i32 %25)
  %27 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = call i32 @t4vf_wr_mbox(%struct.adapter* %28, %struct.fw_vi_cmd* %6, i32 24, %struct.fw_vi_cmd* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = call i32 @FW_VI_CMD_VIID_G(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.fw_vi_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_vi_cmd* byval(%struct.fw_vi_cmd) align 8) #1

declare dso_local i32 @FW_VI_CMD_PORTID_V(i32) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_vi_cmd*, i32, %struct.fw_vi_cmd*) #1

declare dso_local i32 @FW_VI_CMD_VIID_G(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
