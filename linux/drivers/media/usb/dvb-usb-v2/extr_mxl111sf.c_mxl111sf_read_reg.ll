; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf.c_mxl111sf_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf.c_mxl111sf_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@MXL_CMD_REG_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error reading reg: 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"invalid response reading reg: 0x%02x != 0x%02x, 0x%02x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"R: (0x%02x, 0x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mxl111sf_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %10 = load i32, i32* @MXL_CMD_REG_READ, align 4
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %12 = call i32 @mxl111sf_ctrl_msg(%struct.mxl111sf_state* %9, i32 %10, i64* %5, i32 1, i64* %11, i32 2)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @mxl_fail(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @mxl_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %42

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  br label %37

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %31, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %28, %24
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %38, i64 %40)
  br label %42

42:                                               ; preds = %37, %16
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @mxl111sf_ctrl_msg(%struct.mxl111sf_state*, i32, i64*, i32, i64*, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl_debug(i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
