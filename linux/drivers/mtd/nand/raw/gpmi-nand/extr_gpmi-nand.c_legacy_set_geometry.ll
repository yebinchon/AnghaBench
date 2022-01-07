; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_legacy_set_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_legacy_set_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, %struct.TYPE_2__*, i32, i32, %struct.bch_geometry }
%struct.TYPE_2__ = type { i32 }
%struct.bch_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32, i32 }

@.str = private unnamed_addr constant [117 x i8] c"ecc strength: %d cannot be supported by the controller (%d)\0Atry to use minimum ecc strength that NAND chip required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @legacy_set_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_set_geometry(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.bch_geometry*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %9 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %10 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %9, i32 0, i32 4
  store %struct.bch_geometry* %10, %struct.bch_geometry** %4, align 8
  %11 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %12 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %11, i32 0, i32 3
  %13 = call %struct.mtd_info* @nand_to_mtd(i32* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %5, align 8
  %14 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %15 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %14, i32 0, i32 0
  store i32 10, i32* %15, align 4
  %16 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %17 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %16, i32 0, i32 1
  store i32 13, i32* %17, align 4
  %18 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %19 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %18, i32 0, i32 2
  store i32 512, i32* %19, align 4
  br label %20

20:                                               ; preds = %28, %1
  %21 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %22 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %30 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  %33 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %34 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %33, i32 0, i32 1
  store i32 14, i32* %34, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %40 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  %43 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %44 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %46 = call i32 @get_ecc_strength(%struct.gpmi_nand_data* %45)
  %47 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %48 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %50 = call i32 @gpmi_check_ecc(%struct.gpmi_nand_data* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %35
  %53 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %54 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %57 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %60 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %147

67:                                               ; preds = %35
  %68 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %72 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %76 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %79 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %83 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sdiv i32 %85, 8
  %87 = add nsw i32 %74, %86
  %88 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %89 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %94 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %96 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ALIGN(i32 %97, i32 4)
  store i32 %98, i32* %6, align 4
  %99 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %100 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ALIGN(i32 %101, i32 4)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %103, %104
  %106 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %107 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %110 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %112 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %147

116:                                              ; preds = %67
  %117 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %118 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 8
  %121 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %122 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %125 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %129 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = mul nsw i32 %127, %131
  %133 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %134 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 8
  %137 = add nsw i32 %132, %136
  %138 = sub nsw i32 %120, %137
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = udiv i32 %139, 8
  %141 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %142 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %141, i32 0, i32 9
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = urem i32 %143, 8
  %145 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %146 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %145, i32 0, i32 10
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %116, %115, %52
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @get_ecc_strength(%struct.gpmi_nand_data*) #1

declare dso_local i32 @gpmi_check_ecc(%struct.gpmi_nand_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
