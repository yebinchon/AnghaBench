; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_phy_writeby_cr9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_phy_writeby_cr9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i32 }

@PHY_DATA_1 = common dso_local global i32 0, align 4
@PHY_DATA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*, i32, i32, i32)* @phy_writeby_cr9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_writeby_cr9(%struct.uli526x_board_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uli526x_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %17, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 35
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %15 = load i32, i32* @PHY_DATA_1, align 4
  %16 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %14, i32 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %22 = load i32, i32* @PHY_DATA_0, align 4
  %23 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %21, i32 %22)
  %24 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %25 = load i32, i32* @PHY_DATA_1, align 4
  %26 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %24, i32 %25)
  %27 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %28 = load i32, i32* @PHY_DATA_0, align 4
  %29 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %27, i32 %28)
  %30 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %31 = load i32, i32* @PHY_DATA_1, align 4
  %32 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %30, i32 %31)
  store i32 16, i32* %9, align 4
  br label %33

33:                                               ; preds = %49, %20
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @PHY_DATA_1, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @PHY_DATA_0, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %37, i32 %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %33

52:                                               ; preds = %33
  store i32 16, i32* %9, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @PHY_DATA_1, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @PHY_DATA_0, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %57, i32 %67)
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %74 = load i32, i32* @PHY_DATA_1, align 4
  %75 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %73, i32 %74)
  %76 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %77 = load i32, i32* @PHY_DATA_0, align 4
  %78 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %76, i32 %77)
  store i32 32768, i32* %9, align 4
  br label %79

79:                                               ; preds = %95, %72
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @PHY_DATA_1, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @PHY_DATA_0, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @phy_write_1bit(%struct.uli526x_board_info* %83, i32 %93)
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %79

98:                                               ; preds = %79
  ret void
}

declare dso_local i32 @phy_write_1bit(%struct.uli526x_board_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
