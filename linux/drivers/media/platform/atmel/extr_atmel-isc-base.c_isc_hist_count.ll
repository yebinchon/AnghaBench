; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_hist_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_hist_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.isc_ctrls, %struct.regmap* }
%struct.isc_ctrls = type { i32*, i64, i32* }
%struct.regmap = type { i32 }

@HIST_ENTRIES = common dso_local global i32 0, align 4
@ISC_HIS_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_device*, i32*, i32*)* @isc_hist_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_hist_count(%struct.isc_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.isc_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.isc_ctrls*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %13 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %12, i32 0, i32 1
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %16 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %15, i32 0, i32 0
  store %struct.isc_ctrls* %16, %struct.isc_ctrls** %8, align 8
  %17 = load %struct.isc_ctrls*, %struct.isc_ctrls** %8, align 8
  %18 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.isc_ctrls*, %struct.isc_ctrls** %8, align 8
  %21 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %9, align 8
  %24 = load %struct.isc_ctrls*, %struct.isc_ctrls** %8, align 8
  %25 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @HIST_ENTRIES, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = load i32, i32* @ISC_HIS_ENTRY, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @HIST_ENTRIES, align 4
  %35 = call i32 @regmap_bulk_read(%struct.regmap* %31, i32 %32, i32* %33, i32 %34)
  %36 = load i32*, i32** %9, align 8
  store i32 0, i32* %36, align 4
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %68, %3
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @HIST_ENTRIES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %45, %41
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  %63 = load i32, i32* %61, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %71
  ret void
}

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
