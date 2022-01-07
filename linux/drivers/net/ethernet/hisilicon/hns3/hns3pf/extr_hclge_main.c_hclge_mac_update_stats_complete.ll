; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_mac_update_stats_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_mac_update_stats_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCLGE_OPC_STATS_MAC_ALL = common dso_local global i32 0, align 4
@HCLGE_RD_FIRST_STATS_NUM = common dso_local global i64 0, align 8
@HCLGE_RD_OTHER_STATS_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i64)* @hclge_mac_update_stats_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_mac_update_stats_complete(%struct.hclge_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hclge_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* %15, i32** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.hclge_desc* @kcalloc(i64 %16, i32 8, i32 %17)
  store %struct.hclge_desc* %18, %struct.hclge_desc** %7, align 8
  %19 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %20 = icmp ne %struct.hclge_desc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %90

24:                                               ; preds = %2
  %25 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %26 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %25, i64 0
  %27 = load i32, i32* @HCLGE_OPC_STATS_MAC_ALL, align 4
  %28 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %26, i32 %27, i32 1)
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @hclge_cmd_send(i32* %30, %struct.hclge_desc* %31, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %38 = call i32 @kfree(%struct.hclge_desc* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %3, align 4
  br label %90

40:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %84, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %49, i64 %50
  %52 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32* %54, i32** %8, align 8
  %55 = load i64, i64* @HCLGE_RD_FIRST_STATS_NUM, align 8
  store i64 %55, i64* %11, align 8
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %57, i64 %58
  %60 = bitcast %struct.hclge_desc* %59 to i32*
  store i32* %60, i32** %8, align 8
  %61 = load i64, i64* @HCLGE_RD_OTHER_STATS_NUM, align 8
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %56, %48
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le64_to_cpu(i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %70
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %41

87:                                               ; preds = %41
  %88 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %89 = call i32 @kfree(%struct.hclge_desc* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %36, %21
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.hclge_desc* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i64) #1

declare dso_local i32 @kfree(%struct.hclge_desc*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
