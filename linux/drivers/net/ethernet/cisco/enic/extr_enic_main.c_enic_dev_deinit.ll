; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_dev_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_dev_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32*, i32 }

@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_dev_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_dev_deinit(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.enic*, %struct.enic** %2, align 8
  %7 = getelementptr inbounds %struct.enic, %struct.enic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load %struct.enic*, %struct.enic** %2, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @napi_hash_del(i32* %16)
  %18 = load %struct.enic*, %struct.enic** %2, align 8
  %19 = getelementptr inbounds %struct.enic, %struct.enic* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @netif_napi_del(i32* %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  %29 = load %struct.enic*, %struct.enic** %2, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @vnic_dev_get_intr_mode(i32 %31)
  %33 = load i64, i64* @VNIC_DEV_INTR_MODE_MSIX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.enic*, %struct.enic** %2, align 8
  %39 = getelementptr inbounds %struct.enic, %struct.enic* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.enic*, %struct.enic** %2, align 8
  %44 = getelementptr inbounds %struct.enic, %struct.enic* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.enic*, %struct.enic** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @enic_cq_wq(%struct.enic* %46, i32 %47)
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = call i32 @netif_napi_del(i32* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.enic*, %struct.enic** %2, align 8
  %57 = call i32 @enic_free_vnic_resources(%struct.enic* %56)
  %58 = load %struct.enic*, %struct.enic** %2, align 8
  %59 = call i32 @enic_clear_intr_mode(%struct.enic* %58)
  %60 = load %struct.enic*, %struct.enic** %2, align 8
  %61 = call i32 @enic_free_affinity_hint(%struct.enic* %60)
  ret void
}

declare dso_local i32 @napi_hash_del(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i64 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i64 @enic_cq_wq(%struct.enic*, i32) #1

declare dso_local i32 @enic_free_vnic_resources(%struct.enic*) #1

declare dso_local i32 @enic_clear_intr_mode(%struct.enic*) #1

declare dso_local i32 @enic_free_affinity_hint(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
