; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_reuse_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_reuse_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_desc = type { i32 }

@HCLGE_CMD_FLAG_NO_INTR = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_IN = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_cmd_reuse_desc(%struct.hclge_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.hclge_desc* %0, %struct.hclge_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @HCLGE_CMD_FLAG_NO_INTR, align 4
  %6 = load i32, i32* @HCLGE_CMD_FLAG_IN, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @cpu_to_le16(i32 %7)
  %9 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @HCLGE_CMD_FLAG_WR, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  %16 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  %17 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @HCLGE_CMD_FLAG_WR, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load %struct.hclge_desc*, %struct.hclge_desc** %3, align 8
  %25 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
