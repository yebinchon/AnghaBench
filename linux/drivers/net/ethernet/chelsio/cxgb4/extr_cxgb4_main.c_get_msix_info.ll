; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_get_msix_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_get_msix_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.uld_msix_info*, %struct.TYPE_2__ }
%struct.uld_msix_info = type { i32 }
%struct.TYPE_2__ = type { i32, i8* }

@MAX_OFLD_QSETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @get_msix_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msix_info(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.uld_msix_info*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call i64 @is_offload(%struct.adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @MAX_OFLD_QSETS, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul i32 %10, %13
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = call i64 @is_pci_uld(%struct.adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @MAX_OFLD_QSETS, align 4
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %69

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.uld_msix_info*
  store %struct.uld_msix_info* %37, %struct.uld_msix_info** %4, align 8
  %38 = load %struct.uld_msix_info*, %struct.uld_msix_info** %4, align 8
  %39 = icmp ne %struct.uld_msix_info* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %70

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BITS_TO_LONGS(i32 %44)
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kcalloc(i32 %45, i32 8, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %43
  %57 = load %struct.uld_msix_info*, %struct.uld_msix_info** %4, align 8
  %58 = call i32 @kfree(%struct.uld_msix_info* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %70

61:                                               ; preds = %43
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.uld_msix_info*, %struct.uld_msix_info** %4, align 8
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  store %struct.uld_msix_info* %66, %struct.uld_msix_info** %68, align 8
  br label %69

69:                                               ; preds = %61, %32
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %56, %40
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i64 @is_pci_uld(%struct.adapter*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kfree(%struct.uld_msix_info*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
