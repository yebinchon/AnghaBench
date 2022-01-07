; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_find_vsi_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_find_vsi_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64 }
%struct.i40e_pf = type { i32, %struct.i40e_vsi** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %0, i64 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 1
  %16 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %16, i64 %18
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %19, align 8
  %21 = icmp ne %struct.i40e_vsi* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %13
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 1
  %25 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %25, i64 %27
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %28, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %37, i64 %39
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %40, align 8
  store %struct.i40e_vsi* %41, %struct.i40e_vsi** %3, align 8
  br label %47

42:                                               ; preds = %22, %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %7

46:                                               ; preds = %7
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %3, align 8
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  ret %struct.i40e_vsi* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
