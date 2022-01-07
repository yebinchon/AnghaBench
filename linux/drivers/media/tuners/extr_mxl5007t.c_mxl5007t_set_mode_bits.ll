; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_set_mode_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_set_mode_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxl5007t_state*, i32, i32)* @mxl5007t_set_mode_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxl5007t_set_mode_bits(%struct.mxl5007t_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxl5007t_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %38 [
    i32 131, label %8
    i32 129, label %13
    i32 128, label %18
    i32 130, label %23
  ]

8:                                                ; preds = %3
  %9 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %10 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @set_reg_bits(i32 %11, i32 6, i32 31, i32 18)
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %15 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @set_reg_bits(i32 %16, i32 6, i32 31, i32 17)
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %20 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_reg_bits(i32 %21, i32 6, i32 31, i32 16)
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %25 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_reg_bits(i32 %26, i32 9, i32 255, i32 193)
  %28 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %29 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 8, %31
  %33 = call i32 @set_reg_bits(i32 %30, i32 10, i32 255, i32 %32)
  %34 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %35 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_reg_bits(i32 %36, i32 11, i32 255, i32 23)
  br label %42

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @mxl_fail(i32 %40)
  br label %42

42:                                               ; preds = %38, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @set_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mxl_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
