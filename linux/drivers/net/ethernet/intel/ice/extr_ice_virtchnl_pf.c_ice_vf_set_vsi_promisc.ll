; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vf_set_vsi_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vf_set_vsi_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, i64, %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }
%struct.ice_vsi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, %struct.ice_vsi*, i32, i32)* @ice_vf_set_vsi_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vf_set_vsi_promisc(%struct.ice_vf* %0, %struct.ice_vsi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ice_vf*, align 8
  %6 = alloca %struct.ice_vsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_pf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_hw*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %5, align 8
  store %struct.ice_vsi* %1, %struct.ice_vsi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %13 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %12, i32 0, i32 2
  %14 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  store %struct.ice_pf* %14, %struct.ice_pf** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %16 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %15, i32 0, i32 0
  store %struct.ice_hw* %16, %struct.ice_hw** %11, align 8
  %17 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %18 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ice_set_vlan_vsi_promisc(%struct.ice_hw* %22, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %31 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %39 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %40 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %44 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ice_clear_vsi_promisc(%struct.ice_hw* %38, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %57

47:                                               ; preds = %34
  %48 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %49 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %50 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %54 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ice_set_vsi_promisc(%struct.ice_hw* %48, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %47, %37
  br label %76

58:                                               ; preds = %29
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %63 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %64 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ice_clear_vsi_promisc(%struct.ice_hw* %62, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %10, align 4
  br label %75

68:                                               ; preds = %58
  %69 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %70 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %71 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ice_set_vsi_promisc(%struct.ice_hw* %69, i32 %72, i32 %73, i32 0)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %68, %61
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32 @ice_set_vlan_vsi_promisc(%struct.ice_hw*, i32, i32, i32) #1

declare dso_local i32 @ice_clear_vsi_promisc(%struct.ice_hw*, i32, i32, i32) #1

declare dso_local i32 @ice_set_vsi_promisc(%struct.ice_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
