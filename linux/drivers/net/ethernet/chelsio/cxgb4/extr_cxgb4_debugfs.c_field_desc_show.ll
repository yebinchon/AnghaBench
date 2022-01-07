; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_field_desc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_field_desc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.field_desc = type { i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s: %llu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0A        \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i64, %struct.field_desc*)* @field_desc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @field_desc_show(%struct.seq_file* %0, i64 %1, %struct.field_desc* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.field_desc*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.field_desc* %2, %struct.field_desc** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %3
  %12 = load %struct.field_desc*, %struct.field_desc** %6, align 8
  %13 = getelementptr inbounds %struct.field_desc, %struct.field_desc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %11
  %17 = load %struct.field_desc*, %struct.field_desc** %6, align 8
  %18 = getelementptr inbounds %struct.field_desc, %struct.field_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = shl i64 1, %19
  %21 = sub i64 %20, 1
  store i64 %21, i64* %9, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %23 = load %struct.field_desc*, %struct.field_desc** %6, align 8
  %24 = getelementptr inbounds %struct.field_desc, %struct.field_desc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.field_desc*, %struct.field_desc** %6, align 8
  %28 = getelementptr inbounds %struct.field_desc, %struct.field_desc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = lshr i64 %26, %29
  %31 = load i64, i64* %9, align 8
  %32 = and i64 %30, %31
  %33 = call i32 @scnprintf(i8* %22, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp sge i32 %36, 79
  br i1 %37, label %38, label %41

38:                                               ; preds = %16
  store i32 8, i32* %8, align 4
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %16
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %44 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.field_desc*, %struct.field_desc** %6, align 8
  %50 = getelementptr inbounds %struct.field_desc, %struct.field_desc* %49, i32 1
  store %struct.field_desc* %50, %struct.field_desc** %6, align 8
  br label %11

51:                                               ; preds = %11
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = call i32 @seq_putc(%struct.seq_file* %52, i8 signext 10)
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
