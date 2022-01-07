; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_subscribe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_subscribe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_event_subscription = type { i32 }
%struct.coda_ctx = type { i32 }

@CODA_INST_DECODER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fh*, %struct.v4l2_event_subscription*)* @coda_subscribe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_subscribe_event(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event_subscription*, align 8
  %6 = alloca %struct.coda_ctx*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %5, align 8
  %7 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %8 = call %struct.coda_ctx* @fh_to_ctx(%struct.v4l2_fh* %7)
  store %struct.coda_ctx* %8, %struct.coda_ctx** %6, align 8
  %9 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %29 [
    i32 129, label %12
    i32 128, label %16
  ]

12:                                               ; preds = %2
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %14 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %15 = call i32 @v4l2_event_subscribe(%struct.v4l2_fh* %13, %struct.v4l2_event_subscription* %14, i32 0, i32* null)
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CODA_INST_DECODER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %24 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %25 = call i32 @v4l2_event_subscribe(%struct.v4l2_fh* %23, %struct.v4l2_event_subscription* %24, i32 0, i32* null)
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %31 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %32 = call i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh* %30, %struct.v4l2_event_subscription* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %26, %22, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_event_subscribe(%struct.v4l2_fh*, %struct.v4l2_event_subscription*, i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
