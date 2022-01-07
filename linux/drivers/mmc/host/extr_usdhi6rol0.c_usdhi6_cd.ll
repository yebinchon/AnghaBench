; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, %struct.mmc_host* }
%struct.mmc_host = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USDHI6_SD_INFO1 = common dso_local global i32 0, align 4
@USDHI6_SD_INFO1_CARD = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@USDHI6_SD_INFO1_CARD_INSERT = common dso_local global i32 0, align 4
@USDHI6_SD_INFO1_CARD_EJECT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usdhi6_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_cd(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usdhi6_host*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.usdhi6_host*
  store %struct.usdhi6_host* %10, %struct.usdhi6_host** %6, align 8
  %11 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %12 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %11, i32 0, i32 1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %7, align 8
  %14 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %15 = load i32, i32* @USDHI6_SD_INFO1, align 4
  %16 = call i32 @usdhi6_read(%struct.usdhi6_host* %14, i32 %15)
  %17 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %18 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = load i32, i32* @USDHI6_SD_INFO1_CARD, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %30 = load i32, i32* @USDHI6_SD_INFO1, align 4
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @usdhi6_write(%struct.usdhi6_host* %29, i32 %30, i32 %32)
  %34 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @work_pending(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @USDHI6_SD_INFO1_CARD_INSERT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @USDHI6_SD_INFO1_CARD_EJECT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %44
  %60 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %61 = call i32 @msecs_to_jiffies(i32 100)
  %62 = call i32 @mmc_detect_change(%struct.mmc_host* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54, %49, %28
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i32) #1

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @mmc_detect_change(%struct.mmc_host*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
