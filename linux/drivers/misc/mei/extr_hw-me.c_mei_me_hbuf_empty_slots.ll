; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hbuf_empty_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hbuf_empty_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_me_hw = type { i8 }

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_hbuf_empty_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_hbuf_empty_slots(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_me_hw*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %8 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %7)
  store %struct.mei_me_hw* %8, %struct.mei_me_hw** %4, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = call zeroext i8 @mei_hbuf_filled_slots(%struct.mei_device* %9)
  store i8 %10, i8* %5, align 1
  %11 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %12 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 %14, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %22 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EOVERFLOW, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local zeroext i8 @mei_hbuf_filled_slots(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
