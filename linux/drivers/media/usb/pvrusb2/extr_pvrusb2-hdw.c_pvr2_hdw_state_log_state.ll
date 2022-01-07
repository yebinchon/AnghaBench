; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_state_log_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_state_log_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*)* @pvr2_hdw_state_log_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_state_log_state(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %12 = call i32 @pvr2_hdw_report_unlocked(%struct.pvr2_hdw* %9, i32 %10, i8* %11, i32 256)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %26

16:                                               ; preds = %8
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %15
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %29 = call i32 @pvr2_hdw_report_clients(%struct.pvr2_hdw* %27, i8* %28, i32 256)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp uge i64 %31, 256
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 256, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %26
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 10
  br label %55

55:                                               ; preds = %46, %40
  %56 = phi i1 [ false, %40 ], [ %54, %46 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %40

60:                                               ; preds = %55
  %61 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %62 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i8* %68)
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %35

74:                                               ; preds = %35
  ret void
}

declare dso_local i32 @pvr2_hdw_report_unlocked(%struct.pvr2_hdw*, i32, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*) #1

declare dso_local i32 @pvr2_hdw_report_clients(%struct.pvr2_hdw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
