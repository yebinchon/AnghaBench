; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32*, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PBA_CLR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EIAME = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_IRCA = common dso_local global i32 0, align 4
@E1000_EIMS_OTHER = common dso_local global i32 0, align 4
@E1000_GPIE = common dso_local global i32 0, align 4
@E1000_GPIE_MSIX_MODE = common dso_local global i32 0, align 4
@E1000_GPIE_PBA = common dso_local global i32 0, align 4
@E1000_GPIE_EIAME = common dso_local global i32 0, align 4
@E1000_GPIE_NSICR = common dso_local global i32 0, align 4
@E1000_IVAR_VALID = common dso_local global i32 0, align 4
@E1000_IVAR_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_configure_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_configure_msix(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 4
  store %struct.e1000_hw* %8, %struct.e1000_hw** %6, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %60 [
    i32 134, label %15
    i32 133, label %38
    i32 132, label %38
    i32 129, label %38
    i32 128, label %38
    i32 131, label %38
    i32 130, label %38
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @E1000_CTRL_EXT, align 4
  %17 = call i32 @rd32(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @E1000_CTRL_EXT_PBA_CLR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @E1000_CTRL_EXT_EIAME, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @E1000_CTRL_EXT_IRCA, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @E1000_CTRL_EXT, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @wr32(i32 %27, i32 %28)
  %30 = call i32 @E1000_MSIXBM(i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @E1000_EIMS_OTHER, align 4
  %34 = call i32 @array_wr32(i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* @E1000_EIMS_OTHER, align 4
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %61

38:                                               ; preds = %1, %1, %1, %1, %1, %1
  %39 = load i32, i32* @E1000_GPIE, align 4
  %40 = load i32, i32* @E1000_GPIE_MSIX_MODE, align 4
  %41 = load i32, i32* @E1000_GPIE_PBA, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @E1000_GPIE_EIAME, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @E1000_GPIE_NSICR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @wr32(i32 %39, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @E1000_IVAR_VALID, align 4
  %55 = or i32 %52, %54
  %56 = shl i32 %55, 8
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @E1000_IVAR_MISC, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @wr32(i32 %57, i32 %58)
  br label %61

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %38, %15
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %86, %61
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = call i32 @igb_assign_vector(i32 %82, i32 %83)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %69

89:                                               ; preds = %69
  %90 = call i32 (...) @wrfl()
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @array_wr32(i32, i32, i32) #1

declare dso_local i32 @E1000_MSIXBM(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @igb_assign_vector(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
