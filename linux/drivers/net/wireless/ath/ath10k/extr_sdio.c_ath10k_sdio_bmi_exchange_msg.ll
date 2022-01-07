; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_bmi_exchange_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_bmi_exchange_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"unable to send the bmi data to the device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"unable to read the bmi data from the device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i32, i8*, i32*)* @ath10k_sdio_bmi_exchange_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_bmi_exchange_msg(%struct.ath10k* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ath10k_sdio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %16 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %15)
  store %struct.ath10k_sdio* %16, %struct.ath10k_sdio** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %5
  %20 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %21 = call i32 @ath10k_sdio_bmi_credits(%struct.ath10k* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %6, align 4
  br label %94

26:                                               ; preds = %19
  %27 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %12, align 8
  %28 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %12, align 8
  %32 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %12, align 8
  %40 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ath10k_sdio_write(%struct.ath10k* %37, i32 %38, i8* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %26
  %47 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @ath10k_warn(%struct.ath10k* %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %94

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51, %5
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %6, align 4
  br label %94

59:                                               ; preds = %55
  %60 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %61 = call i32 @ath10k_sdio_bmi_get_rx_lookahead(%struct.ath10k* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %94

66:                                               ; preds = %59
  %67 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %12, align 8
  %68 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %13, align 4
  %71 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %12, align 8
  %74 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ath10k_sdio_read(%struct.ath10k* %71, i32 %72, i8* %75, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @ath10k_warn(%struct.ath10k* %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %94

86:                                               ; preds = %66
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %12, align 8
  %89 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(i8* %87, i8* %90, i32 %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %86, %81, %64, %58, %46, %24
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_bmi_credits(%struct.ath10k*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ath10k_sdio_write(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_sdio_bmi_get_rx_lookahead(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_read(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
