; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_mps.c_cxgb4_alloc_encap_mac_filt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_mps.c_cxgb4_alloc_encap_mac_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_alloc_encap_mac_filt(%struct.adapter* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load %struct.adapter*, %struct.adapter** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %19, align 4
  %30 = call i32 @t4_alloc_encap_mac_filt(%struct.adapter* %21, i32 %22, i32* %23, i32* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %9
  %34 = load i32, i32* %20, align 4
  store i32 %34, i32* %10, align 4
  br label %52

35:                                               ; preds = %9
  %36 = load %struct.adapter*, %struct.adapter** %11, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %20, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = call i64 @cxgb4_mps_ref_inc(%struct.adapter* %36, i32* %37, i32 %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %20, align 4
  %45 = load %struct.adapter*, %struct.adapter** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %19, align 4
  %49 = call i32 @t4_free_encap_mac_filt(%struct.adapter* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %35
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %33
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @t4_alloc_encap_mac_filt(%struct.adapter*, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cxgb4_mps_ref_inc(%struct.adapter*, i32*, i32, i32*) #1

declare dso_local i32 @t4_free_encap_mac_filt(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
