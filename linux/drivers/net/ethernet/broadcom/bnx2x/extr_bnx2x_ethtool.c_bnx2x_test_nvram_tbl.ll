; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.crc_pair = type { i64, i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nvram_tbl[%d] has failed crc test (rc %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.crc_pair*, i32*)* @bnx2x_test_nvram_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_nvram_tbl(%struct.bnx2x* %0, %struct.crc_pair* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.crc_pair*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.crc_pair* %1, %struct.crc_pair** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %45, %3
  %11 = load %struct.crc_pair*, %struct.crc_pair** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.crc_pair, %struct.crc_pair* %11, i64 %13
  %15 = getelementptr inbounds %struct.crc_pair, %struct.crc_pair* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %10
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load %struct.crc_pair*, %struct.crc_pair** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.crc_pair, %struct.crc_pair* %20, i64 %22
  %24 = getelementptr inbounds %struct.crc_pair, %struct.crc_pair* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.crc_pair*, %struct.crc_pair** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.crc_pair, %struct.crc_pair* %26, i64 %28
  %30 = getelementptr inbounds %struct.crc_pair, %struct.crc_pair* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @bnx2x_nvram_crc(%struct.bnx2x* %19, i32 %25, i64 %31, i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %18
  %37 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %38 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DP(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %10

48:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @bnx2x_nvram_crc(%struct.bnx2x*, i32, i64, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
