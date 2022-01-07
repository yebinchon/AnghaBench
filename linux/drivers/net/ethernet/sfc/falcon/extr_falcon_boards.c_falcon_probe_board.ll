; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_falcon_probe_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_falcon_probe_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ef4_nic = type { i32 }
%struct.falcon_board = type { %struct.TYPE_3__*, i32, i32 }

@board_types = common dso_local global %struct.TYPE_3__* null, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown board type %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_probe_board(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.falcon_board*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %10 = call %struct.falcon_board* @falcon_board(%struct.ef4_nic* %9)
  store %struct.falcon_board* %10, %struct.falcon_board** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @FALCON_BOARD_TYPE(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @FALCON_BOARD_MAJOR(i32 %13)
  %15 = load %struct.falcon_board*, %struct.falcon_board** %6, align 8
  %16 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @FALCON_BOARD_MINOR(i32 %17)
  %19 = load %struct.falcon_board*, %struct.falcon_board** %6, align 8
  %20 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %43, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board_types, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board_types, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board_types, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = load %struct.falcon_board*, %struct.falcon_board** %6, align 8
  %41 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %40, i32 0, i32 0
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  br label %42

42:                                               ; preds = %35, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.falcon_board*, %struct.falcon_board** %6, align 8
  %48 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %54 = load i32, i32* @probe, align 4
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %56 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @netif_err(%struct.ef4_nic* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %51
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.ef4_nic*) #1

declare dso_local i64 @FALCON_BOARD_TYPE(i32) #1

declare dso_local i32 @FALCON_BOARD_MAJOR(i32) #1

declare dso_local i32 @FALCON_BOARD_MINOR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
