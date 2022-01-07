; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.tmio_mmc_host = type { i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)*, i32, %struct.TYPE_2__*, i32, i32 (%struct.tmio_mmc_host*, i32)* }
%struct.TYPE_2__ = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Too many taps, skipping tuning. Please consider updating size of taps field of tmio_mmc_host\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Tuning procedure failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @tmio_mmc_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.tmio_mmc_host* %9, %struct.tmio_mmc_host** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 0
  %12 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %11, align 8
  %13 = icmp ne i32 (%struct.tmio_mmc_host*)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %15, i32 0, i32 1
  %17 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %16, align 8
  %18 = icmp ne i32 (%struct.tmio_mmc_host*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  br label %103

20:                                               ; preds = %14
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %22 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %21, i32 0, i32 0
  %23 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %22, align 8
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %25 = call i32 %23(%struct.tmio_mmc_host* %24)
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %27 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %103

33:                                               ; preds = %20
  %34 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %35 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* @BITS_PER_BYTE, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %45 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @dev_warn_once(i32* %47, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  br label %103

49:                                               ; preds = %33
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %51 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %54 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 2
  %57 = call i32 @bitmap_zero(i32 %52, i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %94, %49
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %61 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 2, %62
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %58
  %66 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %67 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %66, i32 0, i32 5
  %68 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.tmio_mmc_host*, i32)* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %72 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %71, i32 0, i32 5
  %73 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %72, align 8
  %74 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %77 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  %80 = call i32 %73(%struct.tmio_mmc_host* %74, i32 %79)
  br label %81

81:                                               ; preds = %70, %65
  %82 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @mmc_send_tuning(%struct.mmc_host* %82, i32 %83, i32* null)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %90 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @set_bit(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %99 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %98, i32 0, i32 1
  %100 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %99, align 8
  %101 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %102 = call i32 %100(%struct.tmio_mmc_host* %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %97, %43, %32, %19
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %108 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @dev_warn(i32* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %113 = call i32 @tmio_mmc_hw_reset(%struct.mmc_host* %112)
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @tmio_mmc_hw_reset(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
