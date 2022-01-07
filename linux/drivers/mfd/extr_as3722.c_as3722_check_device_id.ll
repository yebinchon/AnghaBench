; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_as3722.c_as3722_check_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_as3722.c_as3722_check_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722 = type { i32 }

@AS3722_ASIC_ID1_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ASIC_ID1 read failed: %d\0A\00", align 1
@AS3722_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Device is not AS3722, ID is 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AS3722_ASIC_ID2_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ASIC_ID2 read failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"AS3722 with revision 0x%x found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722*)* @as3722_check_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_check_device_id(%struct.as3722* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as3722*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.as3722* %0, %struct.as3722** %3, align 8
  %6 = load %struct.as3722*, %struct.as3722** %3, align 8
  %7 = load i32, i32* @AS3722_ASIC_ID1_REG, align 4
  %8 = call i32 @as3722_read(%struct.as3722* %6, i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.as3722*, %struct.as3722** %3, align 8
  %13 = getelementptr inbounds %struct.as3722, %struct.as3722* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AS3722_DEVICE_ID, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.as3722*, %struct.as3722** %3, align 8
  %24 = getelementptr inbounds %struct.as3722, %struct.as3722* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %18
  %31 = load %struct.as3722*, %struct.as3722** %3, align 8
  %32 = load i32, i32* @AS3722_ASIC_ID2_REG, align 4
  %33 = call i32 @as3722_read(%struct.as3722* %31, i32 %32, i32* %4)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.as3722*, %struct.as3722** %3, align 8
  %38 = getelementptr inbounds %struct.as3722, %struct.as3722* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.as3722*, %struct.as3722** %3, align 8
  %45 = getelementptr inbounds %struct.as3722, %struct.as3722* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %36, %22, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @as3722_read(%struct.as3722*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
