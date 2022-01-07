; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_update_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_update_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, %struct.go7007_board_info* }
%struct.go7007_board_info = type { i32, i32, i32, i32, i32, i32 }

@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@GO7007_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@GO7007_STD_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @go7007_update_board(%struct.go7007* %0) #0 {
  %2 = alloca %struct.go7007*, align 8
  %3 = alloca %struct.go7007_board_info*, align 8
  store %struct.go7007* %0, %struct.go7007** %2, align 8
  %4 = load %struct.go7007*, %struct.go7007** %2, align 8
  %5 = getelementptr inbounds %struct.go7007, %struct.go7007* %4, i32 0, i32 7
  %6 = load %struct.go7007_board_info*, %struct.go7007_board_info** %5, align 8
  store %struct.go7007_board_info* %6, %struct.go7007_board_info** %3, align 8
  %7 = load %struct.go7007_board_info*, %struct.go7007_board_info** %3, align 8
  %8 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @GO7007_STD_NTSC, align 4
  %15 = load %struct.go7007*, %struct.go7007** %2, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %18 = load %struct.go7007*, %struct.go7007** %2, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.go7007*, %struct.go7007** %2, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 0
  store i32 720, i32* %21, align 8
  %22 = load %struct.go7007*, %struct.go7007** %2, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 1
  store i32 480, i32* %23, align 4
  %24 = load %struct.go7007*, %struct.go7007** %2, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 2
  store i32 30000, i32* %25, align 8
  br label %45

26:                                               ; preds = %1
  %27 = load i32, i32* @GO7007_STD_OTHER, align 4
  %28 = load %struct.go7007*, %struct.go7007** %2, align 8
  %29 = getelementptr inbounds %struct.go7007, %struct.go7007* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.go7007_board_info*, %struct.go7007_board_info** %3, align 8
  %31 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.go7007*, %struct.go7007** %2, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.go7007_board_info*, %struct.go7007_board_info** %3, align 8
  %36 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.go7007*, %struct.go7007** %2, align 8
  %39 = getelementptr inbounds %struct.go7007, %struct.go7007* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.go7007_board_info*, %struct.go7007_board_info** %3, align 8
  %41 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.go7007*, %struct.go7007** %2, align 8
  %44 = getelementptr inbounds %struct.go7007, %struct.go7007* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %26, %13
  %46 = load %struct.go7007_board_info*, %struct.go7007_board_info** %3, align 8
  %47 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.go7007*, %struct.go7007** %2, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.go7007_board_info*, %struct.go7007_board_info** %3, align 8
  %52 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.go7007*, %struct.go7007** %2, align 8
  %55 = getelementptr inbounds %struct.go7007, %struct.go7007* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
