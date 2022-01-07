; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxcnd_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxcnd_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mxc_nand_host = type { i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.mtd_info*)* }

@mxc_nand_read_page = common dso_local global i32 0, align 4
@mxc_nand_read_page_raw = common dso_local global i32 0, align 4
@mxc_nand_read_oob = common dso_local global i32 0, align 4
@mxc_nand_write_page_ecc = common dso_local global i32 0, align 4
@mxc_nand_write_page_raw = common dso_local global i32 0, align 4
@mxc_nand_write_oob = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@bbt_main_descr = common dso_local global i32 0, align 4
@bbt_mirror_descr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @mxcnd_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcnd_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.mxc_nand_host*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.mxc_nand_host* %10, %struct.mxc_nand_host** %5, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %45 [
    i32 129, label %19
    i32 128, label %44
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @mxc_nand_read_page, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 8
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @mxc_nand_read_page_raw, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 7
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @mxc_nand_read_oob, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @mxc_nand_write_page_ecc, align 4
  %33 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @mxc_nand_write_page_raw, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @mxc_nand_write_oob, align 4
  %41 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  br label %48

44:                                               ; preds = %1
  br label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %155

48:                                               ; preds = %44, %19
  %49 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 3
  store i32* @bbt_main_descr, i32** %57, align 8
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 2
  store i32* @bbt_mirror_descr, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %63 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @devm_kfree(%struct.device* %61, i8* %65)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %72 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i64 @devm_kzalloc(%struct.device* %67, i64 %74, i32 %75)
  %77 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %78 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %80 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %60
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %155

86:                                               ; preds = %60
  %87 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %88 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %90, align 8
  %92 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %93 = call i32 %91(%struct.mtd_info* %92)
  %94 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %86
  %100 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %101 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 18, i32* %107, align 4
  br label %118

108:                                              ; preds = %99
  %109 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %110 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 9, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118, %86
  %120 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %121 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @min(i64 %122, i32 218)
  %124 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %125 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %154

131:                                              ; preds = %119
  %132 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %133 = call i64 @is_imx21_nfc(%struct.mxc_nand_host* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %137 = call i64 @is_imx27_nfc(%struct.mxc_nand_host* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135, %131
  %140 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %141 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i32 1, i32* %142, align 4
  br label %153

143:                                              ; preds = %135
  %144 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %145 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 4
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 4, i32 8
  %150 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %143, %139
  br label %154

154:                                              ; preds = %153, %119
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %83, %45
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @devm_kfree(%struct.device*, i8*) #1

declare dso_local i64 @devm_kzalloc(%struct.device*, i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @is_imx21_nfc(%struct.mxc_nand_host*) #1

declare dso_local i64 @is_imx27_nfc(%struct.mxc_nand_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
