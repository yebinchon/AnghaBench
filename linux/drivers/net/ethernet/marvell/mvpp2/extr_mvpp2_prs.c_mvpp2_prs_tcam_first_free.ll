; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_tcam_first_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_tcam_first_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MVPP2_PRS_TCAM_SRAM_SIZE = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i8, i8)* @mvpp2_prs_tcam_first_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %7, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8, i8* %6, align 1
  %16 = load i8, i8* %7, align 1
  %17 = call i32 @swap(i8 zeroext %15, i8 zeroext %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @MVPP2_PRS_TCAM_SRAM_SIZE, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8, i8* @MVPP2_PRS_TCAM_SRAM_SIZE, align 1
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %7, align 1
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %50, %29
  %33 = load i32, i32* %8, align 4
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %39 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @swap(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
