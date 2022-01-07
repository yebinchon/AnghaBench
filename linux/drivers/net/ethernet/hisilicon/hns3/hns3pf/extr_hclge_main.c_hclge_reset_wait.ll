; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HCLGE_GLOBAL_RESET_REG = common dso_local global i64 0, align 8
@HCLGE_IMP_RESET_BIT = common dso_local global i64 0, align 8
@HCLGE_GLOBAL_RESET_BIT = common dso_local global i64 0, align 8
@HCLGE_FUN_RST_ING = common dso_local global i64 0, align 8
@HCLGE_FUN_RST_ING_B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Wait for unsupported reset type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HNAE3_FLR_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"flr wait timeout: %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Wait for reset timeout: %d\0A\00", align 1
@HCLGE_RESET_WAIT_CNT = common dso_local global i64 0, align 8
@HCLGE_RESET_WATI_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_reset_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_reset_wait(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 129, label %14
    i32 130, label %17
    i32 131, label %20
  ]

11:                                               ; preds = %1
  %12 = load i64, i64* @HCLGE_GLOBAL_RESET_REG, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @HCLGE_IMP_RESET_BIT, align 8
  store i64 %13, i64* %6, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load i64, i64* @HCLGE_GLOBAL_RESET_REG, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @HCLGE_GLOBAL_RESET_BIT, align 8
  store i64 %16, i64* %6, align 8
  br label %33

17:                                               ; preds = %1
  %18 = load i64, i64* @HCLGE_FUN_RST_ING, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @HCLGE_FUN_RST_ING_B, align 8
  store i64 %19, i64* %6, align 8
  br label %33

20:                                               ; preds = %1
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %107

33:                                               ; preds = %20, %17, %14, %11
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 131
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* @HNAE3_FLR_DONE, align 4
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 3
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %7, align 8
  %48 = icmp slt i64 %46, 200
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i1 [ false, %39 ], [ %48, %45 ]
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = call i32 @msleep(i32 100)
  br label %39

53:                                               ; preds = %49
  %54 = load i32, i32* @HNAE3_FLR_DONE, align 4
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 3
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %107

68:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %107

69:                                               ; preds = %33
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @hclge_read_dev(i32* %71, i64 %72)
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %84, %69
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @hnae3_get_bit(i64 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %80, 200
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i1 [ false, %74 ], [ %81, %79 ]
  br i1 %83, label %84, label %92

84:                                               ; preds = %82
  %85 = call i32 @msleep(i32 100)
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %86, i32 0, i32 2
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @hclge_read_dev(i32* %87, i64 %88)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %74

92:                                               ; preds = %82
  %93 = load i64, i64* %7, align 8
  %94 = icmp sge i64 %93, 200
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %101 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_warn(i32* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %95, %68, %59, %21
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @hclge_read_dev(i32*, i64) #1

declare dso_local i64 @hnae3_get_bit(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
