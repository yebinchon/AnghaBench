; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_mac_update_stats_defective.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_mac_update_stats_defective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_OPC_STATS_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Get MAC pkt stats fail, status = %d.\0A\00", align 1
@HCLGE_RD_FIRST_STATS_NUM = common dso_local global i32 0, align 4
@HCLGE_RD_OTHER_STATS_NUM = common dso_local global i32 0, align 4
@HCLGE_MAC_CMD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_mac_update_stats_defective to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_mac_update_stats_defective(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [21 x %struct.hclge_desc], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32* %13, i32** %4, align 8
  %14 = getelementptr inbounds [21 x %struct.hclge_desc], [21 x %struct.hclge_desc]* %5, i64 0, i64 0
  %15 = load i32, i32* @HCLGE_OPC_STATS_MAC, align 4
  %16 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %14, i32 %15, i32 1)
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds [21 x %struct.hclge_desc], [21 x %struct.hclge_desc]* %5, i64 0, i64 0
  %20 = call i32 @hclge_cmd_send(i32* %18, %struct.hclge_desc* %19, i32 21)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %77, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 21
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [21 x %struct.hclge_desc], [21 x %struct.hclge_desc]* %5, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* @HCLGE_RD_FIRST_STATS_NUM, align 4
  store i32 %48, i32* %9, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [21 x %struct.hclge_desc], [21 x %struct.hclge_desc]* %5, i64 0, i64 %51
  %53 = bitcast %struct.hclge_desc* %52 to i32*
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* @HCLGE_RD_OTHER_STATS_NUM, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %41
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le64_to_cpu(i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %63
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %6, align 8
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %32

80:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
