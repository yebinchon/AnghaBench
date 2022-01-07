; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_dump_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_dump_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_cmd_args = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@QLC_83XX_MBX_POST_BC_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Host MBX regs(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"FW MBX regs(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_dump_mbx(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  %6 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %7 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QLC_83XX_MBX_POST_BC_OP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %93

12:                                               ; preds = %2
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_info(i32* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %48, %12
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32, %29
  %39 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %22

51:                                               ; preds = %22
  %52 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %58 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %88, %51
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %65 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = srem i32 %73, 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72, %69
  %79 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %80 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %62

91:                                               ; preds = %62
  %92 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %11
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
