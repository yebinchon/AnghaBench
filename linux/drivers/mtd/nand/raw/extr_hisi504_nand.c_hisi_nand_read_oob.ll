; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nand_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nand_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.hinfc_host = type { i32 }

@HINFC504_INTS_UE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @hisi_nand_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nand_read_oob(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.hinfc_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %6, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.hinfc_host* %11, %struct.hinfc_host** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nand_read_oob_op(%struct.nand_chip* %12, i32 %13, i32 0, i32 %16, i32 %19)
  %21 = load %struct.hinfc_host*, %struct.hinfc_host** %7, align 8
  %22 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HINFC504_INTS_UE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.hinfc_host*, %struct.hinfc_host** %7, align 8
  %29 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @EBADMSG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.hinfc_host*, %struct.hinfc_host** %7, align 8
  %34 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_oob_op(%struct.nand_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
