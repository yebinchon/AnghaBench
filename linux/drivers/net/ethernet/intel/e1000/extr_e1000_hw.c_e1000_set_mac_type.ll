; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i32, i32 }

@e1000_82542_rev2_0 = common dso_local global i32 0, align 4
@e1000_82542_rev2_1 = common dso_local global i32 0, align 4
@E1000_ERR_MAC_TYPE = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i32 0, align 4
@e1000_82545 = common dso_local global i32 0, align 4
@e1000_82545_rev_3 = common dso_local global i32 0, align 4
@e1000_82546 = common dso_local global i32 0, align 4
@e1000_82546_rev_3 = common dso_local global i32 0, align 4
@e1000_ce4100 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_set_mac_type(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %67 [
    i32 156, label %7
    i32 154, label %23
    i32 155, label %23
    i32 153, label %27
    i32 152, label %27
    i32 151, label %27
    i32 150, label %27
    i32 168, label %31
    i32 167, label %31
    i32 166, label %31
    i32 165, label %31
    i32 164, label %31
    i32 149, label %35
    i32 148, label %35
    i32 147, label %39
    i32 146, label %39
    i32 145, label %39
    i32 144, label %43
    i32 143, label %43
    i32 142, label %43
    i32 141, label %47
    i32 140, label %47
    i32 136, label %47
    i32 139, label %47
    i32 138, label %47
    i32 137, label %47
    i32 163, label %51
    i32 162, label %51
    i32 160, label %51
    i32 161, label %54
    i32 159, label %54
    i32 158, label %54
    i32 157, label %54
    i32 135, label %57
    i32 134, label %57
    i32 133, label %60
    i32 132, label %63
  ]

7:                                                ; preds = %1
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 170, label %11
    i32 169, label %15
  ]

11:                                               ; preds = %7
  %12 = load i32, i32* @e1000_82542_rev2_0, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %22

15:                                               ; preds = %7
  %16 = load i32, i32* @e1000_82542_rev2_1, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %22

19:                                               ; preds = %7
  %20 = load i32, i32* @E1000_ERR_MAC_TYPE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %15, %11
  br label %70

23:                                               ; preds = %1, %1
  %24 = load i32, i32* @e1000_82543, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %70

27:                                               ; preds = %1, %1, %1, %1
  %28 = load i32, i32* @e1000_82544, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %70

31:                                               ; preds = %1, %1, %1, %1, %1
  %32 = load i32, i32* @e1000_82540, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %70

35:                                               ; preds = %1, %1
  %36 = load i32, i32* @e1000_82545, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %70

39:                                               ; preds = %1, %1, %1
  %40 = load i32, i32* @e1000_82545_rev_3, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %70

43:                                               ; preds = %1, %1, %1
  %44 = load i32, i32* @e1000_82546, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %70

47:                                               ; preds = %1, %1, %1, %1, %1, %1
  %48 = load i32, i32* @e1000_82546_rev_3, align 4
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %70

51:                                               ; preds = %1, %1, %1
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 1
  store i32 131, i32* %53, align 4
  br label %70

54:                                               ; preds = %1, %1, %1, %1
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 1
  store i32 130, i32* %56, align 4
  br label %70

57:                                               ; preds = %1, %1
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 1
  store i32 129, i32* %59, align 4
  br label %70

60:                                               ; preds = %1
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  store i32 128, i32* %62, align 4
  br label %70

63:                                               ; preds = %1
  %64 = load i32, i32* @e1000_ce4100, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %70

67:                                               ; preds = %1
  %68 = load i32, i32* @E1000_ERR_MAC_TYPE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %98

70:                                               ; preds = %63, %60, %57, %54, %51, %47, %43, %39, %35, %31, %27, %23, %22
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %77 [
    i32 131, label %74
    i32 129, label %74
    i32 130, label %74
    i32 128, label %74
  ]

74:                                               ; preds = %70, %70, %70, %70
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 2
  store i32 1, i32* %76, align 4
  br label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %74
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @e1000_82543, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @e1000_82544, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 4
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %67, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
