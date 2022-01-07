; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cfg_serdes_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cfg_serdes_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_serdes_lb_cmd = type { i32, i8*, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_SERDES_LOOPBACK = common dso_local global i32 0, align 4
@HCLGE_CMD_SERDES_SERIAL_INNER_LOOP_B = common dso_local global i8* null, align 8
@HCLGE_CMD_SERDES_PARALLEL_INNER_LOOP_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"unsupported serdes loopback mode %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"serdes loopback set fail, ret = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"serdes loopback get, ret = %d\0A\00", align 1
@HCLGE_CMD_SERDES_DONE_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"serdes loopback set timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HCLGE_CMD_SERDES_SUCCESS_B = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"serdes loopback set failed in fw\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HCLGE_SERDES_RETRY_MS = common dso_local global i32 0, align 4
@HCLGE_SERDES_RETRY_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32)* @hclge_cfg_serdes_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_cfg_serdes_loopback(%struct.hclge_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclge_serdes_lb_cmd*, align 8
  %9 = alloca %struct.hclge_desc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hclge_serdes_lb_cmd*
  store %struct.hclge_serdes_lb_cmd* %15, %struct.hclge_serdes_lb_cmd** %8, align 8
  %16 = load i32, i32* @HCLGE_OPC_SERDES_LOOPBACK, align 4
  %17 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %9, i32 %16, i32 0)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %23 [
    i32 128, label %19
    i32 129, label %21
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** @HCLGE_CMD_SERDES_SERIAL_INNER_LOOP_B, align 8
  store i8* %20, i8** %12, align 8
  br label %32

21:                                               ; preds = %3
  %22 = load i8*, i8** @HCLGE_CMD_SERDES_PARALLEL_INNER_LOOP_B, align 8
  store i8* %22, i8** %12, align 8
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %126

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.hclge_serdes_lb_cmd*, %struct.hclge_serdes_lb_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.hclge_serdes_lb_cmd, %struct.hclge_serdes_lb_cmd* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.hclge_serdes_lb_cmd*, %struct.hclge_serdes_lb_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.hclge_serdes_lb_cmd, %struct.hclge_serdes_lb_cmd* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.hclge_serdes_lb_cmd*, %struct.hclge_serdes_lb_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.hclge_serdes_lb_cmd, %struct.hclge_serdes_lb_cmd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 1
  %49 = call i32 @hclge_cmd_send(i32* %48, %struct.hclge_desc* %9, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %126

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %91, %60
  %62 = call i32 @msleep(i32 10)
  %63 = load i32, i32* @HCLGE_OPC_SERDES_LOOPBACK, align 4
  %64 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %9, i32 %63, i32 1)
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 1
  %67 = call i32 @hclge_cmd_send(i32* %66, %struct.hclge_desc* %9, i32 1)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %72 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %126

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = icmp slt i32 %81, 100
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.hclge_serdes_lb_cmd*, %struct.hclge_serdes_lb_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.hclge_serdes_lb_cmd, %struct.hclge_serdes_lb_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HCLGE_CMD_SERDES_DONE_B, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %83, %79
  %92 = phi i1 [ false, %79 ], [ %90, %83 ]
  br i1 %92, label %61, label %93

93:                                               ; preds = %91
  %94 = load %struct.hclge_serdes_lb_cmd*, %struct.hclge_serdes_lb_cmd** %8, align 8
  %95 = getelementptr inbounds %struct.hclge_serdes_lb_cmd, %struct.hclge_serdes_lb_cmd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HCLGE_CMD_SERDES_DONE_B, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %93
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %102 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %126

108:                                              ; preds = %93
  %109 = load %struct.hclge_serdes_lb_cmd*, %struct.hclge_serdes_lb_cmd** %8, align 8
  %110 = getelementptr inbounds %struct.hclge_serdes_lb_cmd, %struct.hclge_serdes_lb_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HCLGE_CMD_SERDES_SUCCESS_B, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %108
  %116 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %117 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %126

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %115, %100, %70, %52, %23
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
