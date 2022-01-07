; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32, i32* }

@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cmd(0x%x) send fail, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32, i32, i32)* @hclge_dbg_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  store %struct.hclge_desc* %14, %struct.hclge_desc** %11, align 8
  %15 = load %struct.hclge_desc*, %struct.hclge_desc** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %15, i32 %16, i32 1)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = load %struct.hclge_desc*, %struct.hclge_desc** %11, align 8
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  store i32 1, i32* %13, align 4
  br label %24

24:                                               ; preds = %40, %5
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.hclge_desc*, %struct.hclge_desc** %11, align 8
  %32 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.hclge_desc*, %struct.hclge_desc** %11, align 8
  %36 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %35, i32 1
  store %struct.hclge_desc* %36, %struct.hclge_desc** %11, align 8
  %37 = load %struct.hclge_desc*, %struct.hclge_desc** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 1
  %46 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hclge_cmd_send(i32* %45, %struct.hclge_desc* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
