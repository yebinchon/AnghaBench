; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_active_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_active_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.ice_vf* }
%struct.ice_vf = type { i32 }

@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_active_vfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_active_vfs(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_vf*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %6 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %7 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %6, i32 0, i32 1
  %8 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  store %struct.ice_vf* %8, %struct.ice_vf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %17 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %18 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %30

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %28 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %27, i32 1
  store %struct.ice_vf* %28, %struct.ice_vf** %4, align 8
  br label %9

29:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
