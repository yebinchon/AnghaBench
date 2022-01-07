; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_rc5t583_clear_ext_power_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_rc5t583_clear_ext_power_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc5t583 = type { i32 }
%struct.rc5t583_platform_data = type { i64 }

@RICOH_ONOFFSEL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error in writing reg %d error: %d\0A\00", align 1
@RICOH_SWCTL_REG = common dso_local global i32 0, align 4
@RC5T583_SLPSEQ1 = common dso_local global i32 0, align 4
@RC5T583_SLPSEQ11 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error in writing reg 0x%02x error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc5t583*, %struct.rc5t583_platform_data*)* @rc5t583_clear_ext_power_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_clear_ext_power_req(%struct.rc5t583* %0, %struct.rc5t583_platform_data* %1) #0 {
  %3 = alloca %struct.rc5t583*, align 8
  %4 = alloca %struct.rc5t583_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rc5t583* %0, %struct.rc5t583** %3, align 8
  store %struct.rc5t583_platform_data* %1, %struct.rc5t583_platform_data** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %4, align 8
  %9 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %15 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RICOH_ONOFFSEL_REG, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rc5t583_write(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %24 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RICOH_ONOFFSEL_REG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %13
  %30 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %31 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RICOH_SWCTL_REG, align 4
  %34 = call i32 @rc5t583_write(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %39 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RICOH_SWCTL_REG, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %29
  %45 = load i32, i32* @RC5T583_SLPSEQ1, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %66, %44
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RC5T583_SLPSEQ11, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %52 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rc5t583_write(i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %60 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %46

69:                                               ; preds = %46
  ret i32 0
}

declare dso_local i32 @rc5t583_write(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
