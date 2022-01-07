; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_free_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_free_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.cmd_ctrl_node*, %struct.TYPE_2__ }
%struct.cmd_ctrl_node = type { i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*, i64)* }
%struct.mwifiex_adapter.0 = type opaque

@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"info: FREE_CMD_BUF: cmd_pool is null\0A\00", align 1
@MWIFIEX_NUM_OF_CMD_BUFFER = common dso_local global i64 0, align 8
@CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cmd: free cmd buffer %d\0A\00", align 1
@MWIFIEX_USB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"cmd: free cmd pool\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_free_cmd_buffer(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.cmd_ctrl_node*, align 8
  %4 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 1
  %7 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %8 = icmp ne %struct.cmd_ctrl_node* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %11 = load i32, i32* @FATAL, align 4
  %12 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %10, i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %92

13:                                               ; preds = %1
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %14, i32 0, i32 1
  %16 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %15, align 8
  store %struct.cmd_ctrl_node* %16, %struct.cmd_ctrl_node** %3, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %74, %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @MWIFIEX_NUM_OF_CMD_BUFFER, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i64 %23
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %30 = load i32, i32* @CMD, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i64 %34
  %36 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_kfree_skb_any(i64 %37)
  br label %39

39:                                               ; preds = %28, %21
  %40 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %40, i64 %41
  %43 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %74

47:                                               ; preds = %39
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MWIFIEX_USB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.mwifiex_adapter.0*, i64)*, i32 (%struct.mwifiex_adapter.0*, i64)** %56, align 8
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %59 = bitcast %struct.mwifiex_adapter* %58 to %struct.mwifiex_adapter.0*
  %60 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %60, i64 %61
  %63 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 %57(%struct.mwifiex_adapter.0* %59, i64 %64)
  br label %73

66:                                               ; preds = %47
  %67 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %67, i64 %68
  %70 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_kfree_skb_any(i64 %71)
  br label %73

73:                                               ; preds = %66, %53
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %17

77:                                               ; preds = %17
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 1
  %80 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %79, align 8
  %81 = icmp ne %struct.cmd_ctrl_node* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %84 = load i32, i32* @CMD, align 4
  %85 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %83, i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 1
  %88 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %87, align 8
  %89 = call i32 @kfree(%struct.cmd_ctrl_node* %88)
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 1
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %91, align 8
  br label %92

92:                                               ; preds = %9, %82, %77
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @kfree(%struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
