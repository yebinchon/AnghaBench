; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_vsi_setup_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_setup_tx_resources(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i1 [ false, %6 ], [ %15, %12 ]
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i40e_setup_tx_descriptors(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %16
  %31 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %32 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i1 [ false, %37 ], [ %46, %43 ]
  br i1 %48, label %49, label %61

49:                                               ; preds = %47
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @i40e_setup_tx_descriptors(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %37

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %34
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @i40e_setup_tx_descriptors(i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
