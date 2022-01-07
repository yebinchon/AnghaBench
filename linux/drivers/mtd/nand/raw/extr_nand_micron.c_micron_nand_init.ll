; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mtd_info = type { i32, i64 }
%struct.micron_nand = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.micron_nand* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAND_BBM_FIRSTPAGE = common dso_local global i32 0, align 4
@NAND_BBM_SECONDPAGE = common dso_local global i32 0, align 4
@MICRON_ON_DIE_MANDATORY = common dso_local global i32 0, align 4
@NAND_ECC_ON_DIE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"On-die ECC forcefully enabled, not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MICRON_ON_DIE_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"On-die ECC selected but not supported\0A\00", align 1
@micron_nand_on_die_4_ooblayout_ops = common dso_local global i32 0, align 4
@micron_nand_on_die_8_ooblayout_ops = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i32 0, align 4
@micron_nand_read_page_on_die_ecc = common dso_local global i32 0, align 4
@micron_nand_write_page_on_die_ecc = common dso_local global i32 0, align 4
@nand_read_page_raw_notsupp = common dso_local global i32 0, align 4
@nand_write_page_raw_notsupp = common dso_local global i32 0, align 4
@nand_read_page_raw = common dso_local global i32 0, align 4
@nand_write_page_raw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @micron_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micron_nand_init(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.micron_nand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.micron_nand* @kzalloc(i32 16, i32 %10)
  store %struct.micron_nand* %11, %struct.micron_nand** %5, align 8
  %12 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %13 = icmp ne %struct.micron_nand* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %190

17:                                               ; preds = %1
  %18 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %19 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %20 = call i32 @nand_set_manufacturer_data(%struct.nand_chip* %18, %struct.micron_nand* %19)
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = call i32 @micron_nand_onfi_init(%struct.nand_chip* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %181

26:                                               ; preds = %17
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2048
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @NAND_BBM_FIRSTPAGE, align 4
  %33 = load i32, i32* @NAND_BBM_SECONDPAGE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = call i32 @micron_supports_on_die_ecc(%struct.nand_chip* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MICRON_ON_DIE_MANDATORY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NAND_ECC_ON_DIE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %181

56:                                               ; preds = %45, %39
  %57 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NAND_ECC_ON_DIE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %180

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MICRON_ON_DIE_UNSUPPORTED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %181

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MICRON_ON_DIE_MANDATORY, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %77 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %80 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %71
  %83 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %112

89:                                               ; preds = %82
  %90 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %95 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.micron_nand* @kmalloc(i64 %97, i32 %98)
  %100 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %101 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store %struct.micron_nand* %99, %struct.micron_nand** %102, align 8
  %103 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %104 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load %struct.micron_nand*, %struct.micron_nand** %105, align 8
  %107 = icmp ne %struct.micron_nand* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %89
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %181

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111, %82
  %113 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %121 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %120, i32* @micron_nand_on_die_4_ooblayout_ops)
  br label %125

122:                                              ; preds = %112
  %123 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %124 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %123, i32* @micron_nand_on_die_8_ooblayout_ops)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %130, 2
  %132 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %133 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 8
  %135 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %136 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i32 512, i32* %137, align 4
  %138 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @NAND_ECC_BCH, align 4
  %147 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 8
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* @micron_nand_read_page_on_die_ecc, align 4
  %151 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %152 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 7
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* @micron_nand_write_page_on_die_ecc, align 4
  %155 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %156 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @MICRON_ON_DIE_MANDATORY, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %125
  %162 = load i32, i32* @nand_read_page_raw_notsupp, align 4
  %163 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 5
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @nand_write_page_raw_notsupp, align 4
  %167 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %168 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  store i32 %166, i32* %169, align 4
  br label %179

170:                                              ; preds = %125
  %171 = load i32, i32* @nand_read_page_raw, align 4
  %172 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %173 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* @nand_write_page_raw, align 4
  %176 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %177 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  store i32 %175, i32* %178, align 4
  br label %179

179:                                              ; preds = %170, %161
  br label %180

180:                                              ; preds = %179, %56
  store i32 0, i32* %2, align 4
  br label %190

181:                                              ; preds = %108, %67, %52, %25
  %182 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %183 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load %struct.micron_nand*, %struct.micron_nand** %184, align 8
  %186 = call i32 @kfree(%struct.micron_nand* %185)
  %187 = load %struct.micron_nand*, %struct.micron_nand** %5, align 8
  %188 = call i32 @kfree(%struct.micron_nand* %187)
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %181, %180, %14
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.micron_nand* @kzalloc(i32, i32) #1

declare dso_local i32 @nand_set_manufacturer_data(%struct.nand_chip*, %struct.micron_nand*) #1

declare dso_local i32 @micron_nand_onfi_init(%struct.nand_chip*) #1

declare dso_local i32 @micron_supports_on_die_ecc(%struct.nand_chip*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.micron_nand* @kmalloc(i64, i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @kfree(%struct.micron_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
