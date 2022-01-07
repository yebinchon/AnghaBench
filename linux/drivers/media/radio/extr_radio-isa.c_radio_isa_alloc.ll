; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { %struct.v4l2_device, %struct.radio_isa_driver* }
%struct.v4l2_device = type { i32 }
%struct.radio_isa_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radio_isa_card* (...)* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radio_isa_card* (%struct.radio_isa_driver*, %struct.device*)* @radio_isa_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radio_isa_card* @radio_isa_alloc(%struct.radio_isa_driver* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.radio_isa_card*, align 8
  %4 = alloca %struct.radio_isa_driver*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca %struct.radio_isa_card*, align 8
  store %struct.radio_isa_driver* %0, %struct.radio_isa_driver** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.radio_isa_driver*, %struct.radio_isa_driver** %4, align 8
  %9 = getelementptr inbounds %struct.radio_isa_driver, %struct.radio_isa_driver* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.radio_isa_card* (...)*, %struct.radio_isa_card* (...)** %11, align 8
  %13 = call %struct.radio_isa_card* (...) %12()
  store %struct.radio_isa_card* %13, %struct.radio_isa_card** %7, align 8
  %14 = load %struct.radio_isa_card*, %struct.radio_isa_card** %7, align 8
  %15 = icmp ne %struct.radio_isa_card* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.radio_isa_card* null, %struct.radio_isa_card** %3, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.radio_isa_card*, %struct.radio_isa_card** %7, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.radio_isa_card* %19)
  %21 = load %struct.radio_isa_driver*, %struct.radio_isa_driver** %4, align 8
  %22 = load %struct.radio_isa_card*, %struct.radio_isa_card** %7, align 8
  %23 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %22, i32 0, i32 1
  store %struct.radio_isa_driver* %21, %struct.radio_isa_driver** %23, align 8
  %24 = load %struct.radio_isa_card*, %struct.radio_isa_card** %7, align 8
  %25 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %24, i32 0, i32 0
  store %struct.v4l2_device* %25, %struct.v4l2_device** %6, align 8
  %26 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_name(%struct.device* %29)
  %31 = call i32 @strscpy(i32 %28, i32 %30, i32 4)
  %32 = load %struct.radio_isa_card*, %struct.radio_isa_card** %7, align 8
  store %struct.radio_isa_card* %32, %struct.radio_isa_card** %3, align 8
  br label %33

33:                                               ; preds = %17, %16
  %34 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  ret %struct.radio_isa_card* %34
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.radio_isa_card*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
