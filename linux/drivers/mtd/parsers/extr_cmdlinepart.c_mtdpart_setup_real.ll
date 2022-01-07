; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_cmdlinepart.c_mtdpart_setup_real.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_cmdlinepart.c_mtdpart_setup_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_mtd_partition = type { i32, i8*, %struct.cmdline_mtd_partition*, %struct.mtd_partition* }
%struct.mtd_partition = type { i32 }

@cmdline_parsed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no mtd-id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parsing <%s>\0A\00", align 1
@partitions = common dso_local global %struct.cmdline_mtd_partition* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"mtdid=<%s> num_parts=<%d>\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"bad character after partition (%c)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtdpart_setup_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdpart_setup_real(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmdline_mtd_partition*, align 8
  %5 = alloca %struct.mtd_partition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 1, i32* @cmdline_parsed, align 4
  br label %10

10:                                               ; preds = %103, %1
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %106

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 58)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %13
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 @dbg(i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = bitcast %struct.cmdline_mtd_partition** %4 to i8**
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 32
  %40 = add i64 %39, 8
  %41 = sub i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call %struct.mtd_partition* @newpart(i8* %34, i8** %3, i32* %7, i32 0, i8** %35, i32 %42)
  store %struct.mtd_partition* %43, %struct.mtd_partition** %5, align 8
  %44 = load %struct.mtd_partition*, %struct.mtd_partition** %5, align 8
  %45 = call i64 @IS_ERR(%struct.mtd_partition* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %23
  %48 = load %struct.mtd_partition*, %struct.mtd_partition** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.mtd_partition* %48)
  store i32 %49, i32* %2, align 4
  br label %107

50:                                               ; preds = %23
  %51 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %52 = ptrtoint %struct.cmdline_mtd_partition* %51 to i64
  %53 = call i64 @ALIGN(i64 %52, i32 8)
  %54 = inttoptr i64 %53 to %struct.cmdline_mtd_partition*
  store %struct.cmdline_mtd_partition* %54, %struct.cmdline_mtd_partition** %4, align 8
  %55 = load %struct.mtd_partition*, %struct.mtd_partition** %5, align 8
  %56 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %57 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %56, i32 0, i32 3
  store %struct.mtd_partition* %55, %struct.mtd_partition** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %60 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %62 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %61, i64 1
  %63 = bitcast %struct.cmdline_mtd_partition* %62 to i8*
  %64 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %65 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %67 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @strlcpy(i8* %68, i8* %69, i32 %71)
  %73 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** @partitions, align 8
  %74 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %75 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %74, i32 0, i32 2
  store %struct.cmdline_mtd_partition* %73, %struct.cmdline_mtd_partition** %75, align 8
  %76 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  store %struct.cmdline_mtd_partition* %76, %struct.cmdline_mtd_partition** @partitions, align 8
  %77 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %78 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %4, align 8
  %81 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @dbg(i8* %84)
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %50
  br label %106

91:                                               ; preds = %50
  %92 = load i8*, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 59
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8*, i8** %3, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %91
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  br label %10

106:                                              ; preds = %90, %10
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %96, %47, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.mtd_partition* @newpart(i8*, i8**, i32*, i32, i8**, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtd_partition*) #1

declare dso_local i32 @PTR_ERR(%struct.mtd_partition*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
