; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@IGB_FLAG_VLAN_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32, i32, i32)* @igb_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_vf_vlan(%struct.igb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_hw*, align 8
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 3
  store %struct.e1000_hw* %17, %struct.e1000_hw** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @igb_vfta_set(%struct.e1000_hw* %28, i32 %29, i32 %30, i32 1, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %70

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %20, %4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @igb_vfta_set(%struct.e1000_hw* %38, i32 %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %70

50:                                               ; preds = %45, %37
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @test_bit(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IGB_FLAG_VLAN_PROMISC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57, %50
  %65 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @igb_update_pf_vlvf(%struct.igb_adapter* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %48, %34
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @igb_update_pf_vlvf(%struct.igb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
