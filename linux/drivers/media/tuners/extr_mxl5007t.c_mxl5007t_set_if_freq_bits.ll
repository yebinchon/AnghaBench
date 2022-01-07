; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_set_if_freq_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_set_if_freq_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxl5007t_state*, i32, i32)* @mxl5007t_set_if_freq_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxl5007t_set_if_freq_bits(%struct.mxl5007t_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxl5007t_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %20 [
    i32 133, label %9
    i32 134, label %10
    i32 135, label %11
    i32 131, label %12
    i32 132, label %13
    i32 129, label %14
    i32 130, label %15
    i32 128, label %16
    i32 138, label %17
    i32 137, label %18
    i32 136, label %19
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %24

10:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  br label %24

11:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %24

12:                                               ; preds = %3
  store i32 4, i32* %7, align 4
  br label %24

13:                                               ; preds = %3
  store i32 5, i32* %7, align 4
  br label %24

14:                                               ; preds = %3
  store i32 6, i32* %7, align 4
  br label %24

15:                                               ; preds = %3
  store i32 7, i32* %7, align 4
  br label %24

16:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  br label %24

17:                                               ; preds = %3
  store i32 9, i32* %7, align 4
  br label %24

18:                                               ; preds = %3
  store i32 10, i32* %7, align 4
  br label %24

19:                                               ; preds = %3
  store i32 11, i32* %7, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @mxl_fail(i32 %22)
  br label %41

24:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %25 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %26 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @set_reg_bits(i32 %27, i32 2, i32 15, i32 %28)
  %30 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %31 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 16, i32 0
  %37 = call i32 @set_reg_bits(i32 %32, i32 2, i32 16, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %40 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @mxl_fail(i32) #1

declare dso_local i32 @set_reg_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
