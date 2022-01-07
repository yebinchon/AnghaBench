; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_matching_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_matching_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_bar = type { i64, i32, i32 }

@NFP_CPP_ACTION_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_bar*, i32, i32, i32, i64, i64, i32)* @matching_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matching_bar(%struct.nfp_bar* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_bar*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nfp_bar* %0, %struct.nfp_bar** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %22 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType_of(i32 %23)
  store i32 %24, i32* %20, align 4
  %25 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %26 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress_of(i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %30 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress_of(i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %34 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NFP_PCIE_BAR_PCIE2CPP_Action_BaseAddress_of(i32 %35)
  store i32 %36, i32* %17, align 4
  %37 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %38 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_of(i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  switch i32 %41, label %45 [
    i32 132, label %42
    i32 131, label %43
    i32 133, label %44
  ]

42:                                               ; preds = %7
  store i32 4, i32* %19, align 4
  br label %46

43:                                               ; preds = %7
  store i32 8, i32* %19, align 4
  br label %46

44:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  br label %46

45:                                               ; preds = %7
  store i32 -1, i32* %19, align 4
  br label %46

46:                                               ; preds = %45, %44, %43, %42
  %47 = load i32, i32* %20, align 4
  switch i32 %47, label %57 [
    i32 128, label %48
    i32 130, label %49
    i32 129, label %56
  ]

48:                                               ; preds = %46
  store i32 -1, i32* %18, align 4
  br label %49

49:                                               ; preds = %46, %48
  %50 = load i32, i32* @NFP_CPP_ACTION_RW, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @NFP_CPP_ACTION_RW, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %46, %55
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %103

58:                                               ; preds = %56
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %103

63:                                               ; preds = %58
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %83 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %89 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nfp_bar*, %struct.nfp_bar** %9, align 8
  %92 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 1, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %90, %95
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %97, %98
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  store i32 1, i32* %8, align 4
  br label %103

102:                                              ; preds = %87, %81, %77, %73, %66
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %101, %62, %57
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_MapType_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_Action_BaseAddress_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
