; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_vlan_offload_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_vlan_offload_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, i64, i64)* @hclge_vlan_offload_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_vlan_offload_cfg(%struct.hclge_vport* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %20 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %24 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %27 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %31 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  store i64 %29, i64* %32, align 8
  br label %33

33:                                               ; preds = %22, %12
  %34 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %35 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %38 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %41 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32 1, i32* %42, align 8
  %43 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %44 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  store i32 0, i32* %45, align 4
  %46 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %47 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %33
  %53 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %54 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %57 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %61 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  br label %74

63:                                               ; preds = %33
  %64 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %65 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %69 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %72 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %52
  %75 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %76 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %79 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32 0, i32* %80, align 8
  %81 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %82 = call i32 @hclge_set_vlan_tx_offload_cfg(%struct.hclge_vport* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %74
  %88 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %89 = call i32 @hclge_set_vlan_rx_offload_cfg(%struct.hclge_vport* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %85
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @hclge_set_vlan_tx_offload_cfg(%struct.hclge_vport*) #1

declare dso_local i32 @hclge_set_vlan_rx_offload_cfg(%struct.hclge_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
