; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_pin_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_pin_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i32 }
%struct.cec_msg = type { i32 }

@MAX_OUTPUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*, %struct.cec_msg*, i32)* @vivid_cec_pin_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_cec_pin_events(%struct.vivid_dev* %0, %struct.cec_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca %struct.cec_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store %struct.cec_msg* %1, %struct.cec_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @ktime_get()
  store i32 %9, i32* %7, align 4
  %10 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @vivid_cec_pin_adap_events(i32 %12, i32 %13, %struct.cec_msg* %14, i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %33, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MAX_OUTPUTS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vivid_cec_pin_adap_events(i32 %28, i32 %29, %struct.cec_msg* %30, i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %17

36:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @vivid_cec_pin_adap_events(i32, i32, %struct.cec_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
