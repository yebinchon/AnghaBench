; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_ad_dpot_add_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_ad_dpot_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@dpot_attrib_wipers = common dso_local global i32* null, align 8
@F_CMD_EEP = common dso_local global i32 0, align 4
@dpot_attrib_eeprom = common dso_local global i32* null, align 8
@F_CMD_TOL = common dso_local global i32 0, align 4
@dpot_attrib_tolerance = common dso_local global i32* null, align 8
@F_CMD_OTP = common dso_local global i32 0, align 4
@dpot_attrib_otp_en = common dso_local global i32* null, align 8
@dpot_attrib_otp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"failed to register sysfs hooks for RDAC%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @ad_dpot_add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_dpot_add_files(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32*, i32** @dpot_attrib_wipers, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sysfs_create_file(i32* %9, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @F_CMD_EEP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32*, i32** @dpot_attrib_eeprom, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sysfs_create_file(i32* %22, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %20, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @F_CMD_TOL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32*, i32** @dpot_attrib_tolerance, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sysfs_create_file(i32* %38, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @F_CMD_OTP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32*, i32** @dpot_attrib_otp_en, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sysfs_create_file(i32* %54, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32*, i32** @dpot_attrib_otp, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sysfs_create_file(i32* %64, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %52, %47
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @sysfs_create_file(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
