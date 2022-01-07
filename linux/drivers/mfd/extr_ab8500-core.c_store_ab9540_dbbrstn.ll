; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_store_ab9540_dbbrstn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_store_ab9540_dbbrstn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ab8500 = type { i32 }

@AB9540_MODEM_CTRL2_SWDBBRSTN_BIT = common dso_local global i32 0, align 4
@AB8500_REGU_CTRL2 = common dso_local global i32 0, align 4
@AB9540_MODEM_CTRL2_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to set DBBRSTN %c, err %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ab9540_dbbrstn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_ab9540_dbbrstn(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ab8500*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.ab8500* @dev_get_drvdata(%struct.device* %15)
  store %struct.ab8500* %16, %struct.ab8500** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %27 [
    i32 48, label %24
    i32 49, label %25
  ]

24:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @AB9540_MODEM_CTRL2_SWDBBRSTN_BIT, align 4
  store i32 %26, i32* %12, align 4
  br label %28

27:                                               ; preds = %19
  br label %48

28:                                               ; preds = %25, %24
  %29 = load %struct.ab8500*, %struct.ab8500** %9, align 8
  %30 = load i32, i32* @AB8500_REGU_CTRL2, align 4
  %31 = load i32, i32* @AB9540_MODEM_CTRL2_REG, align 4
  %32 = load i32, i32* @AB9540_MODEM_CTRL2_SWDBBRSTN_BIT, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @mask_and_set_register_interruptible(%struct.ab8500* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.ab8500*, %struct.ab8500** %9, align 8
  %39 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 signext %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %28
  br label %47

47:                                               ; preds = %46, %4
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.ab8500* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mask_and_set_register_interruptible(%struct.ab8500*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
