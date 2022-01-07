; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_pcie_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_pcie_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_pcie_res_desc = type { i64 }
%struct.be_res_desc_hdr = type { i64, i32 }

@PCIE_RESOURCE_DESC_TYPE_V0 = common dso_local global i64 0, align 8
@PCIE_RESOURCE_DESC_TYPE_V1 = common dso_local global i64 0, align 8
@RESOURCE_DESC_SIZE_V0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_pcie_res_desc* (i64*, i32, i64)* @be_get_pcie_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_pcie_res_desc* @be_get_pcie_desc(i64* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.be_pcie_res_desc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.be_res_desc_hdr*, align 8
  %9 = alloca %struct.be_pcie_res_desc*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = bitcast i64* %11 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %12, %struct.be_res_desc_hdr** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %60, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCIE_RESOURCE_DESC_TYPE_V0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCIE_RESOURCE_DESC_TYPE_V1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23, %17
  %30 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %31 = bitcast %struct.be_res_desc_hdr* %30 to %struct.be_pcie_res_desc*
  store %struct.be_pcie_res_desc* %31, %struct.be_pcie_res_desc** %9, align 8
  %32 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %9, align 8
  %33 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %9, align 8
  store %struct.be_pcie_res_desc* %38, %struct.be_pcie_res_desc** %4, align 8
  br label %64

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %42 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @RESOURCE_DESC_SIZE_V0, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ %43, %45 ], [ %47, %46 ]
  %50 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %51 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %53 = bitcast %struct.be_res_desc_hdr* %52 to i8*
  %54 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %8, align 8
  %55 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %53, i64 %57
  %59 = bitcast i8* %58 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %59, %struct.be_res_desc_hdr** %8, align 8
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %13

63:                                               ; preds = %13
  store %struct.be_pcie_res_desc* null, %struct.be_pcie_res_desc** %4, align 8
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %4, align 8
  ret %struct.be_pcie_res_desc* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
