; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram_dirs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NVRAM_DIR_OFFSET = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NVRAM DIRS CRC test-set\0A\00", align 1
@CODE_ENTRY_EXTENDED_DIR_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32*)* @bnx2x_test_nvram_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_nvram_dirs(%struct.bnx2x* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @NVRAM_DIR_OFFSET, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %11 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @DP(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %34, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CODE_ENTRY_EXTENDED_DIR_IDX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = add i64 %21, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @bnx2x_test_dir_entry(%struct.bnx2x* %19, i32 %26, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @bnx2x_test_nvram_ext_dirs(%struct.bnx2x* %38, i32* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_test_dir_entry(%struct.bnx2x*, i32, i32*) #1

declare dso_local i32 @bnx2x_test_nvram_ext_dirs(%struct.bnx2x*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
