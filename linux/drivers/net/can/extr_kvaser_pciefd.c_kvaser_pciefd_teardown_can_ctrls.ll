; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_teardown_can_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_teardown_can_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i32, %struct.kvaser_pciefd_can** }
%struct.kvaser_pciefd_can = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd*)* @kvaser_pciefd_teardown_can_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_teardown_can_ctrls(%struct.kvaser_pciefd* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd_can*, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %2, align 8
  %8 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %2, align 8
  %13 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %12, i32 0, i32 1
  %14 = load %struct.kvaser_pciefd_can**, %struct.kvaser_pciefd_can*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %14, i64 %16
  %18 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %17, align 8
  store %struct.kvaser_pciefd_can* %18, %struct.kvaser_pciefd_can** %4, align 8
  %19 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %20 = icmp ne %struct.kvaser_pciefd_can* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %11
  %22 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 0, i64 %26)
  %28 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %29 = call i32 @kvaser_pciefd_pwm_stop(%struct.kvaser_pciefd_can* %28)
  %30 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %31 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @free_candev(i32 %33)
  br label %35

35:                                               ; preds = %21, %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @kvaser_pciefd_pwm_stop(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @free_candev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
