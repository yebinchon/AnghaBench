; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_disp_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_disp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SOLO_VO_DISP_CTRL = common dso_local global i32 0, align 4
@SOLO_VO_ZOOM_CTRL = common dso_local global i32 0, align 4
@SOLO_VO_FREEZE_CTRL = common dso_local global i32 0, align 4
@SOLO_VO_BORDER_LINE_MASK = common dso_local global i32 0, align 4
@SOLO_VO_BORDER_FILL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_disp_exit(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = load i32, i32* @SOLO_VO_DISP_CTRL, align 4
  %6 = call i32 @solo_reg_write(%struct.solo_dev* %4, i32 %5, i32 0)
  %7 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %8 = load i32, i32* @SOLO_VO_ZOOM_CTRL, align 4
  %9 = call i32 @solo_reg_write(%struct.solo_dev* %7, i32 %8, i32 0)
  %10 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %11 = load i32, i32* @SOLO_VO_FREEZE_CTRL, align 4
  %12 = call i32 @solo_reg_write(%struct.solo_dev* %10, i32 %11, i32 0)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %16 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SOLO_VI_WIN_CTRL0(i32 %21)
  %23 = call i32 @solo_reg_write(%struct.solo_dev* %20, i32 %22, i32 0)
  %24 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @SOLO_VI_WIN_CTRL1(i32 %25)
  %27 = call i32 @solo_reg_write(%struct.solo_dev* %24, i32 %26, i32 0)
  %28 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @SOLO_VI_WIN_ON(i32 %29)
  %31 = call i32 @solo_reg_write(%struct.solo_dev* %28, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %44, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @SOLO_VO_BORDER_X(i32 %41)
  %43 = call i32 @solo_reg_write(%struct.solo_dev* %40, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %36

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @SOLO_VO_BORDER_Y(i32 %53)
  %55 = call i32 @solo_reg_write(%struct.solo_dev* %52, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %48

59:                                               ; preds = %48
  %60 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %61 = load i32, i32* @SOLO_VO_BORDER_LINE_MASK, align 4
  %62 = call i32 @solo_reg_write(%struct.solo_dev* %60, i32 %61, i32 0)
  %63 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %64 = load i32, i32* @SOLO_VO_BORDER_FILL_MASK, align 4
  %65 = call i32 @solo_reg_write(%struct.solo_dev* %63, i32 %64, i32 0)
  %66 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %67 = call i32 @SOLO_VO_RECTANGLE_CTRL(i32 0)
  %68 = call i32 @solo_reg_write(%struct.solo_dev* %66, i32 %67, i32 0)
  %69 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %70 = call i32 @SOLO_VO_RECTANGLE_START(i32 0)
  %71 = call i32 @solo_reg_write(%struct.solo_dev* %69, i32 %70, i32 0)
  %72 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %73 = call i32 @SOLO_VO_RECTANGLE_STOP(i32 0)
  %74 = call i32 @solo_reg_write(%struct.solo_dev* %72, i32 %73, i32 0)
  %75 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %76 = call i32 @SOLO_VO_RECTANGLE_CTRL(i32 1)
  %77 = call i32 @solo_reg_write(%struct.solo_dev* %75, i32 %76, i32 0)
  %78 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %79 = call i32 @SOLO_VO_RECTANGLE_START(i32 1)
  %80 = call i32 @solo_reg_write(%struct.solo_dev* %78, i32 %79, i32 0)
  %81 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %82 = call i32 @SOLO_VO_RECTANGLE_STOP(i32 1)
  %83 = call i32 @solo_reg_write(%struct.solo_dev* %81, i32 %82, i32 0)
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VI_WIN_CTRL0(i32) #1

declare dso_local i32 @SOLO_VI_WIN_CTRL1(i32) #1

declare dso_local i32 @SOLO_VI_WIN_ON(i32) #1

declare dso_local i32 @SOLO_VO_BORDER_X(i32) #1

declare dso_local i32 @SOLO_VO_BORDER_Y(i32) #1

declare dso_local i32 @SOLO_VO_RECTANGLE_CTRL(i32) #1

declare dso_local i32 @SOLO_VO_RECTANGLE_START(i32) #1

declare dso_local i32 @SOLO_VO_RECTANGLE_STOP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
