; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_configure_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_configure_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32*, i32, i32, %struct.igc_hw }
%struct.igc_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IGC_GPIE = common dso_local global i32 0, align 4
@IGC_GPIE_MSIX_MODE = common dso_local global i32 0, align 4
@IGC_GPIE_PBA = common dso_local global i32 0, align 4
@IGC_GPIE_EIAME = common dso_local global i32 0, align 4
@IGC_GPIE_NSICR = common dso_local global i32 0, align 4
@IGC_IVAR_VALID = common dso_local global i32 0, align 4
@IGC_IVAR_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_configure_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_configure_msix(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %7 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %7, i32 0, i32 4
  store %struct.igc_hw* %8, %struct.igc_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %9, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %12 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %37 [
    i32 128, label %15
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @IGC_GPIE, align 4
  %17 = load i32, i32* @IGC_GPIE_MSIX_MODE, align 4
  %18 = load i32, i32* @IGC_GPIE_PBA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IGC_GPIE_EIAME, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IGC_GPIE_NSICR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @wr32(i32 %16, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @IGC_IVAR_VALID, align 4
  %32 = or i32 %29, %31
  %33 = shl i32 %32, 8
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @IGC_IVAR_MISC, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @wr32(i32 %34, i32 %35)
  br label %38

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %63, %38
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = call i32 @igc_assign_vector(i32 %59, i32 %60)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %46

66:                                               ; preds = %46
  %67 = call i32 (...) @wrfl()
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @igc_assign_vector(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
