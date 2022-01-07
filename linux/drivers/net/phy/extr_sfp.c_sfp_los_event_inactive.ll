; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_los_event_inactive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_los_event_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SFP_OPTIONS_LOS_INVERTED = common dso_local global i32 0, align 4
@SFP_E_LOS_HIGH = common dso_local global i32 0, align 4
@SFP_OPTIONS_LOS_NORMAL = common dso_local global i32 0, align 4
@SFP_E_LOS_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*, i32)* @sfp_los_event_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_los_event_inactive(%struct.sfp* %0, i32 %1) #0 {
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sfp*, %struct.sfp** %3, align 8
  %6 = getelementptr inbounds %struct.sfp, %struct.sfp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SFP_OPTIONS_LOS_INVERTED, align 4
  %11 = call i32 @cpu_to_be16(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SFP_E_LOS_HIGH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.sfp*, %struct.sfp** %3, align 8
  %20 = getelementptr inbounds %struct.sfp, %struct.sfp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SFP_OPTIONS_LOS_NORMAL, align 4
  %25 = call i32 @cpu_to_be16(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SFP_E_LOS_LOW, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %18
  %33 = phi i1 [ false, %18 ], [ %31, %28 ]
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i1 [ true, %14 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
