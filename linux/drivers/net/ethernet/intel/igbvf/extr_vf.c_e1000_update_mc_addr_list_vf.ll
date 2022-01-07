; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_update_mc_addr_list_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_update_mc_addr_list_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@E1000_VF_SET_MULTICAST = common dso_local global i32 0, align 4
@E1000_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*, i32, i32, i32)* @e1000_update_mc_addr_list_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_update_mc_addr_list_vf(%struct.e1000_hw* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_mbx_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  store %struct.e1000_mbx_info* %20, %struct.e1000_mbx_info** %11, align 8
  %21 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32* %25, i32** %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 30
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 30, %28 ], [ %30, %29 ]
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @E1000_VF_SET_MULTICAST, align 4
  %34 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @E1000_VT_MSGINFO_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = getelementptr inbounds i32, i32* %24, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 16
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %59, %31
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @e1000_hash_mc_addr_vf(%struct.e1000_hw* %46, i32* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = and i32 %49, 65535
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %64 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (%struct.e1000_hw.1*, i32*, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.1*
  %69 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %70 = call i32 %66(%struct.e1000_hw.1* %68, i32* %24, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %62
  %74 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %75 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32)** %76, align 8
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %79 = bitcast %struct.e1000_hw* %78 to %struct.e1000_hw.0*
  %80 = call i32 %77(%struct.e1000_hw.0* %79, i32* %24, i32 1)
  br label %81

81:                                               ; preds = %73, %62
  %82 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @e1000_hash_mc_addr_vf(%struct.e1000_hw*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
