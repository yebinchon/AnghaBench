; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_testscript.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_testscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, %struct.TYPE_3__, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"writing testscript to 0x%x (%zd B)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to write testscript file: %d\0A\00", align 1
@hi_ota_testscript = common dso_local global i32 0, align 4
@AR6004_HW_1_3_VERSION = common dso_local global i64 0, align 8
@AR6004_HW_3_0_VERSION = common dso_local global i64 0, align 8
@hi_end_ram_reserve_sz = common dso_local global i32 0, align 4
@hi_test_apps_related = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_upload_testscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_upload_testscript(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %69

17:                                               ; preds = %11
  %18 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ath6kl_dbg(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %34 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ath6kl_bmi_write(%struct.ath6kl* %28, i32 %29, i32* %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ath6kl_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %17
  %44 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %45 = load i32, i32* @hi_ota_testscript, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %44, i32 %45, i32 %46)
  %48 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %49 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AR6004_HW_1_3_VERSION, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AR6004_HW_3_0_VERSION, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %63 = load i32, i32* @hi_end_ram_reserve_sz, align 4
  %64 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %62, i32 %63, i32 4096)
  br label %65

65:                                               ; preds = %61, %54, %43
  %66 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %67 = load i32, i32* @hi_test_apps_related, align 4
  %68 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %66, i32 %67, i32 1)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %39, %16, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ath6kl_bmi_write(%struct.ath6kl*, i32, i32*, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @ath6kl_bmi_write_hi32(%struct.ath6kl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
