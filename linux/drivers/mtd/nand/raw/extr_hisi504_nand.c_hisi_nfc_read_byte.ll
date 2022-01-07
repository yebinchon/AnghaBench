; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.hinfc_host = type { i64, i32, i32, i32 }

@NAND_CMD_STATUS = common dso_local global i64 0, align 8
@NAND_CMD_READID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @hisi_nfc_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nfc_read_byte(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.hinfc_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = call %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip* %5)
  store %struct.hinfc_host* %6, %struct.hinfc_host** %4, align 8
  %7 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %8 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NAND_CMD_STATUS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %14 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %1
  %20 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %21 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %25 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NAND_CMD_READID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %31 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %34 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %19
  %42 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %43 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hinfc_host*, %struct.hinfc_host** %4, align 8
  %46 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %29, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
