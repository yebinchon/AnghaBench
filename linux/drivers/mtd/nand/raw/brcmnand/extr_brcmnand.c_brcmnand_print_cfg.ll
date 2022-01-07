; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_print_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_print_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { i32 }
%struct.brcmnand_cfg = type { i32, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [57 x i8] c"%lluMiB total, %uKiB blocks, %u%s pages, %uB OOB, %u-bit\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c", Hamming ECC\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c", BCH-%u (1KiB sector)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", BCH-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmnand_host*, i8*, %struct.brcmnand_cfg*)* @brcmnand_print_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_print_cfg(%struct.brcmnand_host* %0, i8* %1, %struct.brcmnand_cfg* %2) #0 {
  %4 = alloca %struct.brcmnand_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.brcmnand_cfg*, align 8
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.brcmnand_cfg* %2, %struct.brcmnand_cfg** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %9 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = lshr i64 %10, 20
  %12 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %13 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 10
  %16 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 1024
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 10
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %28, %25 ]
  %31 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %32 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 1024
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %15, i32 %30, i8* %36, i32 %39, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %5, align 8
  %47 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %48 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %51 = call i64 @is_hamming_ecc(i32 %49, %struct.brcmnand_cfg* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %75

56:                                               ; preds = %29
  %57 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %58 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %64 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 1
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %74

68:                                               ; preds = %56
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %6, align 8
  %71 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %61
  br label %75

75:                                               ; preds = %74, %53
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @is_hamming_ecc(i32, %struct.brcmnand_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
