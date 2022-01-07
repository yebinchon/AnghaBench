; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_check_desc_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_check_desc_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_desc_info = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Hardware descriptor numbers not right!\0A\00", align 1
@MIN_DESC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_desc_info*)* @ksz_check_desc_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz_check_desc_num(%struct.ksz_desc_info* %0) #0 {
  %2 = alloca %struct.ksz_desc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ksz_desc_info* %0, %struct.ksz_desc_info** %2, align 8
  %5 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %2, align 8
  %6 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %44

24:                                               ; preds = %21, %18
  %25 = call i32 @pr_alert(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %29, %24
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 2, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %2, align 8
  %43 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %21
  %45 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %2, align 8
  %46 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %2, align 8
  %50 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @pr_alert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
