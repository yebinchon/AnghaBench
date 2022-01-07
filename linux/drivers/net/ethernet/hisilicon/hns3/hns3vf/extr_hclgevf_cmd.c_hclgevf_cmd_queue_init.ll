; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_cmd_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_cmd_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@HCLGEVF_CMDQ_TX_TIMEOUT = common dso_local global i32 0, align 4
@HCLGEVF_NIC_CMQ_DESC_NUM = common dso_local global i8* null, align 8
@HCLGEVF_TYPE_CSQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CSQ ring setup error %d\0A\00", align 1
@HCLGEVF_TYPE_CRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CRQ ring setup error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclgevf_cmd_queue_init(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %5 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %6 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load i32, i32* @HCLGEVF_CMDQ_TX_TIMEOUT, align 4
  %18 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 8
  %22 = load i8*, i8** @HCLGEVF_NIC_CMQ_DESC_NUM, align 8
  %23 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i8* %22, i8** %27, align 8
  %28 = load i8*, i8** @HCLGEVF_NIC_CMQ_DESC_NUM, align 8
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  %34 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %35 = load i32, i32* @HCLGEVF_TYPE_CSQ, align 4
  %36 = call i32 @hclgevf_alloc_cmd_queue(%struct.hclgevf_dev* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %1
  %48 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %49 = load i32, i32* @HCLGEVF_TYPE_CRQ, align 4
  %50 = call i32 @hclgevf_alloc_cmd_queue(%struct.hclgevf_dev* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %61

60:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %68

61:                                               ; preds = %53
  %62 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @hclgevf_free_cmd_desc(%struct.TYPE_10__* %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %60, %39
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hclgevf_alloc_cmd_queue(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_free_cmd_desc(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
