; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_ioctl_rpmb_card_status_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_ioctl_rpmb_card_status_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@R1_STATE_PRG = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i64*, i64)* @ioctl_rpmb_card_status_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_rpmb_card_status_poll(%struct.mmc_card* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %40, %18
  %20 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = call i32 @__mmc_send_status(%struct.mmc_card* %20, i64* %21, i32 5)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %45

26:                                               ; preds = %19
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @R1_STATUS(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @R1_CURRENT_STATE(i64 %33)
  %35 = load i64, i64* @R1_STATE_PRG, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %45

38:                                               ; preds = %31, %26
  %39 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %40

40:                                               ; preds = %38
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %19, label %45

45:                                               ; preds = %40, %37, %25
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @__mmc_send_status(%struct.mmc_card*, i64*, i32) #1

declare dso_local i32 @R1_STATUS(i64) #1

declare dso_local i64 @R1_CURRENT_STATE(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
