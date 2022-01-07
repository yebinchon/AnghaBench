; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_disable_all_vf_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_disable_all_vf_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IFLA_VF_LINK_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @disable_all_vf_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_all_vf_links(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = icmp ne %struct.octeon_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %47, %10
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %3, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %47

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IFLA_VF_LINK_STATE_DISABLE, align 4
  %42 = call i32 @liquidio_set_vf_link_state(%struct.net_device* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %34

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %15

50:                                               ; preds = %9, %15
  ret void
}

declare dso_local i32 @liquidio_set_vf_link_state(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
