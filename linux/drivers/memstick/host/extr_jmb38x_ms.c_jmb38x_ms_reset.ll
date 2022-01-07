; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HOST_CONTROL_RESET_REQ = common dso_local global i32 0, align 4
@HOST_CONTROL_CLOCK_EN = common dso_local global i32 0, align 4
@HOST_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"reset_req timeout\0A\00", align 1
@HOST_CONTROL_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"reset timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@INT_STATUS_ALL = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmb38x_ms_host*)* @jmb38x_ms_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_reset(%struct.jmb38x_ms_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jmb38x_ms_host*, align 8
  %4 = alloca i32, align 4
  store %struct.jmb38x_ms_host* %0, %struct.jmb38x_ms_host** %3, align 8
  %5 = load i32, i32* @HOST_CONTROL_RESET_REQ, align 4
  %6 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %9 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HOST_CONTROL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = or i32 %7, %13
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOST_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 20
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* @HOST_CONTROL_RESET_REQ, align 4
  %26 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %27 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HOST_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = and i32 %25, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %48

35:                                               ; preds = %24
  %36 = call i32 @ndelay(i32 20)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %42 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %40, %34
  %49 = load i32, i32* @HOST_CONTROL_RESET, align 4
  %50 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %53 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HOST_CONTROL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  %58 = or i32 %51, %57
  %59 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %60 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HOST_CONTROL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %81, %48
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 20
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i32, i32* @HOST_CONTROL_RESET, align 4
  %70 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %71 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HOST_CONTROL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl(i64 %74)
  %76 = and i32 %69, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %94

79:                                               ; preds = %68
  %80 = call i32 @ndelay(i32 20)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %86 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %109

94:                                               ; preds = %78
  %95 = load i32, i32* @INT_STATUS_ALL, align 4
  %96 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %97 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load i32, i32* @INT_STATUS_ALL, align 4
  %103 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %104 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %94, %84
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
