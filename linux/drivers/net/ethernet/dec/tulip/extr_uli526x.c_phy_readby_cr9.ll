; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_phy_readby_cr9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_phy_readby_cr9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i32 }

@PHY_DATA_1 = common dso_local global i32 0, align 4
@PHY_DATA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uli526x_board_info*, i32, i32)* @phy_readby_cr9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_readby_cr9(%struct.uli526x_board_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uli526x_board_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %16, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 35
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %14 = load i32, i32* @PHY_DATA_1, align 4
  %15 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %13, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %21 = load i32, i32* @PHY_DATA_0, align 4
  %22 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %20, i32 %21)
  %23 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %24 = load i32, i32* @PHY_DATA_1, align 4
  %25 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %23, i32 %24)
  %26 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %27 = load i32, i32* @PHY_DATA_1, align 4
  %28 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %26, i32 %27)
  %29 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %30 = load i32, i32* @PHY_DATA_0, align 4
  %31 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %29, i32 %30)
  store i32 16, i32* %8, align 4
  br label %32

32:                                               ; preds = %48, %19
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PHY_DATA_1, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @PHY_DATA_0, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %36, i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %32

51:                                               ; preds = %32
  store i32 16, i32* %8, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @PHY_DATA_1, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @PHY_DATA_0, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %56, i32 %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %73 = call i32 @phy_read_1bit(%struct.uli526x_board_info* %72)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %84, %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %81 = call i32 @phy_read_1bit(%struct.uli526x_board_info* %80)
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %74

87:                                               ; preds = %74
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @phy_write_1bit(%struct.uli526x_board_info*, i32) #1

declare dso_local i32 @phy_read_1bit(%struct.uli526x_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
