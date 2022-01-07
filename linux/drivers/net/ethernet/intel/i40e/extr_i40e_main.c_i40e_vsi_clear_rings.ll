; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_clear_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_clear_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32**, i32**, i32** }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_clear_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_clear_rings(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 3
  %6 = load i32**, i32*** %5, align 8
  %7 = icmp ne i32** %6, null
  br i1 %7, label %8, label %60

8:                                                ; preds = %1
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %60

15:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %56, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @rcu, align 4
  %31 = call i32 @kfree_rcu(i32* %29, i32 %30)
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 3
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* null, i32** %37, align 8
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %22
  %49 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %50 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %22
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %16

59:                                               ; preds = %16
  br label %60

60:                                               ; preds = %59, %8, %1
  ret void
}

declare dso_local i32 @kfree_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
