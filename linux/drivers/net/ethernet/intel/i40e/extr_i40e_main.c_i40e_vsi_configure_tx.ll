; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_vsi_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_configure_tx(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i1 [ false, %6 ], [ %15, %12 ]
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @i40e_configure_tx_ring(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %6

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %34 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %64

38:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i1 [ false, %39 ], [ %48, %45 ]
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %53 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @i40e_configure_tx_ring(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %39

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %36
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @i40e_configure_tx_ring(i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
