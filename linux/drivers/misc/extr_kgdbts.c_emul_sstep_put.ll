; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_emul_sstep_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_emul_sstep_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@arch_needs_sstep_emulation = common dso_local global i32 0, align 4
@sstep_thread_id = common dso_local global i32 0, align 4
@sstep_state = common dso_local global i32 0, align 4
@kgdbts_gdb_regs = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4
@kgdbts_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stopped at IP: %lx\0A\00", align 1
@cont_addr = common dso_local global i64 0, align 8
@BREAK_INSTR_SIZE = common dso_local global i64 0, align 8
@sstep_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"$OK\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"kgdbts: failed sstep break set\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"$T0\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"kgdbts: failed continue sstep\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"kgdbts: failed sstep break unset\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"kgdbts: ERROR failed sstep put emulation\0A\00", align 1
@ts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @emul_sstep_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emul_sstep_put(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @arch_needs_sstep_emulation, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 11
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 84
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 48
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %10
  store i32 1, i32* %3, align 4
  br label %73

25:                                               ; preds = %18
  %26 = call i32 @kgdb_hex2long(i8** %6, i32* @sstep_thread_id)
  store i32 0, i32* %3, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load i32, i32* @sstep_state, align 4
  switch i32 %28, label %68 [
    i32 1, label %29
    i32 2, label %43
    i32 3, label %50
    i32 4, label %61
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i64, i64* @kgdbts_gdb_regs, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32, i32* @NUMREGBYTES, align 4
  %35 = call i32 @kgdb_hex2mem(i8* %31, i8* %33, i32 %34)
  %36 = load i64, i64* @kgdbts_gdb_regs, align 8
  %37 = call i32 @gdb_regs_to_pt_regs(i64 %36, i32* @kgdbts_regs)
  %38 = call i32 @instruction_pointer(i32* @kgdbts_regs)
  %39 = call i32 @v2printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @cont_addr, align 8
  %41 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* @sstep_addr, align 8
  br label %70

43:                                               ; preds = %27
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %73

49:                                               ; preds = %43
  br label %70

50:                                               ; preds = %27
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @eprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %73

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 11
  store i8* %58, i8** %7, align 8
  %59 = call i32 @kgdb_hex2long(i8** %7, i32* @sstep_thread_id)
  br label %60

60:                                               ; preds = %56
  br label %70

61:                                               ; preds = %27
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @eprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %73

67:                                               ; preds = %61
  store i32 0, i32* @sstep_state, align 4
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %27
  %69 = call i32 @eprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60, %49, %29
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %67, %65, %54, %47, %25, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @kgdb_hex2long(i8**, i32*) #1

declare dso_local i32 @kgdb_hex2mem(i8*, i8*, i32) #1

declare dso_local i32 @gdb_regs_to_pt_regs(i64, i32*) #1

declare dso_local i32 @v2printk(i8*, i32) #1

declare dso_local i32 @instruction_pointer(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @eprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
