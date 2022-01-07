; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_reg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_reg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dbg_reg_type_info = type { i8* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@hclge_dbg_reg_info = common dso_local global %struct.hclge_dbg_reg_type_info* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"dcb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i8*)* @hclge_dbg_dump_reg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_reg_cmd(%struct.hclge_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hclge_dbg_reg_type_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.hclge_dbg_reg_type_info*, %struct.hclge_dbg_reg_type_info** @hclge_dbg_reg_info, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.hclge_dbg_reg_type_info* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %struct.hclge_dbg_reg_type_info*, %struct.hclge_dbg_reg_type_info** @hclge_dbg_reg_info, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hclge_dbg_reg_type_info, %struct.hclge_dbg_reg_type_info* %14, i64 %16
  store %struct.hclge_dbg_reg_type_info* %17, %struct.hclge_dbg_reg_type_info** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.hclge_dbg_reg_type_info*, %struct.hclge_dbg_reg_type_info** %5, align 8
  %20 = getelementptr inbounds %struct.hclge_dbg_reg_type_info, %struct.hclge_dbg_reg_type_info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.hclge_dbg_reg_type_info*, %struct.hclge_dbg_reg_type_info** %5, align 8
  %23 = getelementptr inbounds %struct.hclge_dbg_reg_type_info, %struct.hclge_dbg_reg_type_info* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i64 @strncmp(i8* %18, i8* %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %13
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %30 = load %struct.hclge_dbg_reg_type_info*, %struct.hclge_dbg_reg_type_info** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @hclge_dbg_dump_reg_common(%struct.hclge_dev* %29, %struct.hclge_dbg_reg_type_info* %30, i8* %31)
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = call i32 @hclge_dbg_dump_dcb(%struct.hclge_dev* %42, i8* %44)
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.hclge_dbg_reg_type_info*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hclge_dbg_dump_reg_common(%struct.hclge_dev*, %struct.hclge_dbg_reg_type_info*, i8*) #1

declare dso_local i32 @hclge_dbg_dump_dcb(%struct.hclge_dev*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
