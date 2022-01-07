; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_update_menu_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_update_menu_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_ctrl*, i32)* @coda_update_menu_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_update_menu_ctrl(%struct.v4l2_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = icmp ne %struct.v4l2_ctrl* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %63

8:                                                ; preds = %2
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %10 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %8
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %17, i32 %20, i32 %21, i32 %28, i32 %31)
  br label %57

33:                                               ; preds = %8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %40, i32 %41, i32 %44, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %39, %33
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @__v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %58, i32 %59)
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %62 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %61)
  br label %63

63:                                               ; preds = %57, %7
  ret void
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
