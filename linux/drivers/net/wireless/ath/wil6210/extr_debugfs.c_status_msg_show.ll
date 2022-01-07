; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_status_msg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_status_msg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { i32, %struct.wil_status_ring* }
%struct.wil_status_ring = type { i32*, i32, i32, i32 }

@dbg_sring_index = common dso_local global i32 0, align 4
@dbg_status_msg_index = common dso_local global i32 0, align 4
@WIL6210_MAX_STATUS_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid status ring index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"No %cX status ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%cxDesc index (%d) >= size (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%cx[%d][%3d] = {\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"  0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @status_msg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_msg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil_status_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  store %struct.wil6210_priv* %14, %struct.wil6210_priv** %6, align 8
  %15 = load i32, i32* @dbg_sring_index, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @dbg_status_msg_index, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WIL6210_MAX_STATUS_RINGS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %123

24:                                               ; preds = %2
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 1
  %27 = load %struct.wil_status_ring*, %struct.wil_status_ring** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %27, i64 %29
  store %struct.wil_status_ring* %30, %struct.wil_status_ring** %8, align 8
  %31 = load %struct.wil_status_ring*, %struct.wil_status_ring** %8, align 8
  %32 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.wil_status_ring*, %struct.wil_status_ring** %8, align 8
  %38 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %24
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 84, i32 82
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %123

48:                                               ; preds = %24
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.wil_status_ring*, %struct.wil_status_ring** %8, align 8
  %51 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 84, i32 82
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.wil_status_ring*, %struct.wil_status_ring** %8, align 8
  %62 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 %63)
  store i32 0, i32* %3, align 4
  br label %123

65:                                               ; preds = %48
  %66 = load %struct.wil_status_ring*, %struct.wil_status_ring** %8, align 8
  %67 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.wil_status_ring*, %struct.wil_status_ring** %8, align 8
  %70 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  store i32* %75, i32** %11, align 8
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 84, i32 82
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %65
  %101 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %102 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %100
  %106 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 6
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %112, i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %105, %100, %65
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = call i32 @seq_puts(%struct.seq_file* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %54, %41, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
