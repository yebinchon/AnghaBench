; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_wait_op_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_wait_op_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_nand_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mxc_nand_host*)* }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for irq\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"timeout polling for completion\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"timeout! useirq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxc_nand_host*, i32)* @wait_op_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_op_done(%struct.mxc_nand_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxc_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mxc_nand_host* %0, %struct.mxc_nand_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %11 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mxc_nand_host*)*, i32 (%struct.mxc_nand_host*)** %13, align 8
  %15 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %16 = call i32 %14(%struct.mxc_nand_host* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %24 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %23, i32 0, i32 2
  %25 = call i32 @reinit_completion(i32* %24)
  %26 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %27 = call i32 @irq_control(%struct.mxc_nand_host* %26, i32 1)
  %28 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %29 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %28, i32 0, i32 2
  %30 = load i32, i32* @HZ, align 4
  %31 = call i64 @wait_for_completion_timeout(i32* %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %22
  %35 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %36 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mxc_nand_host*)*, i32 (%struct.mxc_nand_host*)** %38, align 8
  %40 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %41 = call i32 %39(%struct.mxc_nand_host* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %45 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43, %34, %22
  br label %80

51:                                               ; preds = %19
  store i32 8000, i32* %8, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = call i32 @udelay(i32 1)
  %54 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %55 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.mxc_nand_host*)*, i32 (%struct.mxc_nand_host*)** %57, align 8
  %59 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %60 = call i32 %58(%struct.mxc_nand_host* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %69

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %52, label %69

69:                                               ; preds = %65, %63
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %74 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %72, %69
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @WARN_ONCE(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @irq_control(%struct.mxc_nand_host*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
