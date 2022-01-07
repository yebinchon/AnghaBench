; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c___stmpe_block_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c___stmpe_block_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [19 x i8] c"wr: regs %#x (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stmpe wr: \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to write regs %#x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32, i32, i32*)* @__stmpe_block_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stmpe_block_write(%struct.stmpe* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.stmpe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %11 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dev_vdbg(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @stmpe_dump_bytes(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32 %17)
  %19 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %20 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.stmpe*, i32, i32, i32*)**
  %24 = load i32 (%struct.stmpe*, i32, i32, i32*)*, i32 (%struct.stmpe*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 %24(%struct.stmpe* %25, i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %34 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %4
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @stmpe_dump_bytes(i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
