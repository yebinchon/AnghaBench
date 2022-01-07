; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_free_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_free_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32*, i32*, i32*, i32*, i32*, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*)* @ice_vsi_free_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_free_arrays(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %4 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %4, i32 0, i32 5
  %6 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  store %struct.ice_pf* %6, %struct.ice_pf** %3, align 8
  %7 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %13 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @devm_kfree(i32* %15, i32* %18)
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %33 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @devm_kfree(i32* %31, i32* %34)
  %36 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %37 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %40 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %49 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @devm_kfree(i32* %47, i32* %50)
  %52 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %53 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %43, %38
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %65 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @devm_kfree(i32* %63, i32* %66)
  %68 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %69 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %59, %54
  %71 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %72 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %77 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %81 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @devm_kfree(i32* %79, i32* %82)
  %84 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %85 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %75, %70
  ret void
}

declare dso_local i32 @devm_kfree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
