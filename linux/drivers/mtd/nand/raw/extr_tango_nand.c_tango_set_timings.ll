; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.nand_sdr_timings = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tango_nfc = type { i32 }
%struct.tango_chip = type { i8*, i8* }

@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @tango_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_set_timings(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.nand_sdr_timings*, align 8
  %9 = alloca %struct.tango_nfc*, align 8
  %10 = alloca %struct.tango_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %20 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %21 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %20)
  store %struct.nand_sdr_timings* %21, %struct.nand_sdr_timings** %8, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tango_nfc* @to_tango_nfc(i32 %24)
  store %struct.tango_nfc* %25, %struct.tango_nfc** %9, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = call %struct.tango_chip* @to_tango_chip(%struct.nand_chip* %26)
  store %struct.tango_chip* %27, %struct.tango_chip** %10, align 8
  %28 = load %struct.tango_nfc*, %struct.tango_nfc** %9, align 8
  %29 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %19, align 4
  %31 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %32 = call i64 @IS_ERR(%struct.nand_sdr_timings* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.nand_sdr_timings* %35)
  store i32 %36, i32* %4, align 4
  br label %109

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %109

42:                                               ; preds = %37
  %43 = load i32, i32* %19, align 4
  %44 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %45 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %48 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = call i32 @to_ticks(i32 %43, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %54 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @to_ticks(i32 %52, i64 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %59 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @to_ticks(i32 %57, i64 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %19, align 4
  %63 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %64 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %67 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @to_ticks(i32 %62, i64 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %73 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @to_ticks(i32 %71, i64 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %78 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @to_ticks(i32 %76, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %83 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %86 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = call i32 @to_ticks(i32 %81, i64 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %8, align 8
  %92 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @to_ticks(i32 %90, i64 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i8* @TIMING(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.tango_chip*, %struct.tango_chip** %10, align 8
  %101 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i8* @TIMING(i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.tango_chip*, %struct.tango_chip** %10, align 8
  %108 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %42, %41, %34
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local %struct.tango_nfc* @to_tango_nfc(i32) #1

declare dso_local %struct.tango_chip* @to_tango_chip(%struct.nand_chip*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @PTR_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @to_ticks(i32, i64) #1

declare dso_local i8* @TIMING(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
