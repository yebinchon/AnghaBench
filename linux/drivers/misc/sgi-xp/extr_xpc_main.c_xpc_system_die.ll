; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_system_die.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_system_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)* }
%struct.notifier_block = type { i32 }
%struct.die_args = type { i32, i32 }

@X86_TRAP_DF = common dso_local global i32 0, align 4
@X86_TRAP_MF = common dso_local global i32 0, align 4
@X86_TRAP_XF = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_kdebug_ignore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @xpc_system_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_system_die(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.die_args*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.die_args*
  store %struct.die_args* %9, %struct.die_args** %7, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %42 [
    i64 128, label %11
    i64 136, label %40
    i64 140, label %40
    i64 129, label %41
    i64 139, label %41
  ]

11:                                               ; preds = %3
  %12 = load %struct.die_args*, %struct.die_args** %7, align 8
  %13 = getelementptr inbounds %struct.die_args, %struct.die_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @X86_TRAP_DF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (...) @xpc_die_deactivate()
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.die_args*, %struct.die_args** %7, align 8
  %21 = getelementptr inbounds %struct.die_args, %struct.die_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @X86_TRAP_MF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.die_args*, %struct.die_args** %7, align 8
  %27 = getelementptr inbounds %struct.die_args, %struct.die_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @X86_TRAP_XF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25, %19
  %32 = load %struct.die_args*, %struct.die_args** %7, align 8
  %33 = getelementptr inbounds %struct.die_args, %struct.die_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @user_mode(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 (...) @xpc_die_deactivate()
  br label %39

39:                                               ; preds = %37, %31, %25
  br label %44

40:                                               ; preds = %3, %3
  br label %44

41:                                               ; preds = %3, %3
  br label %42

42:                                               ; preds = %3, %41
  %43 = call i32 (...) @xpc_die_deactivate()
  br label %44

44:                                               ; preds = %42, %40, %39
  %45 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %45
}

declare dso_local i32 @xpc_die_deactivate(...) #1

declare dso_local i32 @user_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
