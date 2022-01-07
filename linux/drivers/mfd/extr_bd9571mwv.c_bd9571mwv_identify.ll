; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_bd9571mwv.c_bd9571mwv_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_bd9571mwv.c_bd9571mwv_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd9571mwv = type { i32, %struct.device* }
%struct.device = type { i32 }

@BD9571MWV_VENDOR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to read vendor code register (ret=%i)\0A\00", align 1
@BD9571MWV_VENDOR_CODE_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid vendor code ID %02x (expected %02x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BD9571MWV_PRODUCT_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to read product code register (ret=%i)\0A\00", align 1
@BD9571MWV_PRODUCT_CODE_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid product code ID %02x (expected %02x)\0A\00", align 1
@BD9571MWV_PRODUCT_REVISION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to read revision register (ret=%i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Device: BD9571MWV rev. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd9571mwv*)* @bd9571mwv_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd9571mwv_identify(%struct.bd9571mwv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bd9571mwv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bd9571mwv* %0, %struct.bd9571mwv** %3, align 8
  %7 = load %struct.bd9571mwv*, %struct.bd9571mwv** %3, align 8
  %8 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.bd9571mwv*, %struct.bd9571mwv** %3, align 8
  %11 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BD9571MWV_VENDOR_CODE, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %75

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BD9571MWV_VENDOR_CODE_VAL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BD9571MWV_VENDOR_CODE_VAL, align 4
  %30 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %75

33:                                               ; preds = %22
  %34 = load %struct.bd9571mwv*, %struct.bd9571mwv** %3, align 8
  %35 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BD9571MWV_PRODUCT_CODE, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %5)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %75

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @BD9571MWV_PRODUCT_CODE_VAL, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @BD9571MWV_PRODUCT_CODE_VAL, align 4
  %54 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %46
  %58 = load %struct.bd9571mwv*, %struct.bd9571mwv** %3, align 8
  %59 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BD9571MWV_PRODUCT_REVISION, align 4
  %62 = call i32 @regmap_read(i32 %60, i32 %61, i32* %5)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %57
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @dev_info(%struct.device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %65, %50, %41, %26, %17
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
