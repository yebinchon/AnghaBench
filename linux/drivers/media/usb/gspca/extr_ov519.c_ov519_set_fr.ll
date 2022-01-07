; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov519_set_fr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov519_set_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@ov519_set_fr.fr_tb = internal constant [2 x [6 x [3 x i32]]] [[6 x [3 x i32]] [[3 x i32] [i32 4, i32 255, i32 0], [3 x i32] [i32 4, i32 31, i32 0], [3 x i32] [i32 4, i32 27, i32 0], [3 x i32] [i32 4, i32 21, i32 0], [3 x i32] [i32 4, i32 9, i32 0], [3 x i32] [i32 4, i32 1, i32 0]], [6 x [3 x i32]] [[3 x i32] [i32 12, i32 255, i32 0], [3 x i32] [i32 12, i32 31, i32 0], [3 x i32] [i32 12, i32 27, i32 0], [3 x i32] [i32 4, i32 255, i32 1], [3 x i32] [i32 4, i32 31, i32 1], [3 x i32] [i32 4, i32 27, i32 1]]], align 16
@frame_rate = common dso_local global i64 0, align 8
@SEN_OV7660 = common dso_local global i64 0, align 8
@OV7670_R11_CLKRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov519_set_fr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov519_set_fr(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = load i64, i64* @frame_rate, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* @frame_rate, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 30
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %12
  %19 = load %struct.sd*, %struct.sd** %2, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 25
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 20
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 2, i32* %3, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.sd*, %struct.sd** %2, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 15
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 3, i32* %3, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 4, i32* %3, align 4
  br label %43

42:                                               ; preds = %36
  store i32 5, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %23
  br label %47

47:                                               ; preds = %46, %17
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = load %struct.sd*, %struct.sd** %2, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [2 x [6 x [3 x i32]]], [2 x [6 x [3 x i32]]]* @ov519_set_fr.fr_tb, i64 0, i64 %52
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* %53, i64 0, i64 %55
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %56, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @reg_w(%struct.sd* %48, i32 164, i32 %58)
  %60 = load %struct.sd*, %struct.sd** %2, align 8
  %61 = load %struct.sd*, %struct.sd** %2, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [2 x [6 x [3 x i32]]], [2 x [6 x [3 x i32]]]* @ov519_set_fr.fr_tb, i64 0, i64 %64
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* %65, i64 0, i64 %67
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %68, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @reg_w(%struct.sd* %60, i32 35, i32 %70)
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds [2 x [6 x [3 x i32]]], [2 x [6 x [3 x i32]]]* @ov519_set_fr.fr_tb, i64 0, i64 %75
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* %76, i64 0, i64 %78
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %79, i64 0, i64 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %4, align 4
  %82 = load %struct.sd*, %struct.sd** %2, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SEN_OV7660, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %47
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, 128
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %47
  %91 = load %struct.sd*, %struct.sd** %2, align 8
  %92 = load i32, i32* @OV7670_R11_CLKRC, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ov518_i2c_w(%struct.sd* %91, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @ov518_i2c_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
