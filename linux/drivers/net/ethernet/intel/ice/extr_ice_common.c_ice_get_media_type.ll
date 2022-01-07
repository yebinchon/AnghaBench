; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32 }

@ICE_MEDIA_UNKNOWN = common dso_local global i32 0, align 4
@ICE_MEDIA_FIBER = common dso_local global i32 0, align 4
@ICE_MEDIA_BASET = common dso_local global i32 0, align 4
@ICE_MEDIA_DA = common dso_local global i32 0, align 4
@ICE_MEDIA_BACKPLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*)* @ice_get_media_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_media_type(%struct.ice_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca %struct.ice_link_status*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %3, align 8
  %5 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %6 = icmp ne %struct.ice_port_info* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ICE_MEDIA_UNKNOWN, align 4
  store i32 %8, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %11 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ice_link_status* %12, %struct.ice_link_status** %4, align 8
  %13 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %14 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %19 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @ICE_MEDIA_UNKNOWN, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %17, %9
  %25 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %26 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %31 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 173, label %33
    i32 174, label %33
    i32 159, label %33
    i32 160, label %33
    i32 157, label %33
    i32 145, label %33
    i32 146, label %33
    i32 143, label %33
    i32 139, label %33
    i32 140, label %33
    i32 130, label %33
    i32 132, label %33
    i32 131, label %33
    i32 136, label %33
    i32 133, label %33
    i32 162, label %33
    i32 164, label %33
    i32 163, label %33
    i32 167, label %33
    i32 171, label %35
    i32 172, label %35
    i32 154, label %35
    i32 128, label %35
    i32 158, label %35
    i32 144, label %35
    i32 156, label %37
    i32 152, label %37
    i32 150, label %37
    i32 151, label %37
    i32 142, label %37
    i32 137, label %37
    i32 138, label %37
    i32 169, label %37
    i32 168, label %37
    i32 170, label %37
    i32 175, label %39
    i32 155, label %39
    i32 153, label %39
    i32 129, label %39
    i32 161, label %39
    i32 149, label %39
    i32 148, label %39
    i32 147, label %39
    i32 141, label %39
    i32 134, label %39
    i32 135, label %39
    i32 166, label %39
    i32 165, label %39
  ]

33:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %34 = load i32, i32* @ICE_MEDIA_FIBER, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %29, %29, %29, %29, %29, %29
  %36 = load i32, i32* @ICE_MEDIA_BASET, align 4
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %38 = load i32, i32* @ICE_MEDIA_DA, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %40 = load i32, i32* @ICE_MEDIA_BACKPLANE, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %29
  br label %49

42:                                               ; preds = %24
  %43 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %44 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %48 [
    i32 176, label %46
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* @ICE_MEDIA_BACKPLANE, align 4
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* @ICE_MEDIA_UNKNOWN, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %46, %39, %37, %35, %33, %22, %7
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
