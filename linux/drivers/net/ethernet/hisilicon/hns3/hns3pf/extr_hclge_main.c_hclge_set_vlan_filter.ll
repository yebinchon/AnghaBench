; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i64 }
%struct.hclge_vport = type { i32, i32, %struct.hclge_dev* }
%struct.hclge_dev = type { i32 }

@HCLGE_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_set_vlan_filter(%struct.hnae3_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_vport*, align 8
  %11 = alloca %struct.hclge_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %15 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %14)
  store %struct.hclge_vport* %15, %struct.hclge_vport** %10, align 8
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 2
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %17, align 8
  store %struct.hclge_dev* %18, %struct.hclge_dev** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %30 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_bit(i32 %28, i32 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %24, %4
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %45 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @hclge_set_vlan_filter_hw(%struct.hclge_dev* %42, i32 %43, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @hclge_rm_vport_vlan_table(%struct.hclge_vport* %57, i32 %58, i32 0)
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @hclge_add_vport_vlan_table(%struct.hclge_vport* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %76

66:                                               ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %72 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @set_bit(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %27
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @hclge_set_vlan_filter_hw(%struct.hclge_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @hclge_rm_vport_vlan_table(%struct.hclge_vport*, i32, i32) #1

declare dso_local i32 @hclge_add_vport_vlan_table(%struct.hclge_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
