; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_restore_vf_multicasts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_restore_vf_multicasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.vf_data_storage*, %struct.e1000_hw }
%struct.vf_data_storage = type { i32, i32, i32* }
%struct.e1000_hw = type { i32 }

@E1000_VMOLR_ROMPE = common dso_local global i32 0, align 4
@E1000_VMOLR_MPME = common dso_local global i32 0, align 4
@IGB_VF_FLAG_MULTI_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_restore_vf_multicasts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_restore_vf_multicasts(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.vf_data_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 2
  store %struct.e1000_hw* %9, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %82, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @E1000_VMOLR(i32 %17)
  %19 = call i32 @rd32(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @E1000_VMOLR_ROMPE, align 4
  %21 = load i32, i32* @E1000_VMOLR_MPME, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 1
  %28 = load %struct.vf_data_storage*, %struct.vf_data_storage** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %28, i64 %30
  store %struct.vf_data_storage* %31, %struct.vf_data_storage** %4, align 8
  %32 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %33 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 30
  br i1 %35, label %43, label %36

36:                                               ; preds = %16
  %37 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %38 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IGB_VF_FLAG_MULTI_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36, %16
  %44 = load i32, i32* @E1000_VMOLR_MPME, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %77

47:                                               ; preds = %36
  %48 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %49 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i32, i32* @E1000_VMOLR_ROMPE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %72, %52
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %59 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %65 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @igb_mta_set(%struct.e1000_hw* %63, i32 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %56

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %43
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @E1000_VMOLR(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @wr32(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %10

85:                                               ; preds = %10
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_VMOLR(i32) #1

declare dso_local i32 @igb_mta_set(%struct.e1000_hw*, i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
