; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_perms.c_lkdtm_EXEC_USERSPACE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_perms.c_lkdtm_EXEC_USERSPACE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate user memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_EXEC_USERSPACE() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @PAGE_SIZE, align 4
  %3 = load i32, i32* @PROT_READ, align 4
  %4 = load i32, i32* @PROT_WRITE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @PROT_EXEC, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MAP_ANONYMOUS, align 4
  %9 = load i32, i32* @MAP_PRIVATE, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @vm_mmap(i32* null, i32 0, i32 %2, i32 %7, i32 %10, i32 0)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @TASK_SIZE, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %24

17:                                               ; preds = %0
  %18 = load i64, i64* %1, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @execute_user_location(i8* %19)
  %21 = load i64, i64* %1, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i32 @vm_munmap(i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %15
  ret void
}

declare dso_local i64 @vm_mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @execute_user_location(i8*) #1

declare dso_local i32 @vm_munmap(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
