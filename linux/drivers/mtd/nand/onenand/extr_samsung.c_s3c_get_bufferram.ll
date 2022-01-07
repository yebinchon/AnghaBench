; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_get_bufferram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_get_bufferram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.mtd_info = type { i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32 }

@ONENAND_DATARAM = common dso_local global i32 0, align 4
@onenand = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mtd_info*, i32)* @s3c_get_bufferram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @s3c_get_bufferram(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.onenand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 1
  %10 = load %struct.onenand_chip*, %struct.onenand_chip** %9, align 8
  store %struct.onenand_chip* %10, %struct.onenand_chip** %5, align 8
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %12 = call i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ONENAND_DATARAM, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %24 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %22, %16
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i8*, i8** %7, align 8
  ret i8* %45
}

declare dso_local i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
