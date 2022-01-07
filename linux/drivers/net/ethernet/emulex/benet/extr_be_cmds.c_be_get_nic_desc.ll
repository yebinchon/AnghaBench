; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_nic_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_nic_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_nic_res_desc = type { i64, i32 }
%struct.be_res_desc_hdr = type { i64, i32 }

@NIC_RESOURCE_DESC_TYPE_V0 = common dso_local global i64 0, align 8
@NIC_RESOURCE_DESC_TYPE_V1 = common dso_local global i64 0, align 8
@PF_NUM_IGNORE = common dso_local global i64 0, align 8
@VFT_SHIFT = common dso_local global i32 0, align 4
@RESOURCE_DESC_SIZE_V0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_nic_res_desc* (i64*, i32, i32, i64)* @be_get_nic_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_nic_res_desc* @be_get_nic_desc(i64* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.be_nic_res_desc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.be_res_desc_hdr*, align 8
  %11 = alloca %struct.be_nic_res_desc*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = bitcast i64* %13 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %14, %struct.be_res_desc_hdr** %10, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %77, %4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %15
  %20 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NIC_RESOURCE_DESC_TYPE_V0, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
  %27 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NIC_RESOURCE_DESC_TYPE_V1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25, %19
  %32 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
  %33 = bitcast %struct.be_res_desc_hdr* %32 to %struct.be_nic_res_desc*
  store %struct.be_nic_res_desc* %33, %struct.be_nic_res_desc** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @PF_NUM_IGNORE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %11, align 8
  %39 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %11, align 8
  %48 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VFT_SHIFT, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46, %43
  %55 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %11, align 8
  store %struct.be_nic_res_desc* %55, %struct.be_nic_res_desc** %5, align 8
  br label %81

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
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
  %67 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
  %68 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
  %70 = bitcast %struct.be_res_desc_hdr* %69 to i8*
  %71 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %10, align 8
  %72 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %70, i64 %74
  %76 = bitcast i8* %75 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %76, %struct.be_res_desc_hdr** %10, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %15

80:                                               ; preds = %15
  store %struct.be_nic_res_desc* null, %struct.be_nic_res_desc** %5, align 8
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %5, align 8
  ret %struct.be_nic_res_desc* %82
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
