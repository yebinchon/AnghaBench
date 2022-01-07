; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_clear_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_clear_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, i32**, i32** }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*)* @ice_vsi_clear_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_clear_rings(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %4 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %4, i32 0, i32 3
  %6 = load i32**, i32*** %5, align 8
  %7 = icmp ne i32** %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %41, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 3
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @rcu, align 4
  %33 = call i32 @kfree_rcu(i32* %31, i32 %32)
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %35 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %34, i32 0, i32 3
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %24, %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %9

44:                                               ; preds = %9
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %47 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %59 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %57
  %67 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %68 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @rcu, align 4
  %75 = call i32 @kfree_rcu(i32* %73, i32 %74)
  %76 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %77 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %66, %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %51

86:                                               ; preds = %51
  br label %87

87:                                               ; preds = %86, %45
  ret void
}

declare dso_local i32 @kfree_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
