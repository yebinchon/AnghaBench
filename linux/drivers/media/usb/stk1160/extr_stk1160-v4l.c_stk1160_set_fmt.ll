; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }
%struct.stk1160_decimate_ctrl = type { i64, i64, i32, i32, i64, i64 }

@STK1160_DEC_UNIT_SIZE = common dso_local global i32 0, align 4
@STK1160_H_DEC_EN = common dso_local global i32 0, align 4
@STK1160_V_DEC_EN = common dso_local global i32 0, align 4
@STK1160_DECIMATE_MORE_THAN_HALF = common dso_local global i64 0, align 8
@STK1160_H_DEC_MODE = common dso_local global i32 0, align 4
@STK1160_V_DEC_MODE = common dso_local global i32 0, align 4
@STK1160_DMCTRL_H_UNITS = common dso_local global i32 0, align 4
@STK1160_DMCTRL_V_UNITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"decimate 0x%x, column units %d, row units %d\0A\00", align 1
@STK1160_DMCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stk1160*, %struct.stk1160_decimate_ctrl*)* @stk1160_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1160_set_fmt(%struct.stk1160* %0, %struct.stk1160_decimate_ctrl* %1) #0 {
  %3 = alloca %struct.stk1160*, align 8
  %4 = alloca %struct.stk1160_decimate_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  store %struct.stk1160_decimate_ctrl* %1, %struct.stk1160_decimate_ctrl** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %7 = icmp ne %struct.stk1160_decimate_ctrl* %6, null
  br i1 %7, label %8, label %78

8:                                                ; preds = %2
  %9 = load i32, i32* @STK1160_DEC_UNIT_SIZE, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @STK1160_H_DEC_EN, align 4
  br label %19

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @STK1160_V_DEC_EN, align 4
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STK1160_DECIMATE_MORE_THAN_HALF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @STK1160_H_DEC_MODE, align 4
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %47 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STK1160_DECIMATE_MORE_THAN_HALF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @STK1160_V_DEC_MODE, align 4
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %59 = load i32, i32* @STK1160_DMCTRL_H_UNITS, align 4
  %60 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %61 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @stk1160_write_reg(%struct.stk1160* %58, i32 %59, i32 %62)
  %64 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %65 = load i32, i32* @STK1160_DMCTRL_V_UNITS, align 4
  %66 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %67 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @stk1160_write_reg(%struct.stk1160* %64, i32 %65, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %72 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.stk1160_decimate_ctrl*, %struct.stk1160_decimate_ctrl** %4, align 8
  %75 = getelementptr inbounds %struct.stk1160_decimate_ctrl, %struct.stk1160_decimate_ctrl* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @stk1160_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %54, %2
  %79 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %80 = load i32, i32* @STK1160_DMCTRL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @stk1160_write_reg(%struct.stk1160* %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i32, i32) #1

declare dso_local i32 @stk1160_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
