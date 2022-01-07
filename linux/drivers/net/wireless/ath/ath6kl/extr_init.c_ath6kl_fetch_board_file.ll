; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_fetch_board_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_fetch_board_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Failed to get board file %s (%d), trying to find default board file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to get default board file %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"WARNING! No proper board file was not found, instead using a default board file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Most likely your hardware won't work as specified. Install correct board file!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_fetch_board_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_fetch_board_file(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %11
  %24 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  %28 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 1
  %32 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 0
  %34 = call i32 @ath6kl_get_fw(%struct.ath6kl* %28, i8* %29, i32** %31, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %68

38:                                               ; preds = %23
  %39 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %40 = call i64 @check_device_tree(%struct.ath6kl* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %68

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %48 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %4, align 8
  %51 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %54 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %53, i32 0, i32 1
  %55 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 0
  %57 = call i32 @ath6kl_get_fw(%struct.ath6kl* %51, i8* %52, i32** %54, i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ath6kl_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %43
  %66 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %60, %42, %37, %20, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_get_fw(%struct.ath6kl*, i8*, i32**, i32*) #1

declare dso_local i64 @check_device_tree(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_warn(i8*, ...) #1

declare dso_local i32 @ath6kl_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
