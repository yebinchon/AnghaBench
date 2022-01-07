; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_find_vsi_from_seid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_find_vsi_from_seid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64 }
%struct.i40e_vf = type { i32, %struct.TYPE_2__*, %struct.i40e_pf* }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_pf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40e_vsi* (%struct.i40e_vf*, i64)* @i40e_find_vsi_from_seid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40e_vsi* @i40e_find_vsi_from_seid(%struct.i40e_vf* %0, i64 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %9, i32 0, i32 2
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %19, i32 %27)
  store %struct.i40e_vsi* %28, %struct.i40e_vsi** %7, align 8
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %30 = icmp ne %struct.i40e_vsi* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  store %struct.i40e_vsi* %38, %struct.i40e_vsi** %3, align 8
  br label %44

39:                                               ; preds = %31, %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %12

43:                                               ; preds = %12
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %3, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  ret %struct.i40e_vsi* %45
}

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
