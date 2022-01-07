; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_5__*, %struct.hnae3_client*, %struct.hnae3_client* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.hnae3_handle, %struct.hnae3_handle }
%struct.hnae3_handle = type { i32 }
%struct.hnae3_client = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.hnae3_handle*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_update_link_status(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hnae3_client*, align 8
  %4 = alloca %struct.hnae3_client*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 4
  %11 = load %struct.hnae3_client*, %struct.hnae3_client** %10, align 8
  store %struct.hnae3_client* %11, %struct.hnae3_client** %3, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 3
  %14 = load %struct.hnae3_client*, %struct.hnae3_client** %13, align 8
  store %struct.hnae3_client* %14, %struct.hnae3_client** %4, align 8
  %15 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %16 = icmp ne %struct.hnae3_client* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %20 = call i32 @hclge_get_mac_phy_link(%struct.hclge_dev* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %81, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %29
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store %struct.hnae3_handle* %43, %struct.hnae3_handle** %6, align 8
  %44 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %45 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %47, align 8
  %49 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 %48(%struct.hnae3_handle* %49, i32 %50)
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @hclge_config_mac_tnl_int(%struct.hclge_dev* %52, i32 %53)
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.hnae3_handle* %61, %struct.hnae3_handle** %5, align 8
  %62 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %63 = icmp ne %struct.hnae3_client* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %36
  %65 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %66 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.hnae3_handle*, i32)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %73 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %75, align 8
  %77 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 %76(%struct.hnae3_handle* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %64, %36
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %29

84:                                               ; preds = %29
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %87 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %17, %84, %18
  ret void
}

declare dso_local i32 @hclge_get_mac_phy_link(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_config_mac_tnl_int(%struct.hclge_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
