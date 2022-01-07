; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_column_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_column_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_rate = type { i64, i64, i64, i64, i64, i64 }

@ANT_A = common dso_local global i64 0, align 8
@ANT_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_rate*, %struct.rs_rate*)* @rs_rate_column_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_rate_column_match(%struct.rs_rate* %0, %struct.rs_rate* %1) #0 {
  %3 = alloca %struct.rs_rate*, align 8
  %4 = alloca %struct.rs_rate*, align 8
  %5 = alloca i32, align 4
  store %struct.rs_rate* %0, %struct.rs_rate** %3, align 8
  store %struct.rs_rate* %1, %struct.rs_rate** %4, align 8
  %6 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %7 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %12 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10, %2
  %16 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %17 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ANT_A, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %23 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ANT_B, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ true, %15 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %10
  %31 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %32 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %35 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %27
  %40 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %41 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %44 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %49 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %52 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.rs_rate*, %struct.rs_rate** %3, align 8
  %57 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %60 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %55, %47, %39
  %67 = phi i1 [ false, %55 ], [ false, %47 ], [ false, %39 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
