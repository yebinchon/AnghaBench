; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105pqrs_l2_lookup_params_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105pqrs_l2_lookup_params_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_l2_lookup_params_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@SJA1105PQRS_SIZE_L2_LOOKUP_PARAMS_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @sja1105pqrs_l2_lookup_params_entry_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sja1105pqrs_l2_lookup_params_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sja1105_l2_lookup_params_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @SJA1105PQRS_SIZE_L2_LOOKUP_PARAMS_ENTRY, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sja1105_l2_lookup_params_entry*
  store %struct.sja1105_l2_lookup_params_entry* %13, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 58, i32* %9, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %20 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 10
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 0
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sja1105_packing(i8* %18, i32* %24, i32 %26, i32 %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 11
  store i32 %36, i32* %9, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %40 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %39, i32 0, i32 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sja1105_packing(i8* %38, i32* %40, i32 57, i32 43, i64 %41, i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %46 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %45, i32 0, i32 7
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @sja1105_packing(i8* %44, i32* %46, i32 42, i32 33, i64 %47, i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %52 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %51, i32 0, i32 6
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sja1105_packing(i8* %50, i32* %52, i32 32, i32 28, i64 %53, i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %58 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %57, i32 0, i32 5
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @sja1105_packing(i8* %56, i32* %58, i32 27, i32 27, i64 %59, i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %64 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %63, i32 0, i32 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @sja1105_packing(i8* %62, i32* %64, i32 26, i32 26, i64 %65, i32 %66)
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %70 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %69, i32 0, i32 3
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @sja1105_packing(i8* %68, i32* %70, i32 25, i32 25, i64 %71, i32 %72)
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %76 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %75, i32 0, i32 2
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @sja1105_packing(i8* %74, i32* %76, i32 24, i32 24, i64 %77, i32 %78)
  %80 = load i8*, i8** %4, align 8
  %81 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %82 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @sja1105_packing(i8* %80, i32* %82, i32 23, i32 23, i64 %83, i32 %84)
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %8, align 8
  %88 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %87, i32 0, i32 0
  %89 = load i64, i64* %7, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @sja1105_packing(i8* %86, i32* %88, i32 22, i32 22, i64 %89, i32 %90)
  %92 = load i64, i64* %7, align 8
  ret i64 %92
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
