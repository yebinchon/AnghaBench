; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_read_ext_csd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_read_ext_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"%s: unable to read EXT_CSD on a possible high capacity card. Card will be ignored.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: unable to read EXT_CSD, performance might suffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_read_ext_csd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_read_ext_csd(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = call i32 @mmc_can_ext_csd(%struct.mmc_card* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = call i32 @mmc_get_ext_csd(%struct.mmc_card* %11, i32** %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %25, %20, %15
  %33 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 2097152
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mmc_hostname(i32 %41)
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %50

44:                                               ; preds = %32
  %45 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mmc_hostname(i32 %47)
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %59

52:                                               ; preds = %10
  %53 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @mmc_decode_ext_csd(%struct.mmc_card* %53, i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %52, %50, %30, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @mmc_can_ext_csd(%struct.mmc_card*) #1

declare dso_local i32 @mmc_get_ext_csd(%struct.mmc_card*, i32**) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_decode_ext_csd(%struct.mmc_card*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
