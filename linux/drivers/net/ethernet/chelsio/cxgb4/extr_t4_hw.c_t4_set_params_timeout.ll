; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_params_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_params_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_params_cmd = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FW_PARAMS_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_params_timeout(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.fw_params_cmd, align 8
  %19 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %18, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* %23, i32** %19, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp ugt i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %72

29:                                               ; preds = %8
  %30 = call i32 @memset(%struct.fw_params_cmd* %18, i32 0, i32 24)
  %31 = load i32, i32* @FW_PARAMS_CMD, align 4
  %32 = call i32 @FW_CMD_OP_V(i32 %31)
  %33 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @FW_PARAMS_CMD_PFN_V(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @FW_PARAMS_CMD_VFN_V(i32 %40)
  %42 = or i32 %39, %41
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %18, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = call i32 @FW_LEN16(%struct.fw_params_cmd* byval(%struct.fw_params_cmd) align 8 %18)
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %18, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %52, %29
  %49 = load i32, i32* %14, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %14, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %15, align 8
  %55 = load i32, i32* %53, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %19, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %19, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %16, align 8
  %62 = load i32, i32* %60, align 4
  %63 = call i8* @cpu_to_be32(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %19, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %19, align 8
  store i32 %64, i32* %65, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load %struct.adapter*, %struct.adapter** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @t4_wr_mbox_timeout(%struct.adapter* %68, i32 %69, %struct.fw_params_cmd* %18, i32 24, i32* null, i32 %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %67, %26
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @memset(%struct.fw_params_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_params_cmd* byval(%struct.fw_params_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox_timeout(%struct.adapter*, i32, %struct.fw_params_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
