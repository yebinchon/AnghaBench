; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram_ext_dirs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram_ext_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.code_entry = type { i32, i32 }

@NVRAM_DIR_OFFSET = common dso_local global i32 0, align 4
@CODE_ENTRY_EXTENDED_DIR_IDX = common dso_local global i32 0, align 4
@MAX_IMAGES_IN_EXTENDED_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32*)* @bnx2x_test_nvram_ext_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_nvram_ext_dirs(%struct.bnx2x* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.code_entry, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @NVRAM_DIR_OFFSET, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* @CODE_ENTRY_EXTENDED_DIR_IDX, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = add i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = bitcast %struct.code_entry* %9 to i32*
  %21 = call i32 @bnx2x_nvram_read32(%struct.bnx2x* %12, i32 %19, i32* %20, i32 8)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.code_entry, %struct.code_entry* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXTENDED_DIR_EXISTS(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %75

32:                                               ; preds = %26
  %33 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %34 = getelementptr inbounds %struct.code_entry, %struct.code_entry* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bnx2x_nvram_read32(%struct.bnx2x* %33, i32 %35, i32* %7, i32 4)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.code_entry, %struct.code_entry* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 8
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %71, %41
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @MAX_IMAGES_IN_EXTENDED_DIR, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %74

55:                                               ; preds = %53
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = add i64 %58, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @bnx2x_test_dir_entry(%struct.bnx2x* %56, i32 %63, i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %45

74:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %68, %39, %31, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @bnx2x_nvram_read32(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @EXTENDED_DIR_EXISTS(i32) #1

declare dso_local i32 @bnx2x_test_dir_entry(%struct.bnx2x*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
