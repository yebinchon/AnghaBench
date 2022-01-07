; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@USDHI6_WAIT_FOR_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unsupported stop CMD%d for CMD%d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*)* @usdhi6_stop_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_stop_cmd(%struct.usdhi6_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  %5 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %6 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %5, i32 0, i32 2
  %7 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  store %struct.mmc_request* %7, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %26 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @USDHI6_WAIT_FOR_STOP, align 4
  %23 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %24 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %51

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %1, %25
  %27 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %28 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mmc_dev(i32 %29)
  %31 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
