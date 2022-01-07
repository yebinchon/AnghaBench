; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_init_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_init_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ce_attr = type { i64, i64 }

@.str = private unnamed_addr constant [50 x i8] c"Failed to initialize CE src ring for ID: %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to initialize CE dest ring for ID: %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_ce_init_pipe(%struct.ath10k* %0, i32 %1, %struct.ce_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ce_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ce_attr* %2, %struct.ce_attr** %7, align 8
  %9 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %10 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %17 = call i32 @ath10k_ce_init_src_ring(%struct.ath10k* %14, i32 %15, %struct.ce_attr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ath10k_err(%struct.ath10k* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %29 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %36 = call i32 @ath10k_ce_init_dest_ring(%struct.ath10k* %33, i32 %34, %struct.ce_attr* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ath10k_err(%struct.ath10k* %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %27
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ath10k_ce_init_src_ring(%struct.ath10k*, i32, %struct.ce_attr*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_ce_init_dest_ring(%struct.ath10k*, i32, %struct.ce_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
