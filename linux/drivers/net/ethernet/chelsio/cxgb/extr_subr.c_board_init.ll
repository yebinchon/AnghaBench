; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_board_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_board_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32 }

@A_ELMER0_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.board_info*)* @board_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @board_init(i32* %0, %struct.board_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.board_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.board_info* %1, %struct.board_info** %4, align 8
  %5 = load %struct.board_info*, %struct.board_info** %4, align 8
  %6 = getelementptr inbounds %struct.board_info, %struct.board_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %22 [
    i32 137, label %8
    i32 129, label %8
    i32 128, label %8
    i32 130, label %8
    i32 134, label %14
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @t1_tpi_par(i32* %9, i32 15)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @A_ELMER0_GPO, align 4
  %13 = call i32 @t1_tpi_write(i32* %11, i32 %12, i32 2048)
  br label %22

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @t1_tpi_par(i32* %15, i32 15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @A_ELMER0_GPO, align 4
  %19 = call i32 @t1_tpi_write(i32* %17, i32 %18, i32 6144)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @power_sequence_xpak(i32* %20)
  br label %22

22:                                               ; preds = %2, %14, %8
  ret i32 0
}

declare dso_local i32 @t1_tpi_par(i32*, i32) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

declare dso_local i32 @power_sequence_xpak(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
