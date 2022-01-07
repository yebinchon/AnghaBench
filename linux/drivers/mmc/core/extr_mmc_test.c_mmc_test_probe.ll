; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Card claimed for testing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_test_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_probe(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = call i32 @mmc_card_mmc(%struct.mmc_card* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %10 = call i32 @mmc_card_sd(%struct.mmc_card* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %8, %1
  %16 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %17 = call i32 @mmc_test_register_dbgfs_file(%struct.mmc_card* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %15
  %23 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mmc_claim_host(i32 %31)
  %33 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %34 = call i32 @mmc_cmdq_disable(%struct.mmc_card* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_release_host(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %41, %20, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i32 @mmc_test_register_dbgfs_file(%struct.mmc_card*) #1

declare dso_local i32 @mmc_claim_host(i32) #1

declare dso_local i32 @mmc_cmdq_disable(%struct.mmc_card*) #1

declare dso_local i32 @mmc_release_host(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
