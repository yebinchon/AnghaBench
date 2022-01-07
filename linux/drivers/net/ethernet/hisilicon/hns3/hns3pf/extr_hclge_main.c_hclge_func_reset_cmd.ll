; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_func_reset_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_func_reset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i64 }
%struct.hclge_reset_cmd = type { i32, i32 }

@HCLGE_OPC_CFG_RST_TRIGGER = common dso_local global i32 0, align 4
@HCLGE_CFG_RESET_FUNC_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"send function reset cmd fail, status =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_func_reset_cmd(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_desc, align 8
  %6 = alloca %struct.hclge_reset_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %5, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hclge_reset_cmd*
  store %struct.hclge_reset_cmd* %10, %struct.hclge_reset_cmd** %6, align 8
  %11 = load i32, i32* @HCLGE_OPC_CFG_RST_TRIGGER, align 4
  %12 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %5, i32 %11, i32 0)
  %13 = load %struct.hclge_reset_cmd*, %struct.hclge_reset_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.hclge_reset_cmd, %struct.hclge_reset_cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HCLGE_CFG_RESET_FUNC_B, align 4
  %17 = call i32 @hnae3_set_bit(i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hclge_reset_cmd*, %struct.hclge_reset_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.hclge_reset_cmd, %struct.hclge_reset_cmd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 1
  %23 = call i32 @hclge_cmd_send(i32* %22, %struct.hclge_desc* %5, i32 1)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
