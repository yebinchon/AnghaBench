; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@SFP_S_INIT = common dso_local global i32 0, align 4
@T_INIT_JIFFIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_sm_mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_sm_mod_init(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %3 = load %struct.sfp*, %struct.sfp** %2, align 8
  %4 = call i32 @sfp_module_tx_enable(%struct.sfp* %3)
  %5 = load %struct.sfp*, %struct.sfp** %2, align 8
  %6 = load i32, i32* @SFP_S_INIT, align 4
  %7 = load i32, i32* @T_INIT_JIFFIES, align 4
  %8 = call i32 @sfp_sm_next(%struct.sfp* %5, i32 %6, i32 %7)
  %9 = load %struct.sfp*, %struct.sfp** %2, align 8
  %10 = getelementptr inbounds %struct.sfp, %struct.sfp* %9, i32 0, i32 0
  store i32 5, i32* %10, align 8
  %11 = load %struct.sfp*, %struct.sfp** %2, align 8
  %12 = getelementptr inbounds %struct.sfp, %struct.sfp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %1
  %18 = load %struct.sfp*, %struct.sfp** %2, align 8
  %19 = getelementptr inbounds %struct.sfp, %struct.sfp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.sfp*, %struct.sfp** %2, align 8
  %26 = getelementptr inbounds %struct.sfp, %struct.sfp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %17, %1
  %32 = load %struct.sfp*, %struct.sfp** %2, align 8
  %33 = call i32 @sfp_sm_probe_phy(%struct.sfp* %32)
  br label %34

34:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32 @sfp_module_tx_enable(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_next(%struct.sfp*, i32, i32) #1

declare dso_local i32 @sfp_sm_probe_phy(%struct.sfp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
