; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_new_flow_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_new_flow_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring_group = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hns3_enet_tqp_vector* }
%struct.hns3_enet_tqp_vector = type { %struct.hns3_enet_ring_group, i64 }

@jiffies = common dso_local global i64 0, align 8
@HNS3_RX_LOW_BYTE_RATE = common dso_local global i32 0, align 4
@HNS3_RX_MID_BYTE_RATE = common dso_local global i32 0, align 4
@HNS3_RX_ULTRA_PACKET_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring_group*)* @hns3_get_new_flow_lvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_new_flow_lvl(%struct.hns3_enet_ring_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_enet_ring_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns3_enet_ring_group* %0, %struct.hns3_enet_ring_group** %3, align 8
  %9 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %10 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %12, align 8
  store %struct.hns3_enet_tqp_vector* %13, %struct.hns3_enet_tqp_vector** %5, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = call i32 @jiffies_to_msecs(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

23:                                               ; preds = %1
  %24 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @do_div(i32 %26, i32 %27)
  %29 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %33 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @do_div(i32 %34, i32 %35)
  %37 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %38 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %41 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %61 [
    i32 130, label %45
    i32 129, label %50
    i32 131, label %60
    i32 128, label %60
  ]

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 10000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 129, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %66

50:                                               ; preds = %23
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 20000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 131, i32* %4, align 4
  br label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %55, 10000
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 130, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %53
  br label %66

60:                                               ; preds = %23, %23
  br label %61

61:                                               ; preds = %23, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 %62, 20000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 129, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %59, %49
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 40
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %71 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %70, i32 0, i32 0
  %72 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %73 = icmp eq %struct.hns3_enet_ring_group* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 128, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %69, %66
  %76 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %77 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %79 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %82 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %75, %22
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
