; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_get_speed_and_duplex_copper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_get_speed_and_duplex_copper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IGC_STATUS = common dso_local global i32 0, align 4
@IGC_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@igc_i225 = common dso_local global i64 0, align 8
@IGC_STATUS_SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"2500 Mbs, \00", align 1
@SPEED_1000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"1000 Mbs, \00", align 1
@IGC_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"100 Mbs, \00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"10 Mbs, \00", align 1
@IGC_STATUS_FD = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_get_speed_and_duplex_copper(%struct.igc_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.igc_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @IGC_STATUS, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IGC_STATUS_SPEED_1000, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %16 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @igc_i225, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IGC_STATUS_SPEED_2500, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @SPEED_2500, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = call i32 @hw_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %34

30:                                               ; preds = %21, %14
  %31 = load i32, i32* @SPEED_1000, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = call i32 @hw_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %26
  br label %49

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IGC_STATUS_SPEED_100, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @SPEED_100, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @SPEED_10, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = call i32 @hw_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IGC_STATUS_FD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @FULL_DUPLEX, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @HALF_DUPLEX, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %61 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %54
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
