; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_read_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_read_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@SCR_SPEC_VER_1 = common dso_local global i64 0, align 8
@CCC_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%s: card lacks mandatory switch function, performance might suffer\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: problem reading Bus Speed modes\0A\00", align 1
@SD_MODE_HIGH_SPEED = common dso_local global i32 0, align 4
@HIGH_SPEED_MAX_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_read_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_read_switch(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SCR_SPEC_VER_1, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CCC_SWITCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mmc_hostname(i32 %24)
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %110

27:                                               ; preds = %13
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 64, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @mmc_sd_switch(%struct.mmc_card* %36, i32 0, i32 0, i32 0, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ENOSYS, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %106

57:                                               ; preds = %51, %46, %41
  %58 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mmc_hostname(i32 %60)
  %62 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i32 0, i32* %4, align 4
  br label %106

63:                                               ; preds = %35
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 13
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SD_MODE_HIGH_SPEED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32, i32* @HIGH_SPEED_MAX_DTR, align 4
  %72 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %77 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %75
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 13
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %86 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 9
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %92 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %96, %100
  %102 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %103 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %81, %75
  br label %106

106:                                              ; preds = %105, %57, %56
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %32, %21, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mmc_sd_switch(%struct.mmc_card*, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
