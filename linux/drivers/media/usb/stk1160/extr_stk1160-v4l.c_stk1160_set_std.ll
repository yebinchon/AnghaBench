; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_set_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_set_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regval = type { i32, i32, i32, i32 }
%struct.stk1160 = type { i32 }

@stk1160_set_std.std525 = internal global [9 x %struct.regval] [%struct.regval { i32 130, i32 0, i32 0, i32 0 }, %struct.regval { i32 131, i32 0, i32 0, i32 0 }, %struct.regval { i32 128, i32 3, i32 0, i32 0 }, %struct.regval { i32 129, i32 0, i32 0, i32 0 }, %struct.regval { i32 135, i32 1440, i32 0, i32 0 }, %struct.regval { i32 136, i32 5, i32 0, i32 0 }, %struct.regval { i32 133, i32 243, i32 0, i32 0 }, %struct.regval { i32 134, i32 0, i32 0, i32 0 }, %struct.regval { i32 65535, i32 65535, i32 0, i32 0 }], align 16
@stk1160_set_std.std625 = internal global [9 x %struct.regval] [%struct.regval { i32 132, i32 0, i32 0, i32 0 }, %struct.regval { i32 133, i32 0, i32 0, i32 0 }, %struct.regval { i32 134, i32 1, i32 0, i32 0 }, %struct.regval { i32 135, i32 0, i32 0, i32 0 }, %struct.regval { i32 137, i32 1440, i32 0, i32 0 }, %struct.regval { i32 138, i32 5, i32 0, i32 0 }, %struct.regval { i32 139, i32 289, i32 0, i32 0 }, %struct.regval { i32 140, i32 1, i32 0, i32 0 }, %struct.regval { i32 65535, i32 65535, i32 0, i32 0 }], align 16
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"registers to NTSC like standard\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"registers to PAL like standard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stk1160*)* @stk1160_set_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1160_set_std(%struct.stk1160* %0) #0 {
  %2 = alloca %struct.stk1160*, align 8
  %3 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %2, align 8
  %4 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %5 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @V4L2_STD_525_60, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = call i32 @stk1160_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %32, %10
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [9 x %struct.regval], [9 x %struct.regval]* @stk1160_set_std.std525, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.regval, %struct.regval* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 65535
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [9 x %struct.regval], [9 x %struct.regval]* @stk1160_set_std.std525, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.regval, %struct.regval* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x %struct.regval], [9 x %struct.regval]* @stk1160_set_std.std525, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.regval, %struct.regval* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @stk1160_write_reg(%struct.stk1160* %20, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %12

35:                                               ; preds = %12
  br label %62

36:                                               ; preds = %1
  %37 = call i32 @stk1160_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %58, %36
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [9 x %struct.regval], [9 x %struct.regval]* @stk1160_set_std.std625, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.regval, %struct.regval* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 65535
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [9 x %struct.regval], [9 x %struct.regval]* @stk1160_set_std.std625, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.regval, %struct.regval* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [9 x %struct.regval], [9 x %struct.regval]* @stk1160_set_std.std625, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.regval, %struct.regval* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @stk1160_write_reg(%struct.stk1160* %46, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %35
  ret void
}

declare dso_local i32 @stk1160_dbg(i8*) #1

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
