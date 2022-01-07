; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.mmc_gpio* }
%struct.mmc_gpio = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s cd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s ro\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_gpio_alloc(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_gpio*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mmc_gpio* @devm_kzalloc(i32 %7, i32 24, i32 %8)
  store %struct.mmc_gpio* %9, %struct.mmc_gpio** %4, align 8
  %10 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %11 = icmp ne %struct.mmc_gpio* %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %13, i32 0, i32 0
  store i32 200, i32* %14, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_name(i32 %21)
  %23 = call i8* @devm_kasprintf(i32 %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %12
  %34 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_name(i32 %40)
  %42 = call i8* @devm_kasprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %33
  %53 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %54 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store %struct.mmc_gpio* %53, %struct.mmc_gpio** %56, align 8
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %62

62:                                               ; preds = %52, %1
  %63 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %64 = icmp ne %struct.mmc_gpio* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 0, %65 ], [ %68, %66 ]
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %49, %30
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.mmc_gpio* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
