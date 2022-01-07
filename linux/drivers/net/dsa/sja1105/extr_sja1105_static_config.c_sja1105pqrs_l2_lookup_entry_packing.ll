; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105pqrs_l2_lookup_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105pqrs_l2_lookup_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_l2_lookup_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sja1105pqrs_l2_lookup_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sja1105_l2_lookup_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sja1105_l2_lookup_entry*
  store %struct.sja1105_l2_lookup_entry* %11, %struct.sja1105_l2_lookup_entry** %8, align 8
  %12 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %13 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %12, i32 0, i32 16
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %19 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %18, i32 0, i32 15
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sja1105_packing(i8* %17, i32* %19, i32 159, i32 159, i64 %20, i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %25 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %24, i32 0, i32 14
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @sja1105_packing(i8* %23, i32* %25, i32 158, i32 147, i64 %26, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %31 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %30, i32 0, i32 13
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sja1105_packing(i8* %29, i32* %31, i32 146, i32 146, i64 %32, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %37 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %36, i32 0, i32 12
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sja1105_packing(i8* %35, i32* %37, i32 145, i32 145, i64 %38, i32 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %43 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %42, i32 0, i32 11
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @sja1105_packing(i8* %41, i32* %43, i32 144, i32 144, i64 %44, i32 %45)
  br label %60

47:                                               ; preds = %3
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %50 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %49, i32 0, i32 10
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sja1105_packing(i8* %48, i32* %50, i32 159, i32 159, i64 %51, i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %56 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %55, i32 0, i32 9
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @sja1105_packing(i8* %54, i32* %56, i32 158, i32 144, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %47, %16
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %63 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %62, i32 0, i32 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sja1105_packing(i8* %61, i32* %63, i32 143, i32 143, i64 %64, i32 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %69 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %68, i32 0, i32 7
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @sja1105_packing(i8* %67, i32* %69, i32 142, i32 131, i64 %70, i32 %71)
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %75 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %74, i32 0, i32 6
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @sja1105_packing(i8* %73, i32* %75, i32 130, i32 83, i64 %76, i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %81 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %80, i32 0, i32 5
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @sja1105_packing(i8* %79, i32* %81, i32 82, i32 82, i64 %82, i32 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %87 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %86, i32 0, i32 4
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @sja1105_packing(i8* %85, i32* %87, i32 81, i32 70, i64 %88, i32 %89)
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %93 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %92, i32 0, i32 3
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @sja1105_packing(i8* %91, i32* %93, i32 69, i32 22, i64 %94, i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %99 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %98, i32 0, i32 2
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @sja1105_packing(i8* %97, i32* %99, i32 21, i32 17, i64 %100, i32 %101)
  %103 = load i8*, i8** %4, align 8
  %104 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %105 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %104, i32 0, i32 1
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @sja1105_packing(i8* %103, i32* %105, i32 16, i32 16, i64 %106, i32 %107)
  %109 = load i8*, i8** %4, align 8
  %110 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %111 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %110, i32 0, i32 0
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @sja1105_packing(i8* %109, i32* %111, i32 15, i32 6, i64 %112, i32 %113)
  %115 = load i64, i64* %7, align 8
  ret i64 %115
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
