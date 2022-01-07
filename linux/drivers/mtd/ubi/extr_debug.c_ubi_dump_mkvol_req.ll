; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_mkvol_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_mkvol_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_mkvol_req = type { i8*, i8*, i8*, i8*, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Volume creation request dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09vol_id    %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09alignment %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09bytes     %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\09vol_type  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\09name_len  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\091st 16 characters of name: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_dump_mkvol_req(%struct.ubi_mkvol_req* %0) #0 {
  %2 = alloca %struct.ubi_mkvol_req*, align 8
  %3 = alloca [17 x i8], align 16
  store %struct.ubi_mkvol_req* %0, %struct.ubi_mkvol_req** %2, align 8
  %4 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %2, align 8
  %6 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %13 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %2, align 8
  %14 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %15)
  %17 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %2, align 8
  %18 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %21 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %2, align 8
  %22 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %26 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %2, align 8
  %27 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i8* %25, i32 %28, i32 16)
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 16
  store i8 0, i8* %30, align 16
  %31 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %31)
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
