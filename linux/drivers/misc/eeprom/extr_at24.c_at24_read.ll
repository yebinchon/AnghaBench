; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i32, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @at24_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at24_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.at24_data*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.at24_data*
  store %struct.at24_data* %16, %struct.at24_data** %10, align 8
  %17 = load %struct.at24_data*, %struct.at24_data** %10, align 8
  %18 = call %struct.device* @at24_base_client_dev(%struct.at24_data* %17)
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %90

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.at24_data*, %struct.at24_data** %10, align 8
  %34 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %90

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %11, align 8
  %43 = call i32 @pm_runtime_get_sync(%struct.device* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %11, align 8
  %48 = call i32 @pm_runtime_put_noidle(%struct.device* %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %90

50:                                               ; preds = %41
  %51 = load %struct.at24_data*, %struct.at24_data** %10, align 8
  %52 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  br label %54

54:                                               ; preds = %72, %50
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load %struct.at24_data*, %struct.at24_data** %10, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @at24_regmap_read(%struct.at24_data* %58, i8* %59, i32 %60, i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.at24_data*, %struct.at24_data** %10, align 8
  %67 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.device*, %struct.device** %11, align 8
  %70 = call i32 @pm_runtime_put(%struct.device* %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %90

72:                                               ; preds = %57
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %9, align 8
  br label %54

84:                                               ; preds = %54
  %85 = load %struct.at24_data*, %struct.at24_data** %10, align 8
  %86 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = call i32 @pm_runtime_put(%struct.device* %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %65, %46, %38, %25
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.device* @at24_base_client_dev(%struct.at24_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @at24_regmap_read(%struct.at24_data*, i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
