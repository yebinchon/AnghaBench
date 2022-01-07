; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reserve_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reserve_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@I40E_MIN_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MSI-X vector reservation failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32)* @i40e_reserve_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_reserve_msix_vectors(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @I40E_MIN_MSIX, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pci_enable_msix_range(%struct.TYPE_2__* %7, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
