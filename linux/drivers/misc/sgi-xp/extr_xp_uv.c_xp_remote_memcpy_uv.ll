; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_uv.c_xp_remote_memcpy_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_uv.c_xp_remote_memcpy_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xpSuccess = common dso_local global i32 0, align 4
@xp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"gru_copy_gpa() failed, dst_gpa=0x%016lx src_gpa=0x%016lx len=%ld\0A\00", align 1
@xpGruCopyError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @xp_remote_memcpy_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xp_remote_memcpy_uv(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @uv_gpa_in_mmr_space(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @xp_remote_mmr_read(i64 %13, i64 %14, i64 %15)
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @gru_copy_gpa(i64 %18, i64 %19, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @xpSuccess, align 4
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @xp, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29, i64 %30)
  %32 = load i32, i32* @xpGruCopyError, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %24, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @uv_gpa_in_mmr_space(i64) #1

declare dso_local i32 @xp_remote_mmr_read(i64, i64, i64) #1

declare dso_local i32 @gru_copy_gpa(i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
