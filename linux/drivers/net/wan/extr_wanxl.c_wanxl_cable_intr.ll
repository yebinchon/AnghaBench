; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_cable_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_cable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"V.35\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"X.21\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"V.24\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EIA530\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@STATUS_CABLE_PM_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"no personality\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid personality\00", align 1
@STATUS_CABLE_DSR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c", DSR ON\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c", DSR off\00", align 1
@STATUS_CABLE_DCD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c", carrier ON\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c", carrier off\00", align 1
@STATUS_CABLE_DCE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c" DCE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" DTE\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%s%s module, %s cable%s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @wanxl_cable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wanxl_cable_intr(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %10 = load %struct.port*, %struct.port** %2, align 8
  %11 = call %struct.TYPE_2__* @get_status(%struct.port* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 7
  switch i32 %15, label %21 [
    i32 129, label %16
    i32 128, label %17
    i32 130, label %18
    i32 132, label %19
    i32 131, label %20
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %22

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %22

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %22

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %22

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @STATUS_CABLE_PM_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = and i32 %25, 7
  switch i32 %26, label %32 [
    i32 129, label %27
    i32 128, label %28
    i32 130, label %29
    i32 132, label %30
    i32 131, label %31
  ]

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %33

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %33

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %33

30:                                               ; preds = %22
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %33

31:                                               ; preds = %22
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %33

32:                                               ; preds = %22
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %28, %27
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 7
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @STATUS_CABLE_PM_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @STATUS_CABLE_DSR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  store i8* %50, i8** %8, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @STATUS_CABLE_DCD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %44, %36
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @STATUS_CABLE_DCE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %57, %33
  %65 = load %struct.port*, %struct.port** %2, align 8
  %66 = getelementptr inbounds %struct.port, %struct.port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @netdev_info(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %68, i8* %69, i8* %70, i8* %71, i8* %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @STATUS_CABLE_DCD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load %struct.port*, %struct.port** %2, align 8
  %80 = getelementptr inbounds %struct.port, %struct.port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netif_carrier_on(i32 %81)
  br label %88

83:                                               ; preds = %64
  %84 = load %struct.port*, %struct.port** %2, align 8
  %85 = getelementptr inbounds %struct.port, %struct.port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netif_carrier_off(i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  ret void
}

declare dso_local %struct.TYPE_2__* @get_status(%struct.port*) #1

declare dso_local i32 @netdev_info(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
