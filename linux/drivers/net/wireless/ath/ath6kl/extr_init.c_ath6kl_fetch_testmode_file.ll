; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_fetch_testmode_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_fetch_testmode_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testmode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"testmode 2 not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"testmode 1 not supported\0A\00", align 1
@TESTMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to get testmode %d firmware file %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_fetch_testmode_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_fetch_testmode_file(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

11:                                               ; preds = %1
  %12 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %13 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %14 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ath6kl_dbg(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %18 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %45

21:                                               ; preds = %11
  %22 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %23 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %92

32:                                               ; preds = %21
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %34 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %40 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %33, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* %43)
  br label %69

45:                                               ; preds = %11
  %46 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %47 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %92

56:                                               ; preds = %45
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %58 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %64 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @snprintf(i8* %57, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %67)
  br label %69

69:                                               ; preds = %56, %32
  %70 = load i32, i32* @TESTMODE, align 4
  %71 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %72 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %71, i32 0, i32 3
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %76 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %77 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %76, i32 0, i32 2
  %78 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %79 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %78, i32 0, i32 1
  %80 = call i32 @ath6kl_get_fw(%struct.ath6kl* %74, i8* %75, i32* %77, i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %69
  %84 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %85 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ath6kl_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %86, i8* %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %83, %52, %28, %10
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_get_fw(%struct.ath6kl*, i8*, i32*, i32*) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
