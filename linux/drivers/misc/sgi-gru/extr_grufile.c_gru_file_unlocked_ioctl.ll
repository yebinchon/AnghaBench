; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_file_unlocked_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_file_unlocked_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EBADRQC = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"file %p, req 0x%x, 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @gru_file_unlocked_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gru_file_unlocked_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @EBADRQC, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @grudev, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @gru_dbg(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.file* %11, i32 %12, i64 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %46 [
    i32 137, label %16
    i32 132, label %19
    i32 129, label %22
    i32 128, label %25
    i32 130, label %28
    i32 131, label %31
    i32 134, label %34
    i32 133, label %37
    i32 135, label %40
    i32 136, label %43
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @gru_create_new_context(i64 %17)
  store i32 %18, i32* %7, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @gru_set_context_option(i64 %20)
  store i32 %21, i32* %7, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @gru_get_exception_detail(i64 %23)
  store i32 %24, i32* %7, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @gru_user_unload_context(i64 %26)
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @gru_user_flush_tlb(i64 %29)
  store i32 %30, i32* %7, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @gru_handle_user_call_os(i64 %32)
  store i32 %33, i32* %7, align 4
  br label %46

34:                                               ; preds = %3
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @gru_get_gseg_statistics(i64 %35)
  store i32 %36, i32* %7, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @gru_ktest(i64 %38)
  store i32 %39, i32* %7, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @gru_get_config_info(i64 %41)
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @gru_dump_chiplet_request(i64 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %3, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  ret i64 %48
}

declare dso_local i32 @gru_dbg(i32, i8*, %struct.file*, i32, i64) #1

declare dso_local i32 @gru_create_new_context(i64) #1

declare dso_local i32 @gru_set_context_option(i64) #1

declare dso_local i32 @gru_get_exception_detail(i64) #1

declare dso_local i32 @gru_user_unload_context(i64) #1

declare dso_local i32 @gru_user_flush_tlb(i64) #1

declare dso_local i32 @gru_handle_user_call_os(i64) #1

declare dso_local i32 @gru_get_gseg_statistics(i64) #1

declare dso_local i32 @gru_ktest(i64) #1

declare dso_local i32 @gru_get_config_info(i64) #1

declare dso_local i32 @gru_dump_chiplet_request(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
