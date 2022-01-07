; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_check_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_check_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@T4FW_MIN_VERSION_MAJOR = common dso_local global i32 0, align 4
@T4FW_MIN_VERSION_MINOR = common dso_local global i32 0, align 4
@T4FW_MIN_VERSION_MICRO = common dso_local global i32 0, align 4
@T5FW_MIN_VERSION_MAJOR = common dso_local global i32 0, align 4
@T5FW_MIN_VERSION_MINOR = common dso_local global i32 0, align 4
@T5FW_MIN_VERSION_MICRO = common dso_local global i32 0, align 4
@T6FW_MIN_VERSION_MAJOR = common dso_local global i32 0, align 4
@T6FW_MIN_VERSION_MINOR = common dso_local global i32 0, align 4
@T6FW_MIN_VERSION_MICRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported chip type, %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Card has firmware version %u.%u.%u, minimum supported firmware is %u.%u.%u.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_check_fw_version(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CHELSIO_CHIP_VERSION(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @t4_get_fw_version(%struct.adapter* %18, i32* %21)
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %44, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 3
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i1 [ false, %28 ], [ %35, %33 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @t4_get_fw_version(%struct.adapter* %39, i32* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %23

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %129

52:                                               ; preds = %47
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FW_HDR_FW_VER_MAJOR_G(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FW_HDR_FW_VER_MINOR_G(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FW_HDR_FW_VER_MICRO_G(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %81 [
    i32 130, label %69
    i32 129, label %73
    i32 128, label %77
  ]

69:                                               ; preds = %52
  %70 = load i32, i32* @T4FW_MIN_VERSION_MAJOR, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @T4FW_MIN_VERSION_MINOR, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @T4FW_MIN_VERSION_MICRO, align 4
  store i32 %72, i32* %11, align 4
  br label %91

73:                                               ; preds = %52
  %74 = load i32, i32* @T5FW_MIN_VERSION_MAJOR, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @T5FW_MIN_VERSION_MINOR, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @T5FW_MIN_VERSION_MICRO, align 4
  store i32 %76, i32* %11, align 4
  br label %91

77:                                               ; preds = %52
  %78 = load i32, i32* @T6FW_MIN_VERSION_MAJOR, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @T6FW_MIN_VERSION_MINOR, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @T6FW_MIN_VERSION_MICRO, align 4
  store i32 %80, i32* %11, align 4
  br label %91

81:                                               ; preds = %52
  %82 = load %struct.adapter*, %struct.adapter** %3, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %129

91:                                               ; preds = %77, %73, %69
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %115, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111, %99, %91
  %116 = load %struct.adapter*, %struct.adapter** %3, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %129

128:                                              ; preds = %111, %107, %103
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %115, %81, %50
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @t4_get_fw_version(%struct.adapter*, i32*) #1

declare dso_local i32 @FW_HDR_FW_VER_MAJOR_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MINOR_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MICRO_G(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
