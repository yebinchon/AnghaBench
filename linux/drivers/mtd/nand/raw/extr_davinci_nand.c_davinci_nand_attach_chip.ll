; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_davinci_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_davinci_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, i32 }
%struct.davinci_nand_info = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.davinci_nand_pdata = type { i32 }

@NAND_ECC_HAMMING = common dso_local global i8* null, align 8
@davinci_nand_lock = common dso_local global i32 0, align 4
@ecc4_busy = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nand_davinci_calculate_4bit = common dso_local global i32 0, align 4
@nand_davinci_correct_4bit = common dso_local global i32 0, align 4
@nand_davinci_hwctl_4bit = common dso_local global i32 0, align 4
@NAND_ECC_GENERIC_ERASED_CHECK = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i8* null, align 8
@nand_davinci_calculate_1bit = common dso_local global i32 0, align 4
@nand_davinci_correct_1bit = common dso_local global i32 0, align 4
@nand_davinci_hwctl_1bit = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"too small\0A\00", align 1
@hwecc4_small_ooblayout_ops = common dso_local global i32 0, align 4
@nand_ooblayout_lp_ops = common dso_local global i32 0, align 4
@NAND_ECC_HW_OOB_FIRST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @davinci_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.davinci_nand_info*, align 8
  %6 = alloca %struct.davinci_nand_pdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %4, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = call %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info* %11)
  store %struct.davinci_nand_info* %12, %struct.davinci_nand_info** %5, align 8
  %13 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %14 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call %struct.davinci_nand_pdata* @nand_davinci_get_pdata(%struct.TYPE_6__* %15)
  store %struct.davinci_nand_pdata* %16, %struct.davinci_nand_pdata** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %18 = call i64 @IS_ERR(%struct.davinci_nand_pdata* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.davinci_nand_pdata* %21)
  store i32 %22, i32* %2, align 4
  br label %183

23:                                               ; preds = %1
  %24 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %25 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %128 [
    i32 129, label %29
    i32 128, label %32
    i32 130, label %40
  ]

29:                                               ; preds = %23
  %30 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %31 = getelementptr inbounds %struct.davinci_nand_pdata, %struct.davinci_nand_pdata* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %131

32:                                               ; preds = %23
  %33 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %34 = getelementptr inbounds %struct.davinci_nand_pdata, %struct.davinci_nand_pdata* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i8*, i8** @NAND_ECC_HAMMING, align 8
  %36 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %37 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i8* %35, i8** %39, align 8
  br label %131

40:                                               ; preds = %23
  %41 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %42 = getelementptr inbounds %struct.davinci_nand_pdata, %struct.davinci_nand_pdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %91

45:                                               ; preds = %40
  %46 = call i32 @spin_lock_irq(i32* @davinci_nand_lock)
  %47 = load i32, i32* @ecc4_busy, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %45
  store i32 1, i32* @ecc4_busy, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = call i32 @spin_unlock_irq(i32* @davinci_nand_lock)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %183

61:                                               ; preds = %53
  %62 = load i32, i32* @nand_davinci_calculate_4bit, align 4
  %63 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %64 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  store i32 %62, i32* %66, align 8
  %67 = load i32, i32* @nand_davinci_correct_4bit, align 4
  %68 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %69 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 6
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @nand_davinci_hwctl_4bit, align 4
  %73 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %74 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  store i32 %72, i32* %76, align 8
  %77 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %78 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 10, i32* %80, align 4
  %81 = load i32, i32* @NAND_ECC_GENERIC_ERASED_CHECK, align 4
  %82 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %83 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 8
  store i32 %81, i32* %85, align 4
  %86 = load i8*, i8** @NAND_ECC_BCH, align 8
  %87 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %88 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i8* %86, i8** %90, align 8
  br label %116

91:                                               ; preds = %40
  %92 = load i32, i32* @nand_davinci_calculate_1bit, align 4
  %93 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %94 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 7
  store i32 %92, i32* %96, align 8
  %97 = load i32, i32* @nand_davinci_correct_1bit, align 4
  %98 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %99 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @nand_davinci_hwctl_1bit, align 4
  %103 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %104 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  store i32 %102, i32* %106, align 8
  %107 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %108 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 3, i32* %110, align 4
  %111 = load i8*, i8** @NAND_ECC_HAMMING, align 8
  %112 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %113 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store i8* %111, i8** %115, align 8
  br label %116

116:                                              ; preds = %91, %61
  %117 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %118 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32 512, i32* %120, align 8
  %121 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %122 = getelementptr inbounds %struct.davinci_nand_pdata, %struct.davinci_nand_pdata* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %125 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  store i32 %123, i32* %127, align 4
  br label %131

128:                                              ; preds = %23
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %183

131:                                              ; preds = %116, %32, %29
  %132 = load %struct.davinci_nand_pdata*, %struct.davinci_nand_pdata** %6, align 8
  %133 = getelementptr inbounds %struct.davinci_nand_pdata, %struct.davinci_nand_pdata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %181

136:                                              ; preds = %131
  %137 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %138 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 512
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %145 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 16
  br i1 %147, label %148, label %156

148:                                              ; preds = %143, %136
  %149 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %150 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = call i32 @dev_dbg(i32* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %183

156:                                              ; preds = %143
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %161 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %160, i32* @hwecc4_small_ooblayout_ops)
  br label %180

162:                                              ; preds = %156
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %8, align 4
  %167 = icmp eq i32 %166, 8
  br i1 %167, label %168, label %176

168:                                              ; preds = %165, %162
  %169 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %170 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %169, i32* @nand_ooblayout_lp_ops)
  %171 = load i32, i32* @NAND_ECC_HW_OOB_FIRST, align 4
  %172 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %173 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  br label %179

176:                                              ; preds = %165
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %183

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179, %159
  br label %181

181:                                              ; preds = %180, %131
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %181, %176, %148, %128, %59, %20
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info*) #1

declare dso_local %struct.davinci_nand_pdata* @nand_davinci_get_pdata(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.davinci_nand_pdata*) #1

declare dso_local i32 @PTR_ERR(%struct.davinci_nand_pdata*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
