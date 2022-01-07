; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_sw_entry_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_sw_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym_table = type { i64 }
%struct.nfp_rtsym = type { i32, i32, i32, i32, i64, i32 }
%struct.nfp_rtsym_entry = type { i32, i32, i32, i32, i64, i32, i64, i32, i32 }

@NFP_RTSYM_TARGET_LMEM = common dso_local global i32 0, align 4
@NFP_RTSYM_TARGET_EMU_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_rtsym_table*, i32, %struct.nfp_rtsym*, %struct.nfp_rtsym_entry*)* @nfp_rtsym_sw_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_rtsym_sw_entry_init(%struct.nfp_rtsym_table* %0, i32 %1, %struct.nfp_rtsym* %2, %struct.nfp_rtsym_entry* %3) #0 {
  %5 = alloca %struct.nfp_rtsym_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_rtsym*, align 8
  %8 = alloca %struct.nfp_rtsym_entry*, align 8
  store %struct.nfp_rtsym_table* %0, %struct.nfp_rtsym_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfp_rtsym* %2, %struct.nfp_rtsym** %7, align 8
  store %struct.nfp_rtsym_entry* %3, %struct.nfp_rtsym_entry** %8, align 8
  %9 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %10 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %13 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %18 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = srem i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %16, %23
  %25 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %26 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %28 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 32
  %32 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = or i32 %31, %35
  %37 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %38 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 32
  %44 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %45 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = or i32 %43, %47
  %49 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %52 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %62 [
    i32 128, label %54
    i32 129, label %58
  ]

54:                                               ; preds = %4
  %55 = load i32, i32* @NFP_RTSYM_TARGET_LMEM, align 4
  %56 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %57 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %68

58:                                               ; preds = %4
  %59 = load i32, i32* @NFP_RTSYM_TARGET_EMU_CACHE, align 4
  %60 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %61 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %68

62:                                               ; preds = %4
  %63 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %64 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %67 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %58, %54
  %69 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %70 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 255
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %75 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %78 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nfp_meid(i32 %76, i32 %79)
  %81 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %82 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %98

83:                                               ; preds = %68
  %84 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %85 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 255
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.nfp_rtsym_entry*, %struct.nfp_rtsym_entry** %8, align 8
  %90 = getelementptr inbounds %struct.nfp_rtsym_entry, %struct.nfp_rtsym_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %93 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %97

94:                                               ; preds = %83
  %95 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %7, align 8
  %96 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %95, i32 0, i32 3
  store i32 -1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %88
  br label %98

98:                                               ; preds = %97, %73
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nfp_meid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
