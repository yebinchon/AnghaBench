; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_handle_badblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_handle_badblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, i32, i32 }
%struct.swap_eb = type { i32*, i32 }

@EBLOCK_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Marking bad block at %08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Mark block bad failed for block at %08llx error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_handle_badblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_handle_badblock(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  %8 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @EBLOCK_BAD, align 4
  %13 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %14 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %18 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %19 = call i32 @mtdswap_eb_detach(%struct.mtdswap_dev* %17, %struct.swap_eb* %18)
  %20 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %21 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mtd_can_have_bb(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %30 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %31 = call i32 @mtdswap_eb_offset(%struct.mtdswap_dev* %29, %struct.swap_eb* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mtd_block_markbad(i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %44, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mtdswap_eb_detach(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtd_can_have_bb(i32) #1

declare dso_local i32 @mtdswap_eb_offset(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @mtd_block_markbad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
