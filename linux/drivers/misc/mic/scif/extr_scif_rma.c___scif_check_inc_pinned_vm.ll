; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c___scif_check_inc_pinned_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c___scif_check_inc_pinned_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mm_struct = type { i32 }

@scif_ulimit_check = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"locked(%lu) > lock_limit(%lu)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32)* @__scif_check_inc_pinned_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__scif_check_inc_pinned_vm(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = icmp ne %struct.mm_struct* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @scif_ulimit_check, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %2
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %13
  %18 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %19 = call i64 @rlimit(i32 %18)
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = call i64 @atomic64_add_return(i32 %22, i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load i32, i32* @CAP_IPC_LOCK, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = call i32 @atomic64_sub(i32 %34, i32* %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0, i32 0), align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %29, %17
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %33, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
