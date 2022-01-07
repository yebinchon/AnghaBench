; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_ecc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_ecc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinfc_host = type { %struct.nand_chip, %struct.device* }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"error ecc size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ecc size and strength do not match\0A\00", align 1
@hisi_nand_read_page_hwecc = common dso_local global i32 0, align 4
@hisi_nand_read_oob = common dso_local global i32 0, align 4
@hisi_nand_write_page_hwecc = common dso_local global i32 0, align 4
@hisi_ooblayout_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"not support strength: %d\0A\00", align 1
@HINFC504_CON = common dso_local global i32 0, align 4
@HINFC504_CON_ECCTYPE_MASK = common dso_local global i32 0, align 4
@HINFC504_CON_ECCTYPE_SHIFT = common dso_local global i32 0, align 4
@HINFC504_INTEN = common dso_local global i32 0, align 4
@HINFC504_INTEN_UE = common dso_local global i32 0, align 4
@HINFC504_INTEN_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinfc_host*)* @hisi_nfc_ecc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nfc_ecc_probe(%struct.hinfc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinfc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  store %struct.hinfc_host* %0, %struct.hinfc_host** %3, align 8
  %11 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %12 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %15 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %14, i32 0, i32 0
  store %struct.nand_chip* %15, %struct.nand_chip** %9, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %10, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %124

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 16
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 24
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 40
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %124

54:                                               ; preds = %46, %43, %40, %37, %34
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @hisi_nand_read_page_hwecc, align 4
  %64 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @hisi_nand_read_oob, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @hisi_nand_write_page_hwecc, align 4
  %72 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %88 [
    i32 16, label %79
  ]

79:                                               ; preds = %54
  store i32 6, i32* %7, align 4
  %80 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2048
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %86 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %85, i32* @hisi_ooblayout_ops)
  br label %87

87:                                               ; preds = %84, %79
  br label %97

88:                                               ; preds = %54
  %89 = load %struct.device*, %struct.device** %8, align 8
  %90 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %124

97:                                               ; preds = %87
  %98 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %99 = load i32, i32* @HINFC504_CON, align 4
  %100 = call i32 @hinfc_read(%struct.hinfc_host* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @HINFC504_CON_ECCTYPE_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @HINFC504_CON_ECCTYPE_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @HINFC504_CON, align 4
  %111 = call i32 @hinfc_write(%struct.hinfc_host* %108, i32 %109, i32 %110)
  %112 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %113 = load i32, i32* @HINFC504_INTEN, align 4
  %114 = call i32 @hinfc_read(%struct.hinfc_host* %112, i32 %113)
  %115 = and i32 %114, 4095
  store i32 %115, i32* %4, align 4
  %116 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @HINFC504_INTEN_UE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @HINFC504_INTEN_CE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @HINFC504_INTEN, align 4
  %123 = call i32 @hinfc_write(%struct.hinfc_host* %116, i32 %121, i32 %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %97, %88, %49, %28
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @hinfc_read(%struct.hinfc_host*, i32) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
