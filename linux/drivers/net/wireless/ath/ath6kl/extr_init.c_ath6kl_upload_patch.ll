; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"writing patch to 0x%x (%zd B)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to write patch file: %d\0A\00", align 1
@hi_dset_list_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_upload_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_upload_patch(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ath6kl_dbg(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ath6kl_bmi_write(%struct.ath6kl* %22, i32 %23, i32* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %11
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %11
  %38 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %39 = load i32, i32* @hi_dset_list_head, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %38, i32 %39, i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %33, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
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
