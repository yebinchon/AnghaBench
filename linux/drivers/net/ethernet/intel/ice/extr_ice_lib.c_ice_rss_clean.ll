; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_rss_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_rss_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*)* @ice_rss_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_rss_clean(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %4 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %4, i32 0, i32 2
  %6 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  store %struct.ice_pf* %6, %struct.ice_pf** %3, align 8
  %7 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %13 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @devm_kfree(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %27 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %31 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @devm_kfree(i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @devm_kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
