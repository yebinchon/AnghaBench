; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_set_phyxcer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_set_phyxcer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i32, i32, i32, %struct.uli_phy_ops }
%struct.uli_phy_ops = type { i32 (%struct.uli526x_board_info.0*, i32, i32)*, i32 (%struct.uli526x_board_info.1*, i32, i32, i32)* }
%struct.uli526x_board_info.0 = type opaque
%struct.uli526x_board_info.1 = type opaque

@ULI526X_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*)* @uli526x_set_phyxcer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_set_phyxcer(%struct.uli526x_board_info* %0) #0 {
  %2 = alloca %struct.uli526x_board_info*, align 8
  %3 = alloca %struct.uli_phy_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %2, align 8
  %5 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %6 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %5, i32 0, i32 3
  store %struct.uli_phy_ops* %6, %struct.uli_phy_ops** %3, align 8
  %7 = load %struct.uli_phy_ops*, %struct.uli_phy_ops** %3, align 8
  %8 = getelementptr inbounds %struct.uli_phy_ops, %struct.uli_phy_ops* %7, i32 0, i32 0
  %9 = load i32 (%struct.uli526x_board_info.0*, i32, i32)*, i32 (%struct.uli526x_board_info.0*, i32, i32)** %8, align 8
  %10 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %11 = bitcast %struct.uli526x_board_info* %10 to %struct.uli526x_board_info.0*
  %12 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %13 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 %9(%struct.uli526x_board_info.0* %11, i32 %14, i32 4)
  %16 = and i32 %15, -481
  store i32 %16, i32* %4, align 4
  %17 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %18 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ULI526X_AUTO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %25 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %31 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %45 [
    i32 128, label %33
    i32 129, label %36
    i32 130, label %39
    i32 131, label %42
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, 32
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 64
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 128
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 256
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %29, %42, %39, %36, %33
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 480
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %52 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @ULI526X_AUTO, align 4
  %57 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %58 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %50, %46
  %62 = load %struct.uli_phy_ops*, %struct.uli_phy_ops** %3, align 8
  %63 = getelementptr inbounds %struct.uli_phy_ops, %struct.uli_phy_ops* %62, i32 0, i32 1
  %64 = load i32 (%struct.uli526x_board_info.1*, i32, i32, i32)*, i32 (%struct.uli526x_board_info.1*, i32, i32, i32)** %63, align 8
  %65 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %66 = bitcast %struct.uli526x_board_info* %65 to %struct.uli526x_board_info.1*
  %67 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %68 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 %64(%struct.uli526x_board_info.1* %66, i32 %69, i32 4, i32 %70)
  %72 = load %struct.uli_phy_ops*, %struct.uli_phy_ops** %3, align 8
  %73 = getelementptr inbounds %struct.uli_phy_ops, %struct.uli_phy_ops* %72, i32 0, i32 1
  %74 = load i32 (%struct.uli526x_board_info.1*, i32, i32, i32)*, i32 (%struct.uli526x_board_info.1*, i32, i32, i32)** %73, align 8
  %75 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %76 = bitcast %struct.uli526x_board_info* %75 to %struct.uli526x_board_info.1*
  %77 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %78 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %74(%struct.uli526x_board_info.1* %76, i32 %79, i32 0, i32 4608)
  %81 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
