; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_av.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Volume attaching information dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09vol_id         %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09highest_lnum   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\09leb_count      %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09compat         %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09vol_type       %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\09used_ebs       %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09last_data_size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09data_pad       %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_dump_av(%struct.ubi_ainf_volume* %0) #0 {
  %2 = alloca %struct.ubi_ainf_volume*, align 8
  store %struct.ubi_ainf_volume* %0, %struct.ubi_ainf_volume** %2, align 8
  %3 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %5 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %9 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %13 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %17 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %21 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %29 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %30)
  %32 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %2, align 8
  %33 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %34)
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
