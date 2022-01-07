; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_dfx_reg_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_dfx_reg_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32 }

@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Query dfx reg cmd(0x%x) send fail, status is %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32, i32)* @hclge_dfx_reg_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_dfx_reg_cmd_send(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  store %struct.hclge_desc* %12, %struct.hclge_desc** %9, align 8
  %13 = load %struct.hclge_desc*, %struct.hclge_desc** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %13, i32 %14, i32 1)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %33, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load %struct.hclge_desc*, %struct.hclge_desc** %9, align 8
  %25 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.hclge_desc*, %struct.hclge_desc** %9, align 8
  %29 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %28, i32 1
  store %struct.hclge_desc* %29, %struct.hclge_desc** %9, align 8
  %30 = load %struct.hclge_desc*, %struct.hclge_desc** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  store %struct.hclge_desc* %37, %struct.hclge_desc** %9, align 8
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 1
  %40 = load %struct.hclge_desc*, %struct.hclge_desc** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @hclge_cmd_send(i32* %39, %struct.hclge_desc* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %36
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
