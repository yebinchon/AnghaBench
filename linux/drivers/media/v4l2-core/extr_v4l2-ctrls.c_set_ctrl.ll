; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_ctrl = type { i32, i32, i64, i64, i64, i64, i32, %struct.v4l2_ctrl** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32)* @set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ctrl(%struct.v4l2_fh* %0, %struct.v4l2_ctrl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_fh*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %5, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 7
  %13 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %12, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, i64 0
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %14, align 8
  store %struct.v4l2_ctrl* %15, %struct.v4l2_ctrl** %8, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %41, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 7
  %25 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %25, i64 %27
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %28, align 8
  %30 = icmp ne %struct.v4l2_ctrl* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 7
  %34 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, i64 %36
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %37, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @validate_new(%struct.v4l2_ctrl* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %90

54:                                               ; preds = %44
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %54
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %67 = icmp eq %struct.v4l2_ctrl* %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %70 = call i32 @is_cur_manual(%struct.v4l2_ctrl* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %82 = call i32 @update_from_auto_cluster(%struct.v4l2_ctrl* %81)
  br label %83

83:                                               ; preds = %80, %72, %68, %64, %59, %54
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @try_or_set_cluster(%struct.v4l2_fh* %86, %struct.v4l2_ctrl* %87, i32 1, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %52
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @validate_new(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @is_cur_manual(%struct.v4l2_ctrl*) #1

declare dso_local i32 @update_from_auto_cluster(%struct.v4l2_ctrl*) #1

declare dso_local i32 @try_or_set_cluster(%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
