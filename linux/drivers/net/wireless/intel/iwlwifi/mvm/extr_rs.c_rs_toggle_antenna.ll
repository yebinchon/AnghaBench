; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_toggle_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_toggle_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_rate = type { i32 }

@ANT_C = common dso_local global i32 0, align 4
@ant_toggle_lookup = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rs_rate*)* @rs_toggle_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_toggle_antenna(i32 %0, %struct.rs_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rs_rate*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rs_rate* %1, %struct.rs_rate** %5, align 8
  %7 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %8 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %13 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ANT_C, align 4
  %16 = and i32 %14, %15
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %70

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %23 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = call i32 @rs_is_valid_ant(i32 %21, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %70

29:                                               ; preds = %20
  %30 = load i64*, i64** @ant_toggle_lookup, align 8
  %31 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %32 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %52, %29
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %40 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @rs_is_valid_ant(i32 %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %37
  %51 = phi i1 [ false, %37 ], [ %49, %44 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = load i64*, i64** @ant_toggle_lookup, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  br label %37

57:                                               ; preds = %50
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %60 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %70

65:                                               ; preds = %57
  %66 = load i64, i64* %6, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %69 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %64, %28, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rs_is_valid_ant(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
