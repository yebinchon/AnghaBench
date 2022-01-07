; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2440_nand_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2440_nand_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.s3c2410_nand_info = type { i64 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@S3C2440_NFCMD = common dso_local global i64 0, align 8
@S3C2440_NFADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @s3c2440_nand_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2440_nand_hwcontrol(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.s3c2410_nand_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %7, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %12 = call %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %11)
  store %struct.s3c2410_nand_info* %12, %struct.s3c2410_nand_info** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NAND_CMD_NONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NAND_CLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %8, align 8
  %25 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @S3C2440_NFCMD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writeb(i32 %23, i64 %28)
  br label %38

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %8, align 8
  %33 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S3C2440_NFADDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %16, %30, %22
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
