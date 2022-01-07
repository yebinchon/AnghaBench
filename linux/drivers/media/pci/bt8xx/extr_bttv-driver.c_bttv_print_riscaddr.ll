; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_print_riscaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_print_riscaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_23__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_24__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"  main: %08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  vbi : o=%08llx e=%08llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  cap : o=%08llx e=%08llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  scr : o=%08llx e=%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @bttv_print_riscaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_print_riscaddr(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load %struct.bttv*, %struct.bttv** %2, align 8
  %4 = getelementptr inbounds %struct.bttv, %struct.bttv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load %struct.bttv*, %struct.bttv** %2, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = icmp ne %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.bttv*, %struct.bttv** %2, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i64 [ %18, %12 ], [ 0, %19 ]
  %22 = load %struct.bttv*, %struct.bttv** %2, align 8
  %23 = getelementptr inbounds %struct.bttv, %struct.bttv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = icmp ne %struct.TYPE_18__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.bttv*, %struct.bttv** %2, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi i64 [ %32, %26 ], [ 0, %33 ]
  %36 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %35)
  %37 = load %struct.bttv*, %struct.bttv** %2, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = icmp ne %struct.TYPE_20__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.bttv*, %struct.bttv** %2, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i64 [ %49, %42 ], [ 0, %50 ]
  %53 = load %struct.bttv*, %struct.bttv** %2, align 8
  %54 = getelementptr inbounds %struct.bttv, %struct.bttv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = icmp ne %struct.TYPE_22__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.bttv*, %struct.bttv** %2, align 8
  %60 = getelementptr inbounds %struct.bttv, %struct.bttv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  br label %67

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %58
  %68 = phi i64 [ %65, %58 ], [ 0, %66 ]
  %69 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %68)
  %70 = load %struct.bttv*, %struct.bttv** %2, align 8
  %71 = getelementptr inbounds %struct.bttv, %struct.bttv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = icmp ne %struct.TYPE_14__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.bttv*, %struct.bttv** %2, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  br label %82

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi i64 [ %80, %74 ], [ 0, %81 ]
  %84 = load %struct.bttv*, %struct.bttv** %2, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.bttv*, %struct.bttv** %2, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  br label %96

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %88
  %97 = phi i64 [ %94, %88 ], [ 0, %95 ]
  %98 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %97)
  %99 = load %struct.bttv*, %struct.bttv** %2, align 8
  %100 = load %struct.bttv*, %struct.bttv** %2, align 8
  %101 = getelementptr inbounds %struct.bttv, %struct.bttv* %100, i32 0, i32 0
  %102 = call i32 @bttv_risc_disasm(%struct.bttv* %99, %struct.TYPE_15__* %101)
  ret void
}

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @bttv_risc_disasm(%struct.bttv*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
