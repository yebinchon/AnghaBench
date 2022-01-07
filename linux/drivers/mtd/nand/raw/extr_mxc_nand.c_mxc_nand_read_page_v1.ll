; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_read_page_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_read_page_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mxc_nand_host = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.nand_chip*, i32)* }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NFC_V1_V2_BUF_ADDR = common dso_local global i32 0, align 4
@NFC_OUTPUT = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i8*, i8*, i32, i32)* @mxc_nand_read_page_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_read_page_v1(%struct.nand_chip* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca %struct.mxc_nand_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %11, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %19)
  store %struct.mxc_nand_host* %20, %struct.mxc_nand_host** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %22 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)** %24, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 %25(%struct.nand_chip* %26, i32 %27)
  %29 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %30 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %32, align 8
  %34 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %35 = load i32, i32* @NAND_CMD_READ0, align 4
  %36 = call i32 %33(%struct.mxc_nand_host* %34, i32 %35, i32 0)
  %37 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %37, i32 0, i32 %38)
  %40 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 512
  br i1 %43, label %44, label %53

44:                                               ; preds = %5
  %45 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %46 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %48, align 8
  %50 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %51 = load i32, i32* @NAND_CMD_READSTART, align 4
  %52 = call i32 %49(%struct.mxc_nand_host* %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %44, %5
  %54 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 9
  store i32 %57, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %104, %53
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %64 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NFC_V1_V2_BUF_ADDR, align 4
  %70 = call i32 @writew(i32 %68, i32 %69)
  %71 = load i32, i32* @NFC_OUTPUT, align 4
  %72 = load i32, i32* @NFC_V1_V2_CONFIG2, align 4
  %73 = call i32 @writew(i32 %71, i32 %72)
  %74 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %75 = call i32 @wait_op_done(%struct.mxc_nand_host* %74, i32 1)
  %76 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %77 = call i32 @get_ecc_status_v1(%struct.mxc_nand_host* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = ashr i32 %78, 2
  store i32 %79, i32* %16, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %62
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32, i32* %16, align 4
  %87 = and i32 %86, 3
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %90
    i32 2, label %96
  ]

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %85, %88
  br label %102

90:                                               ; preds = %85
  %91 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %92 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  store i32 1, i32* %13, align 4
  br label %102

96:                                               ; preds = %85
  %97 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %90, %89
  br label %103

103:                                              ; preds = %102, %82, %62
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %58

107:                                              ; preds = %58
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %12, align 8
  %113 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %116 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memcpy32_fromio(i8* %111, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i8*, i8** %8, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @copy_spare(%struct.mtd_info* %123, i32 1, i8* %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mxc_do_addr_cycle(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @wait_op_done(%struct.mxc_nand_host*, i32) #1

declare dso_local i32 @get_ecc_status_v1(%struct.mxc_nand_host*) #1

declare dso_local i32 @memcpy32_fromio(i8*, i32, i32) #1

declare dso_local i32 @copy_spare(%struct.mtd_info*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
