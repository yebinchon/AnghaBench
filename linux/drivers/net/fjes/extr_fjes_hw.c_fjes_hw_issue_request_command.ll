; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_issue_request_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_issue_request_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32 }
%union.REG_CR = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%union.REG_CS = type { i8* }
%struct.TYPE_3__ = type { i32 }

@FJES_CMD_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@FJES_COMMAND_REQ_TIMEOUT = common dso_local global i32 0, align 4
@XSCT_CR = common dso_local global i32 0, align 4
@XSCT_CS = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_NORMAL = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_ERROR_PARAM = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_ERROR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fjes_hw*, i32)* @fjes_hw_issue_request_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.fjes_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.REG_CR, align 8
  %7 = alloca %union.REG_CS, align 8
  %8 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FJES_CMD_STATUS_UNKNOWN, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @FJES_COMMAND_REQ_TIMEOUT, align 4
  %11 = mul nsw i32 %10, 1000
  store i32 %11, i32* %8, align 4
  %12 = bitcast %union.REG_CR* %6 to i8**
  store i8* null, i8** %12, align 8
  %13 = bitcast %union.REG_CR* %6 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = bitcast %union.REG_CR* %6 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @XSCT_CR, align 4
  %19 = bitcast %union.REG_CR* %6 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @wr32(i32 %18, i8* %20)
  %22 = load i32, i32* @XSCT_CR, align 4
  %23 = call i8* @rd32(i32 %22)
  %24 = bitcast %union.REG_CR* %6 to i8**
  store i8* %23, i8** %24, align 8
  %25 = bitcast %union.REG_CR* %6 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %2
  %30 = load i32, i32* @FJES_COMMAND_REQ_TIMEOUT, align 4
  %31 = mul nsw i32 %30, 1000
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @XSCT_CS, align 4
  %33 = call i8* @rd32(i32 %32)
  %34 = bitcast %union.REG_CS* %7 to i8**
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %45, %29
  %36 = bitcast %union.REG_CS* %7 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i1 [ false, %35 ], [ %42, %40 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = call i32 @msleep(i32 1000)
  %47 = load i32, i32* @XSCT_CS, align 4
  %48 = call i8* @rd32(i32 %47)
  %49 = bitcast %union.REG_CS* %7 to i8**
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1000
  store i32 %51, i32* %8, align 4
  br label %35

52:                                               ; preds = %43
  %53 = bitcast %union.REG_CS* %7 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @FJES_CMD_STATUS_TIMEOUT, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %64, %57
  br label %77

66:                                               ; preds = %2
  %67 = bitcast %union.REG_CR* %6 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %74 [
    i32 129, label %70
    i32 128, label %72
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* @FJES_CMD_STATUS_ERROR_PARAM, align 4
  store i32 %71, i32* %5, align 4
  br label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @FJES_CMD_STATUS_ERROR_STATUS, align 4
  store i32 %73, i32* %5, align 4
  br label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @FJES_CMD_STATUS_UNKNOWN, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %72, %70
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @trace_fjes_hw_issue_request_command(%union.REG_CR* %6, %union.REG_CS* %7, i32 %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @wr32(i32, i8*) #1

declare dso_local i8* @rd32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @trace_fjes_hw_issue_request_command(%union.REG_CR*, %union.REG_CS*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
