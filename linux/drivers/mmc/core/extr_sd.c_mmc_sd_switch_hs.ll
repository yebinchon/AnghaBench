; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_switch_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_switch_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_8__*, %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@SCR_SPEC_VER_1 = common dso_local global i64 0, align 8
@CCC_SWITCH = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: Problem switching card into high-speed mode!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_sd_switch_hs(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SCR_SPEC_VER_1, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CCC_SWITCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %72

22:                                               ; preds = %13
  %23 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %72

32:                                               ; preds = %22
  %33 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %72

39:                                               ; preds = %32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kmalloc(i32 64, i32 %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %72

47:                                               ; preds = %39
  %48 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @mmc_sd_switch(%struct.mmc_card* %48, i32 1, i32 0, i32 1, i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %68

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 16
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %62 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @mmc_hostname(%struct.TYPE_8__* %63)
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %44, %38, %31, %21, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mmc_sd_switch(%struct.mmc_card*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
