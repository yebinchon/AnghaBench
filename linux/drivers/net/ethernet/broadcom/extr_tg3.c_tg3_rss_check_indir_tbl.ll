; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rss_check_indir_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rss_check_indir_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32* }

@SUPPORT_MSIX = common dso_local global i32 0, align 4
@TG3_RSS_INDIR_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_rss_check_indir_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_rss_check_indir_tbl(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = load i32, i32* @SUPPORT_MSIX, align 4
  %6 = call i32 @tg3_flag(%struct.tg3* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.tg3*, %struct.tg3** %2, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 8)
  br label %52

20:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TG3_RSS_INDIR_TBL_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.tg3*, %struct.tg3** %2, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %21

42:                                               ; preds = %37, %21
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @TG3_RSS_INDIR_TBL_SIZE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.tg3*, %struct.tg3** %2, align 8
  %48 = load %struct.tg3*, %struct.tg3** %2, align 8
  %49 = getelementptr inbounds %struct.tg3, %struct.tg3* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tg3_rss_init_dflt_indir_tbl(%struct.tg3* %47, i32 %50)
  br label %52

52:                                               ; preds = %8, %14, %46, %42
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tg3_rss_init_dflt_indir_tbl(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
