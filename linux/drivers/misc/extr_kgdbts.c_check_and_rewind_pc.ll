; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_check_and_rewind_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_check_and_rewind_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kgdbts_gdb_regs = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4
@kgdbts_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stopped at IP: %lx\0A\00", align 1
@arch_needs_sstep_emulation = common dso_local global i64 0, align 8
@sstep_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"sys_open\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"do_fork\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Emul: rewind hit single step bp\0A\00", align 1
@restart_from_top_after_write = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"kgdbts: BP mismatch %lx expected %lx\0A\00", align 1
@cont_addr = common dso_local global i64 0, align 8
@BREAK_INSTR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_and_rewind_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_and_rewind_pc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @lookup_addr(i8* %9)
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i64, i64* @kgdbts_gdb_regs, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* @NUMREGBYTES, align 4
  %16 = call i32 @kgdb_hex2mem(i8* %12, i8* %14, i32 %15)
  %17 = load i64, i64* @kgdbts_gdb_regs, align 8
  %18 = call i32 @gdb_regs_to_pt_regs(i64 %17, i32* @kgdbts_regs)
  %19 = call i64 @instruction_pointer(i32* @kgdbts_regs)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 (i8*, ...) @v2printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* @arch_needs_sstep_emulation, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load i64, i64* @sstep_addr, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = load i64, i64* @sstep_addr, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %34
  %43 = call i32 (i8*, ...) @v2printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @restart_from_top_after_write, align 4
  br label %63

44:                                               ; preds = %38, %27, %24, %2
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @eprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %59, i64 %60)
  store i32 1, i32* %3, align 4
  br label %69

62:                                               ; preds = %48, %44
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* @cont_addr, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %55
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @lookup_addr(i8*) #1

declare dso_local i32 @kgdb_hex2mem(i8*, i8*, i32) #1

declare dso_local i32 @gdb_regs_to_pt_regs(i64, i32*) #1

declare dso_local i64 @instruction_pointer(i32*) #1

declare dso_local i32 @v2printk(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @eprintk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
