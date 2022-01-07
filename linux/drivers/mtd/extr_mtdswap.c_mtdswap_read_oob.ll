; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, i32 }
%struct.mtd_oob_ops = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Read OOB failed %d for block at %08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Read OOB return short read (%zd bytes not %zd) for block at %08llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, i32, %struct.mtd_oob_ops*)* @mtdswap_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_read_oob(%struct.mtdswap_dev* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtdswap_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %9 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %14 = call i32 @mtd_read_oob(i32 %11, i32 %12, %struct.mtd_oob_ops* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @mtd_is_bitflip(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, i32, i32, ...) @dev_warn(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %54

31:                                               ; preds = %20
  %32 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %36 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @dev_warn(i32 %42, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %39, %23, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mtd_read_oob(i32, i32, %struct.mtd_oob_ops*) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
