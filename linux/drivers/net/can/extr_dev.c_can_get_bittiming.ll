; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_get_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_get_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_bittiming = type { i64, i64 }
%struct.can_bittiming_const = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_bittiming*, %struct.can_bittiming_const*, i32*, i32)* @can_get_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_get_bittiming(%struct.net_device* %0, %struct.can_bittiming* %1, %struct.can_bittiming_const* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.can_bittiming*, align 8
  %8 = alloca %struct.can_bittiming_const*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %7, align 8
  store %struct.can_bittiming_const* %2, %struct.can_bittiming_const** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %13 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %5
  %17 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %18 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %8, align 8
  %23 = icmp ne %struct.can_bittiming_const* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %27 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %8, align 8
  %28 = call i32 @can_calc_bittiming(%struct.net_device* %25, %struct.can_bittiming* %26, %struct.can_bittiming_const* %27)
  store i32 %28, i32* %11, align 4
  br label %71

29:                                               ; preds = %21, %16, %5
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %8, align 8
  %41 = icmp ne %struct.can_bittiming_const* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %45 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %8, align 8
  %46 = call i32 @can_fixup_bittiming(%struct.net_device* %43, %struct.can_bittiming* %44, %struct.can_bittiming_const* %45)
  store i32 %46, i32* %11, align 4
  br label %70

47:                                               ; preds = %39, %34, %29
  %48 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %49 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %54 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = load %struct.can_bittiming*, %struct.can_bittiming** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @can_validate_bitrate(%struct.net_device* %61, %struct.can_bittiming* %62, i32* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %69

66:                                               ; preds = %57, %52, %47
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @can_calc_bittiming(%struct.net_device*, %struct.can_bittiming*, %struct.can_bittiming_const*) #1

declare dso_local i32 @can_fixup_bittiming(%struct.net_device*, %struct.can_bittiming*, %struct.can_bittiming_const*) #1

declare dso_local i32 @can_validate_bitrate(%struct.net_device*, %struct.can_bittiming*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
