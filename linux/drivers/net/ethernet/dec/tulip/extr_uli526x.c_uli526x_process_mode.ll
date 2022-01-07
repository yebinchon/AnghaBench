; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_process_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_process_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i32, i32, i32, i32, i32, %struct.uli_phy_ops }
%struct.uli_phy_ops = type { i32 (%struct.uli526x_board_info.0*, i32, i32)*, i32 (%struct.uli526x_board_info.1*, i32, i32, i32)* }
%struct.uli526x_board_info.0 = type opaque
%struct.uli526x_board_info.1 = type opaque

@CR6_FDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*)* @uli526x_process_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_process_mode(%struct.uli526x_board_info* %0) #0 {
  %2 = alloca %struct.uli526x_board_info*, align 8
  %3 = alloca %struct.uli_phy_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %2, align 8
  %5 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %6 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %5, i32 0, i32 5
  store %struct.uli_phy_ops* %6, %struct.uli_phy_ops** %3, align 8
  %7 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %8 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @CR6_FDM, align 4
  %14 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %15 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @CR6_FDM, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %22 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %27 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %30 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @update_cr6(i32 %28, i32 %31)
  %33 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %34 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %25
  %39 = load %struct.uli_phy_ops*, %struct.uli_phy_ops** %3, align 8
  %40 = getelementptr inbounds %struct.uli_phy_ops, %struct.uli_phy_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.uli526x_board_info.0*, i32, i32)*, i32 (%struct.uli526x_board_info.0*, i32, i32)** %40, align 8
  %42 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %43 = bitcast %struct.uli526x_board_info* %42 to %struct.uli526x_board_info.0*
  %44 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %45 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %41(%struct.uli526x_board_info.0* %43, i32 %46, i32 6)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  %52 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %53 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %59 [
    i32 128, label %55
    i32 129, label %56
    i32 130, label %57
    i32 131, label %58
  ]

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %59

56:                                               ; preds = %51
  store i32 256, i32* %4, align 4
  br label %59

57:                                               ; preds = %51
  store i32 8192, i32* %4, align 4
  br label %59

58:                                               ; preds = %51
  store i32 8448, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %58, %57, %56, %55
  %60 = load %struct.uli_phy_ops*, %struct.uli_phy_ops** %3, align 8
  %61 = getelementptr inbounds %struct.uli_phy_ops, %struct.uli_phy_ops* %60, i32 0, i32 1
  %62 = load i32 (%struct.uli526x_board_info.1*, i32, i32, i32)*, i32 (%struct.uli526x_board_info.1*, i32, i32, i32)** %61, align 8
  %63 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %64 = bitcast %struct.uli526x_board_info* %63 to %struct.uli526x_board_info.1*
  %65 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %66 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 %62(%struct.uli526x_board_info.1* %64, i32 %67, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %59, %38
  br label %71

71:                                               ; preds = %70, %25
  ret void
}

declare dso_local i32 @update_cr6(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
