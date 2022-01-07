; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_mac_config_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_mac_config_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_mac_config_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @sja1105et_mac_config_entry_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sja1105et_mac_config_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1105_mac_config_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sja1105_mac_config_entry*
  store %struct.sja1105_mac_config_entry* %13, %struct.sja1105_mac_config_entry** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr i8, i8* %14, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %21 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %20, i32 0, i32 12
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @sja1105_packing(i32* %19, i32* %21, i32 30, i32 29, i32 %22, i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %27 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %26, i32 0, i32 11
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sja1105_packing(i32* %25, i32* %27, i32 23, i32 23, i32 %28, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %33 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %32, i32 0, i32 10
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sja1105_packing(i32* %31, i32* %33, i32 22, i32 22, i32 %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %39 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %38, i32 0, i32 9
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sja1105_packing(i32* %37, i32* %39, i32 21, i32 21, i32 %40, i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %45 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %44, i32 0, i32 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sja1105_packing(i32* %43, i32* %45, i32 20, i32 20, i32 %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %51 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %50, i32 0, i32 7
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sja1105_packing(i32* %49, i32* %51, i32 19, i32 19, i32 %52, i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %57 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %56, i32 0, i32 6
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @sja1105_packing(i32* %55, i32* %57, i32 18, i32 18, i32 %58, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %63 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %62, i32 0, i32 5
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sja1105_packing(i32* %61, i32* %63, i32 17, i32 17, i32 %64, i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %69 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %68, i32 0, i32 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @sja1105_packing(i32* %67, i32* %69, i32 16, i32 16, i32 %70, i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %75 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %74, i32 0, i32 3
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @sja1105_packing(i32* %73, i32* %75, i32 14, i32 12, i32 %76, i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %81 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %80, i32 0, i32 2
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @sja1105_packing(i32* %79, i32* %81, i32 11, i32 0, i32 %82, i32 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %87 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @sja1105_packing(i32* %85, i32* %87, i32 31, i32 16, i32 %88, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %93 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @sja1105_packing(i32* %91, i32* %93, i32 15, i32 0, i32 %94, i32 %95)
  ret i64 0
}

declare dso_local i32 @sja1105_packing(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
