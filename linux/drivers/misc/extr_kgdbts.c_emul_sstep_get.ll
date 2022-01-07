; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_emul_sstep_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_emul_sstep_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arch_needs_sstep_emulation = common dso_local global i32 0, align 4
@cont_instead_of_sstep = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@sstep_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Emulate single step\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Z0\00", align 1
@sstep_addr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"z0\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"kgdbts: ERROR failed sstep get emulation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emul_sstep_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emul_sstep_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @arch_needs_sstep_emulation, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @cont_instead_of_sstep, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store i64 0, i64* @cont_instead_of_sstep, align 8
  %9 = call i32 @fill_get_buf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %13

10:                                               ; preds = %5
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @fill_get_buf(i8* %11)
  br label %13

13:                                               ; preds = %10, %8
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @sstep_state, align 4
  switch i32 %15, label %27 [
    i32 0, label %16
    i32 1, label %19
    i32 2, label %22
    i32 3, label %24
  ]

16:                                               ; preds = %14
  %17 = call i32 @v2printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @fill_get_buf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %29

19:                                               ; preds = %14
  %20 = load i32, i32* @sstep_addr, align 4
  %21 = call i32 @break_helper(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %20)
  br label %29

22:                                               ; preds = %14
  %23 = call i32 @fill_get_buf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

24:                                               ; preds = %14
  %25 = load i32, i32* @sstep_addr, align 4
  %26 = call i32 @break_helper(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %25)
  br label %29

27:                                               ; preds = %14
  %28 = call i32 @eprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24, %22, %19, %16
  %30 = load i32, i32* @sstep_state, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @sstep_state, align 4
  br label %32

32:                                               ; preds = %29, %13
  ret void
}

declare dso_local i32 @fill_get_buf(i8*) #1

declare dso_local i32 @v2printk(i8*) #1

declare dso_local i32 @break_helper(i8*, i32*, i32) #1

declare dso_local i32 @eprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
