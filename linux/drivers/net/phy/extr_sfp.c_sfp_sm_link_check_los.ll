; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_link_check_los.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_link_check_los.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SFP_F_LOS = common dso_local global i32 0, align 4
@SFP_OPTIONS_LOS_INVERTED = common dso_local global i32 0, align 4
@SFP_OPTIONS_LOS_NORMAL = common dso_local global i32 0, align 4
@SFP_S_WAIT_LOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_sm_link_check_los to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_sm_link_check_los(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  %3 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %4 = load %struct.sfp*, %struct.sfp** %2, align 8
  %5 = getelementptr inbounds %struct.sfp, %struct.sfp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SFP_F_LOS, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.sfp*, %struct.sfp** %2, align 8
  %10 = getelementptr inbounds %struct.sfp, %struct.sfp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SFP_OPTIONS_LOS_INVERTED, align 4
  %15 = call i32 @cpu_to_be16(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @SFP_F_LOS, align 4
  %20 = load i32, i32* %3, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.sfp*, %struct.sfp** %2, align 8
  %24 = getelementptr inbounds %struct.sfp, %struct.sfp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SFP_OPTIONS_LOS_NORMAL, align 4
  %29 = call i32 @cpu_to_be16(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.sfp*, %struct.sfp** %2, align 8
  %39 = load i32, i32* @SFP_S_WAIT_LOS, align 4
  %40 = call i32 @sfp_sm_next(%struct.sfp* %38, i32 %39, i32 0)
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.sfp*, %struct.sfp** %2, align 8
  %43 = call i32 @sfp_sm_link_up(%struct.sfp* %42)
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @sfp_sm_next(%struct.sfp*, i32, i32) #1

declare dso_local i32 @sfp_sm_link_up(%struct.sfp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
