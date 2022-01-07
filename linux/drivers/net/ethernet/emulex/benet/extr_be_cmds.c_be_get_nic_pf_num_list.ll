; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_nic_pf_num_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_nic_pf_num_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_res_desc_hdr = type { i64, i32 }
%struct.be_pcie_res_desc = type { i64, i64, i64 }

@PCIE_RESOURCE_DESC_TYPE_V0 = common dso_local global i64 0, align 8
@PCIE_RESOURCE_DESC_TYPE_V1 = common dso_local global i64 0, align 8
@MISSION_NIC = common dso_local global i64 0, align 8
@MISSION_RDMA = common dso_local global i64 0, align 8
@RESOURCE_DESC_SIZE_V0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64*)* @be_get_nic_pf_num_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @be_get_nic_pf_num_list(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.be_res_desc_hdr*, align 8
  %8 = alloca %struct.be_pcie_res_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %12, %struct.be_res_desc_hdr** %7, align 8
  store %struct.be_pcie_res_desc* null, %struct.be_pcie_res_desc** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %77, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %13
  %18 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCIE_RESOURCE_DESC_TYPE_V0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCIE_RESOURCE_DESC_TYPE_V1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23, %17
  %30 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %31 = bitcast %struct.be_res_desc_hdr* %30 to %struct.be_pcie_res_desc*
  store %struct.be_pcie_res_desc* %31, %struct.be_pcie_res_desc** %8, align 8
  %32 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %8, align 8
  %33 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %8, align 8
  %38 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MISSION_NIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %8, align 8
  %44 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MISSION_RDMA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42, %36
  %49 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %8, align 8
  %50 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %42, %29
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @RESOURCE_DESC_SIZE_V0, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ %60, %62 ], [ %64, %63 ]
  %67 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %70 = bitcast %struct.be_res_desc_hdr* %69 to i8*
  %71 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %70, i64 %74
  %76 = bitcast i8* %75 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %76, %struct.be_res_desc_hdr** %7, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %13

80:                                               ; preds = %13
  %81 = load i64, i64* %10, align 8
  ret i64 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
