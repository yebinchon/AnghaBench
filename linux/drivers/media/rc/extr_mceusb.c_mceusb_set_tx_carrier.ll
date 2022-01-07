; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_set_tx_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_set_tx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.mceusb_dev* }
%struct.mceusb_dev = type { i32, i32 }

@MCE_CMD_PORT_IR = common dso_local global i32 0, align 4
@MCE_CMD_SETIRCFS = common dso_local global i32 0, align 4
@MCE_CMD_SIG_END = common dso_local global i8 0, align 1
@MCE_IRDATA_TRAILER = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"disabling carrier modulation\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"requesting %u HZ carrier\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @mceusb_set_tx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_set_tx_carrier(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mceusb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 0
  %13 = load %struct.mceusb_dev*, %struct.mceusb_dev** %12, align 8
  store %struct.mceusb_dev* %13, %struct.mceusb_dev** %6, align 8
  store i32 10000000, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %15 = load i32, i32* @MCE_CMD_PORT_IR, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds i8, i8* %14, i64 1
  %18 = load i32, i32* @MCE_CMD_SETIRCFS, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i8, i8* @MCE_CMD_SIG_END, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 %34, i8* %35, align 1
  %36 = load i8, i8* @MCE_IRDATA_TRAILER, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %39 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %44 = call i32 @mce_command_out(%struct.mceusb_dev* %42, i8* %43, i32 4)
  store i32 0, i32* %3, align 4
  br label %84

45:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %77, %45
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 2, %51
  %53 = ashr i32 %50, %52
  %54 = load i32, i32* %5, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sle i32 %56, 255
  br i1 %57, label %58, label %76

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %61 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 %63, i8* %64, align 1
  %65 = load i32, i32* %9, align 4
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 %66, i8* %67, align 1
  %68 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %69 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %75 = call i32 @mce_command_out(%struct.mceusb_dev* %73, i8* %74, i32 4)
  store i32 0, i32* %3, align 4
  br label %84

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %46

80:                                               ; preds = %46
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %58, %30
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mce_command_out(%struct.mceusb_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
