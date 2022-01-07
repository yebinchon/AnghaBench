; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_pfow_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_pfow_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }

@lpdd2_nvm_mutex = common dso_local global i32 0, align 4
@PFOW_QUERY_STRING_P = common dso_local global i32 0, align 4
@PFOW_QUERY_STRING_F = common dso_local global i32 0, align 4
@PFOW_QUERY_STRING_O = common dso_local global i32 0, align 4
@PFOW_QUERY_STRING_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*)* @lpddr2_nvm_pfow_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr2_nvm_pfow_present(%struct.map_info* %0) #0 {
  %2 = alloca %struct.map_info*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @lpdd2_nvm_mutex)
  %6 = load %struct.map_info*, %struct.map_info** %2, align 8
  %7 = call i32 @ow_enable(%struct.map_info* %6)
  %8 = load %struct.map_info*, %struct.map_info** %2, align 8
  %9 = load %struct.map_info*, %struct.map_info** %2, align 8
  %10 = load i32, i32* @PFOW_QUERY_STRING_P, align 4
  %11 = call i32 @ow_reg_add(%struct.map_info* %9, i32 %10)
  %12 = call i32 @map_read(%struct.map_info* %8, i32 %11)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load %struct.map_info*, %struct.map_info** %2, align 8
  %15 = load %struct.map_info*, %struct.map_info** %2, align 8
  %16 = load i32, i32* @PFOW_QUERY_STRING_F, align 4
  %17 = call i32 @ow_reg_add(%struct.map_info* %15, i32 %16)
  %18 = call i32 @map_read(%struct.map_info* %14, i32 %17)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.map_info*, %struct.map_info** %2, align 8
  %21 = load %struct.map_info*, %struct.map_info** %2, align 8
  %22 = load i32, i32* @PFOW_QUERY_STRING_O, align 4
  %23 = call i32 @ow_reg_add(%struct.map_info* %21, i32 %22)
  %24 = call i32 @map_read(%struct.map_info* %20, i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %24, i32* %25, align 8
  %26 = load %struct.map_info*, %struct.map_info** %2, align 8
  %27 = load %struct.map_info*, %struct.map_info** %2, align 8
  %28 = load i32, i32* @PFOW_QUERY_STRING_W, align 4
  %29 = call i32 @ow_reg_add(%struct.map_info* %27, i32 %28)
  %30 = call i32 @map_read(%struct.map_info* %26, i32 %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.map_info*, %struct.map_info** %2, align 8
  %33 = call i32 @build_map_word(i8 signext 80)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = call i32 @map_word_equal(%struct.map_info* %32, i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.map_info*, %struct.map_info** %2, align 8
  %41 = call i32 @build_map_word(i8 signext 70)
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @map_word_equal(%struct.map_info* %40, i32 %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.map_info*, %struct.map_info** %2, align 8
  %49 = call i32 @build_map_word(i8 signext 79)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @map_word_equal(%struct.map_info* %48, i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load %struct.map_info*, %struct.map_info** %2, align 8
  %57 = call i32 @build_map_word(i8 signext 87)
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @map_word_equal(%struct.map_info* %56, i32 %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55
  %64 = load %struct.map_info*, %struct.map_info** %2, align 8
  %65 = call i32 @ow_disable(%struct.map_info* %64)
  %66 = call i32 @mutex_unlock(i32* @lpdd2_nvm_mutex)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ow_enable(%struct.map_info*) #1

declare dso_local i32 @map_read(%struct.map_info*, i32) #1

declare dso_local i32 @ow_reg_add(%struct.map_info*, i32) #1

declare dso_local i32 @map_word_equal(%struct.map_info*, i32, i32) #1

declare dso_local i32 @build_map_word(i8 signext) #1

declare dso_local i32 @ow_disable(%struct.map_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
