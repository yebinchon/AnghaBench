; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_column_from_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_column_from_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_rate = type { i64, i64, i64, i64 }

@ANT_A = common dso_local global i64 0, align 8
@RS_COLUMN_LEGACY_ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i64 0, align 8
@RS_COLUMN_LEGACY_ANT_B = common dso_local global i32 0, align 4
@RS_COLUMN_SISO_ANT_A_SGI = common dso_local global i32 0, align 4
@RS_COLUMN_SISO_ANT_A = common dso_local global i32 0, align 4
@RS_COLUMN_SISO_ANT_B_SGI = common dso_local global i32 0, align 4
@RS_COLUMN_SISO_ANT_B = common dso_local global i32 0, align 4
@RS_COLUMN_MIMO2_SGI = common dso_local global i32 0, align 4
@RS_COLUMN_MIMO2 = common dso_local global i32 0, align 4
@RS_COLUMN_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_rate*)* @rs_get_column_from_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_column_from_rate(%struct.rs_rate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rs_rate*, align 8
  store %struct.rs_rate* %0, %struct.rs_rate** %3, align 8
  %4 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %5 = call i64 @is_legacy(%struct.rs_rate* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %9 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ANT_A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @RS_COLUMN_LEGACY_ANT_A, align 4
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %7
  %16 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %17 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ANT_B, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @RS_COLUMN_LEGACY_ANT_B, align 4
  store i32 %22, i32* %2, align 4
  br label %91

23:                                               ; preds = %15
  br label %89

24:                                               ; preds = %1
  %25 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %26 = call i64 @is_siso(%struct.rs_rate* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %30 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ANT_A, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %36 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %41 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39, %34, %28
  %45 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %46 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @RS_COLUMN_SISO_ANT_A_SGI, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @RS_COLUMN_SISO_ANT_A, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %2, align 4
  br label %91

55:                                               ; preds = %39
  %56 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %57 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ANT_B, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %63 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @RS_COLUMN_SISO_ANT_B_SGI, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @RS_COLUMN_SISO_ANT_B, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %2, align 4
  br label %91

72:                                               ; preds = %55
  br label %89

73:                                               ; preds = %24
  %74 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %75 = call i64 @is_mimo(%struct.rs_rate* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %79 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @RS_COLUMN_MIMO2_SGI, align 4
  br label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @RS_COLUMN_MIMO2, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %2, align 4
  br label %91

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %72, %23
  %90 = load i32, i32* @RS_COLUMN_INVALID, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %86, %70, %53, %21, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @is_legacy(%struct.rs_rate*) #1

declare dso_local i64 @is_siso(%struct.rs_rate*) #1

declare dso_local i64 @is_mimo(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
