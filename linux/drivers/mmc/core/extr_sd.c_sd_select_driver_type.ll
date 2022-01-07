; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_select_driver_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_select_driver_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SD_DRIVER_TYPE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Problem setting drive strength!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32*)* @sd_select_driver_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_select_driver_type(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SD_DRIVER_TYPE_B, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %19 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mmc_select_drive_strength(%struct.mmc_card* %18, i32 %22, i32 %23, i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  %28 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @mmc_sd_switch(%struct.mmc_card* %28, i32 1, i32 2, i32 %29, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 15
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mmc_hostname(i32 %46)
  %48 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %63

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %2
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mmc_set_driver_type(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %43, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mmc_select_drive_strength(%struct.mmc_card*, i32, i32, i32*) #1

declare dso_local i32 @mmc_sd_switch(%struct.mmc_card*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_set_driver_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
