; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_regulator.c_mmc_regulator_get_supply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_regulator.c_mmc_regulator_get_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"vmmc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vqmmc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"No vmmc regulator found\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed getting OCR mask: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No vqmmc regulator found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.device* @mmc_dev(%struct.mmc_host* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i8* @devm_regulator_get_optional(%struct.device* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i8* @devm_regulator_get_optional(%struct.device* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %1
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %56

39:                                               ; preds = %1
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @mmc_regulator_get_ocrmask(i8* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_warn(%struct.device* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %63
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %56
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %72, %33
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.device* @mmc_dev(%struct.mmc_host*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @mmc_regulator_get_ocrmask(i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
