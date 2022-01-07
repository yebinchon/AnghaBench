; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_free_irq_msix_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_free_irq_msix_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ice_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ice_hw = type { i32 }

@PFINT_OICR_ENA = common dso_local global i32 0, align 4
@ICE_RES_MISC_VEC_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_free_irq_msix_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_free_irq_msix_misc(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_hw*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %4 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %5 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %4, i32 0, i32 5
  store %struct.ice_hw* %5, %struct.ice_hw** %3, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %7 = call i32 @ice_dis_ctrlq_interrupts(%struct.ice_hw* %6)
  %8 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %9 = load i32, i32* @PFINT_OICR_ENA, align 4
  %10 = call i32 @wr32(%struct.ice_hw* %8, i32 %9, i32 0)
  %11 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %12 = call i32 @ice_flush(%struct.ice_hw* %11)
  %13 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %19 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @synchronize_irq(i32 %26)
  %28 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %33 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %42 = call i32 @devm_free_irq(i32* %31, i32 %40, %struct.ice_pf* %41)
  br label %43

43:                                               ; preds = %17, %1
  %44 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %49 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %52 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @ICE_RES_MISC_VEC_ID, align 4
  %55 = call i32 @ice_free_res(i32 %50, i64 %53, i32 %54)
  ret void
}

declare dso_local i32 @ice_dis_ctrlq_interrupts(%struct.ice_hw*) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.ice_pf*) #1

declare dso_local i32 @ice_free_res(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
