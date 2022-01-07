; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_create_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_window = type { i32, %struct.scif_window*, i32, i32, i32, i8*, i32, i8*, i32, i64, i32, i8* }
%struct.scif_endpt = type { i32 }

@SCIFEP_MAGIC = common dso_local global i32 0, align 4
@OP_IDLE = common dso_local global i8* null, align 8
@SCIF_WINDOW_SELF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scif_window* @scif_create_window(%struct.scif_endpt* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scif_window*, align 8
  %6 = alloca %struct.scif_endpt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scif_window*, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 (...) @might_sleep()
  %12 = call i8* @scif_zalloc(i32 88)
  %13 = bitcast i8* %12 to %struct.scif_window*
  store %struct.scif_window* %13, %struct.scif_window** %10, align 8
  %14 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %15 = icmp ne %struct.scif_window* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %88

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 88
  %21 = trunc i64 %20 to i32
  %22 = call i8* @scif_zalloc(i32 %21)
  %23 = bitcast i8* %22 to %struct.scif_window*
  %24 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %25 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %24, i32 0, i32 1
  store %struct.scif_window* %23, %struct.scif_window** %25, align 8
  %26 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %27 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %26, i32 0, i32 1
  %28 = load %struct.scif_window*, %struct.scif_window** %27, align 8
  %29 = icmp ne %struct.scif_window* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %77

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @scif_zalloc(i32 %35)
  %37 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %38 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %40 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %39, i32 0, i32 11
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %77

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %47 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %49 = ptrtoint %struct.scif_endpt* %48 to i64
  %50 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %51 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %50, i32 0, i32 9
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @SCIFEP_MAGIC, align 4
  %53 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %54 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @OP_IDLE, align 8
  %56 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %57 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %59 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %58, i32 0, i32 6
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load i8*, i8** @OP_IDLE, align 8
  %62 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %63 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %65 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %64, i32 0, i32 4
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %68 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %67, i32 0, i32 3
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load i32, i32* @SCIF_WINDOW_SELF, align 4
  %71 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %72 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %75 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  store %struct.scif_window* %76, %struct.scif_window** %5, align 8
  br label %89

77:                                               ; preds = %43, %30
  %78 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %79 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %78, i32 0, i32 1
  %80 = load %struct.scif_window*, %struct.scif_window** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 88
  %84 = trunc i64 %83 to i32
  %85 = call i32 @scif_free(%struct.scif_window* %80, i32 %84)
  %86 = load %struct.scif_window*, %struct.scif_window** %10, align 8
  %87 = call i32 @scif_free(%struct.scif_window* %86, i32 88)
  br label %88

88:                                               ; preds = %77, %16
  store %struct.scif_window* null, %struct.scif_window** %5, align 8
  br label %89

89:                                               ; preds = %88, %44
  %90 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  ret %struct.scif_window* %90
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i8* @scif_zalloc(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @scif_free(%struct.scif_window*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
