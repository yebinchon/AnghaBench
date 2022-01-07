; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105et_general_params_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105et_general_params_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_general_params_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SJA1105ET_SIZE_GENERAL_PARAMS_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @sja1105et_general_params_entry_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sja1105et_general_params_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sja1105_general_params_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @SJA1105ET_SIZE_GENERAL_PARAMS_ENTRY, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sja1105_general_params_entry*
  store %struct.sja1105_general_params_entry* %11, %struct.sja1105_general_params_entry** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %14 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %13, i32 0, i32 19
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sja1105_packing(i8* %12, i32* %14, i32 319, i32 319, i64 %15, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %20 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %19, i32 0, i32 18
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sja1105_packing(i8* %18, i32* %20, i32 318, i32 318, i64 %21, i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %26 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %25, i32 0, i32 17
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sja1105_packing(i8* %24, i32* %26, i32 317, i32 315, i64 %27, i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %32 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %31, i32 0, i32 16
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @sja1105_packing(i8* %30, i32* %32, i32 314, i32 312, i64 %33, i32 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %38 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %37, i32 0, i32 15
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @sja1105_packing(i8* %36, i32* %38, i32 311, i32 264, i64 %39, i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %44 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %43, i32 0, i32 14
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sja1105_packing(i8* %42, i32* %44, i32 263, i32 216, i64 %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %50 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %49, i32 0, i32 13
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sja1105_packing(i8* %48, i32* %50, i32 215, i32 168, i64 %51, i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %56 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %55, i32 0, i32 12
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @sja1105_packing(i8* %54, i32* %56, i32 167, i32 120, i64 %57, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %62 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %61, i32 0, i32 11
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @sja1105_packing(i8* %60, i32* %62, i32 119, i32 119, i64 %63, i32 %64)
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %68 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %67, i32 0, i32 10
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @sja1105_packing(i8* %66, i32* %68, i32 118, i32 118, i64 %69, i32 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %74 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %73, i32 0, i32 9
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @sja1105_packing(i8* %72, i32* %74, i32 117, i32 117, i64 %75, i32 %76)
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %80 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %79, i32 0, i32 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @sja1105_packing(i8* %78, i32* %80, i32 116, i32 116, i64 %81, i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %86 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %85, i32 0, i32 7
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @sja1105_packing(i8* %84, i32* %86, i32 115, i32 113, i64 %87, i32 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %92 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %91, i32 0, i32 6
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @sja1105_packing(i8* %90, i32* %92, i32 112, i32 110, i64 %93, i32 %94)
  %96 = load i8*, i8** %4, align 8
  %97 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %98 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %97, i32 0, i32 5
  %99 = load i64, i64* %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @sja1105_packing(i8* %96, i32* %98, i32 109, i32 107, i64 %99, i32 %100)
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %104 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %103, i32 0, i32 4
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @sja1105_packing(i8* %102, i32* %104, i32 106, i32 75, i64 %105, i32 %106)
  %108 = load i8*, i8** %4, align 8
  %109 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %110 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %109, i32 0, i32 3
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @sja1105_packing(i8* %108, i32* %110, i32 74, i32 43, i64 %111, i32 %112)
  %114 = load i8*, i8** %4, align 8
  %115 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %116 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %115, i32 0, i32 2
  %117 = load i64, i64* %7, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @sja1105_packing(i8* %114, i32* %116, i32 42, i32 27, i64 %117, i32 %118)
  %120 = load i8*, i8** %4, align 8
  %121 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %122 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %121, i32 0, i32 1
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @sja1105_packing(i8* %120, i32* %122, i32 26, i32 26, i64 %123, i32 %124)
  %126 = load i8*, i8** %4, align 8
  %127 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %128 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %127, i32 0, i32 0
  %129 = load i64, i64* %7, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @sja1105_packing(i8* %126, i32* %128, i32 25, i32 10, i64 %129, i32 %130)
  %132 = load i64, i64* %7, align 8
  ret i64 %132
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
