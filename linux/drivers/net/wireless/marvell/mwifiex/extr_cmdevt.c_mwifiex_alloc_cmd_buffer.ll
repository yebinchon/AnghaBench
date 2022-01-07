; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_alloc_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_alloc_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { i32 }

@MWIFIEX_NUM_OF_CMD_BUFFER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_SIZE_OF_CMD_BUFFER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to allocate command buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_alloc_cmd_buffer(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load i64, i64* @MWIFIEX_NUM_OF_CMD_BUFFER, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cmd_ctrl_node* @kcalloc(i64 %6, i32 4, i32 %7)
  store %struct.cmd_ctrl_node* %8, %struct.cmd_ctrl_node** %4, align 8
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %10 = icmp ne %struct.cmd_ctrl_node* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  store %struct.cmd_ctrl_node* %15, %struct.cmd_ctrl_node** %17, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %42, %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MWIFIEX_NUM_OF_CMD_BUFFER, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32, i32* @MWIFIEX_SIZE_OF_CMD_BUFFER, align 4
  %24 = call i32 @dev_alloc_skb(i32 %23)
  %25 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %25, i64 %26
  %28 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %29, i64 %30
  %32 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %22
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %36, i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %18

45:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @MWIFIEX_NUM_OF_CMD_BUFFER, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %52 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %52, i64 %53
  %55 = call i32 @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter* %51, %struct.cmd_ctrl_node* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %46

59:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %35, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.cmd_ctrl_node* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @dev_alloc_skb(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
