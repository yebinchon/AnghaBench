; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_err_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_err_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Reset pending %lu\0A\00", align 1
@HCLGE_MISC_VECTOR_INT_STS = common dso_local global i32 0, align 4
@HCLGE_RESET_INT_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"reset failed because new reset interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"re-schedule reset task(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Reset fail!\0A\00", align 1
@MAX_RESET_FAIL_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_reset_err_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_reset_err_handle(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %4 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %5 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32*, i8*, ...) @dev_info(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i32 1, i32* %2, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 4
  %20 = load i32, i32* @HCLGE_MISC_VECTOR_INT_STS, align 4
  %21 = call i32 @hclge_read_dev(i32* %19, i32 %20)
  %22 = load i32, i32* @HCLGE_RESET_INT_M, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_info(i32* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = call i32 @hclge_clear_reset_cause(%struct.hclge_dev* %31)
  store i32 0, i32* %2, align 4
  br label %72

33:                                               ; preds = %17
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 5
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i64* %49)
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  store i32 1, i32* %2, align 4
  br label %72

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %64 = call i32 @hclge_clear_reset_cause(%struct.hclge_dev* %63)
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %66 = call i32 @hclge_reset_handshake(%struct.hclge_dev* %65, i32 1)
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %39, %25, %8
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hclge_read_dev(i32*, i32) #1

declare dso_local i32 @hclge_clear_reset_cause(%struct.hclge_dev*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @hclge_reset_handshake(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
