; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_mi1_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_mi1_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32, i32, i32, i32, i32 }

@F_MI1_PREAMBLE_ENABLE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@A_ELMER0_PORT0_MI1_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.board_info*)* @mi1_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mi1_mdio_init(i32* %0, %struct.board_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.board_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.board_info* %1, %struct.board_info** %4, align 8
  %7 = load %struct.board_info*, %struct.board_info** %4, align 8
  %8 = getelementptr inbounds %struct.board_info, %struct.board_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.board_info*, %struct.board_info** %4, align 8
  %11 = getelementptr inbounds %struct.board_info, %struct.board_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 2, %12
  %14 = sdiv i32 %9, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @F_MI1_PREAMBLE_ENABLE, align 4
  %17 = load %struct.board_info*, %struct.board_info** %4, align 8
  %18 = getelementptr inbounds %struct.board_info, %struct.board_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @V_MI1_MDI_INVERT(i32 %19)
  %21 = or i32 %16, %20
  %22 = load %struct.board_info*, %struct.board_info** %4, align 8
  %23 = getelementptr inbounds %struct.board_info, %struct.board_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @V_MI1_MDI_ENABLE(i32 %24)
  %26 = or i32 %21, %25
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @V_MI1_CLK_DIV(i32 %27)
  %29 = or i32 %26, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.board_info*, %struct.board_info** %4, align 8
  %31 = getelementptr inbounds %struct.board_info, %struct.board_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %2
  %37 = call i32 @V_MI1_SOF(i32 1)
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @A_ELMER0_PORT0_MI1_CFG, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @t1_tpi_write(i32* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @V_MI1_MDI_INVERT(i32) #1

declare dso_local i32 @V_MI1_MDI_ENABLE(i32) #1

declare dso_local i32 @V_MI1_CLK_DIV(i32) #1

declare dso_local i32 @V_MI1_SOF(i32) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
