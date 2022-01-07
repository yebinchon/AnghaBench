; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_cros_ec_dev.c_cros_ec_check_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_cros_ec_dev.c_cros_ec_check_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32*, i32, i32, i64 }
%struct.cros_ec_command = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_GET_FEATURES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot get EC features: %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EC features %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_dev*, i32)* @cros_ec_check_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_check_features(%struct.cros_ec_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cros_ec_command*, align 8
  %7 = alloca i32, align 4
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %84

14:                                               ; preds = %2
  %15 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %84

21:                                               ; preds = %14
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cros_ec_command* @kzalloc(i32 32, i32 %22)
  store %struct.cros_ec_command* %23, %struct.cros_ec_command** %6, align 8
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %25 = icmp ne %struct.cros_ec_command* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %96

29:                                               ; preds = %21
  %30 = load i64, i64* @EC_CMD_GET_FEATURES, align 8
  %31 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %32 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %36 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %38 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %37, i32 0, i32 2
  store i32 8, i32* %38, align 8
  %39 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %40 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %43 = call i32 @cros_ec_cmd_xfer_status(i32 %41, %struct.cros_ec_command* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %29
  %47 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %52 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %56 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @memset(i32* %57, i32 0, i32 8)
  br label %67

59:                                               ; preds = %29
  %60 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %61 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %64 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memcpy(i32* %62, i32 %65, i32 8)
  br label %67

67:                                               ; preds = %59, %46
  %68 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %69 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %72 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %77 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %80)
  %82 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %83 = call i32 @kfree(%struct.cros_ec_command* %82)
  br label %84

84:                                               ; preds = %67, %14, %2
  %85 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %86 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sdiv i32 %88, 32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @EC_FEATURE_MASK_0(i32 %93)
  %95 = and i32 %92, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %84, %26
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.cros_ec_command* @kzalloc(i32, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

declare dso_local i32 @EC_FEATURE_MASK_0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
