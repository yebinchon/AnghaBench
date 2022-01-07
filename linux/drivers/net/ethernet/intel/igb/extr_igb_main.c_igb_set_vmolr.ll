; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_vmolr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_vmolr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82576 = common dso_local global i64 0, align 8
@E1000_VMOLR_AUPE = common dso_local global i32 0, align 4
@E1000_VMOLR_BAM = common dso_local global i32 0, align 4
@E1000_VMOLR_RSSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32, i32)* @igb_set_vmolr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_vmolr(%struct.igb_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 2
  store %struct.e1000_hw* %10, %struct.e1000_hw** %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_82576, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %69

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @E1000_VMOLR(i32 %19)
  %21 = call i32 @rd32(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @E1000_VMOLR_AUPE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @E1000_VMOLR_AUPE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* @E1000_VMOLR_BAM, align 4
  %35 = load i32, i32* @E1000_VMOLR_RSSE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %54

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @E1000_VMOLR_RSSE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %44, %33
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @E1000_VMOLR_BAM, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @E1000_VMOLR(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @wr32(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %17
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_VMOLR(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
