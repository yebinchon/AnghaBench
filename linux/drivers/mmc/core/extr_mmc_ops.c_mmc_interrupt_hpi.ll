; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_interrupt_hpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_interrupt_hpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: HPI enable bit unset\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Get card status fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: HPI cannot be sent. Card state=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_interrupt_hpi(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_hostname(i32 %15)
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %2, align 4
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %20 = call i32 @mmc_send_status(%struct.mmc_card* %19, i32* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_hostname(i32 %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %82

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @R1_CURRENT_STATE(i32 %30)
  switch i32 %31, label %34 [
    i32 132, label %32
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
    i32 131, label %33
  ]

32:                                               ; preds = %29, %29, %29, %29
  br label %82

33:                                               ; preds = %29
  br label %44

34:                                               ; preds = %29
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_hostname(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @R1_CURRENT_STATE(i32 %39)
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %33
  %45 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %46 = call i32 @mmc_send_hpi_cmd(%struct.mmc_card* %45, i32* %5)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %82

50:                                               ; preds = %44
  %51 = load i64, i64* @jiffies, align 8
  %52 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %53 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @msecs_to_jiffies(i32 %55)
  %57 = add i64 %51, %56
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %77, %50
  %59 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %60 = call i32 @mmc_send_status(%struct.mmc_card* %59, i32* %5)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @R1_CURRENT_STATE(i32 %64)
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %81

68:                                               ; preds = %63, %58
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @time_after(i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %58, label %81

81:                                               ; preds = %77, %67
  br label %82

82:                                               ; preds = %81, %49, %34, %32, %23
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_send_status(%struct.mmc_card*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @R1_CURRENT_STATE(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mmc_send_hpi_cmd(%struct.mmc_card*, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
