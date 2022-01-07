; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_release_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_release_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.board_info = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.board_info*)* @dm9000_release_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_release_board(%struct.platform_device* %0, %struct.board_info* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.board_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.board_info* %1, %struct.board_info** %4, align 8
  %5 = load %struct.board_info*, %struct.board_info** %4, align 8
  %6 = getelementptr inbounds %struct.board_info, %struct.board_info* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @iounmap(i32 %7)
  %9 = load %struct.board_info*, %struct.board_info** %4, align 8
  %10 = getelementptr inbounds %struct.board_info, %struct.board_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @iounmap(i32 %11)
  %13 = load %struct.board_info*, %struct.board_info** %4, align 8
  %14 = getelementptr inbounds %struct.board_info, %struct.board_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.board_info*, %struct.board_info** %4, align 8
  %19 = getelementptr inbounds %struct.board_info, %struct.board_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @release_resource(i64 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.board_info*, %struct.board_info** %4, align 8
  %24 = getelementptr inbounds %struct.board_info, %struct.board_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @kfree(i64 %25)
  %27 = load %struct.board_info*, %struct.board_info** %4, align 8
  %28 = getelementptr inbounds %struct.board_info, %struct.board_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.board_info*, %struct.board_info** %4, align 8
  %33 = getelementptr inbounds %struct.board_info, %struct.board_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @release_resource(i64 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.board_info*, %struct.board_info** %4, align 8
  %38 = getelementptr inbounds %struct.board_info, %struct.board_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @kfree(i64 %39)
  ret void
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i64) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
