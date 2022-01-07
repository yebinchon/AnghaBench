; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_start_processing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_start_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elm_info = type { i32 }
%struct.elm_errorvec = type { i64 }

@ELM_SYNDROME_FRAGMENT_6 = common dso_local global i32 0, align 4
@SYNDROME_FRAGMENT_REG_SIZE = common dso_local global i32 0, align 4
@ELM_SYNDROME_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elm_info*, %struct.elm_errorvec*)* @elm_start_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elm_start_processing(%struct.elm_info* %0, %struct.elm_errorvec* %1) #0 {
  %3 = alloca %struct.elm_info*, align 8
  %4 = alloca %struct.elm_errorvec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.elm_info* %0, %struct.elm_info** %3, align 8
  store %struct.elm_errorvec* %1, %struct.elm_errorvec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %11 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %15, i64 %17
  %19 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load i32, i32* @ELM_SYNDROME_FRAGMENT_6, align 4
  %24 = load i32, i32* @SYNDROME_FRAGMENT_REG_SIZE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @elm_read_reg(%struct.elm_info* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @ELM_SYNDROME_VALID, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @elm_write_reg(%struct.elm_info* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %22, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %8

42:                                               ; preds = %8
  ret void
}

declare dso_local i32 @elm_read_reg(%struct.elm_info*, i32) #1

declare dso_local i32 @elm_write_reg(%struct.elm_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
